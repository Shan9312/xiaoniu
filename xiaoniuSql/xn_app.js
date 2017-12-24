// const http = require("http");
const express = require("express");
const mysql = require("mysql");
const bodyParser = require("body-parser");
var app=express();
app.use(bodyParser.urlencoded({extended:false}));
var pool=mysql.createPool({
  host:"127.0.0.1",
  user:"root",
  password:"",
  database:"xiaoniu",
  port:3306,
  connectionLimit:50
})
app.all('*', function (req, res, next) {
  if (req.path !== '/' && !req.path.includes('.')) {
  res.header('Access-Control-Allow-Credentials', true)
  // 这里获取 origin 请求头 而不是用 * 
  res.header('Access-Control-Allow-Origin', req.headers['origin'] || '*')
  res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept')
  res.header('Access-Control-Allow-Methods', 'PUT,POST,GET,DELETE,OPTIONS')
  res.header('Content-Type', 'application/json;charset=utf-8')
  }
  next()
  })
// var server = http.createServer(app);
app.listen(3000);


app.get("/product",(req,res)=>{
   pool.getConnection((err,conn)=>{
     if(err) throw err;
     var sql="select * from xn_products"
     conn.query(sql,(err,result)=>{
      if(err) throw err;
      if(result.length>0){
        console.log(result);
        res.json(result);
        res.end();
      }else{
        res.json({code:-1,msg:"你的数据不存在"})
      }
      conn.release();
     })
   })
})
