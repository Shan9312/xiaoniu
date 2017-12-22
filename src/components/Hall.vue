<template>
<div>
 <my-header></my-header>
 <div class="container server-header">
   <div>
     <div>
         <img src="../assets/img/tittle-1.png" alt="">
         <img src="../assets/img/tittle-2.png" alt="">
      </div>
      <h2></h2>
     <p></p>
   </div>
 </div>
 <div class="server-title">
   <h1>了解我们的服务</h1>
 </div>
 <my-footer></my-footer>
</div>
</template>
<script>
import myHeader from "./common/Header";
import myFooter from "./common/Footer";
export default{
  data:function(){},
  components:{
    myHeader, myFooter
  }
}
</script>
<style scoped lang="less">
.server-header{
  height:900px;
  background: url("../assets/img/order1.jpg") no-repeat center;
  background-size: cover;
  margin-bottom:50px;
   div{
    color: #e0e0e0;
    position: absolute;
    height: 100%;
    width: 500px;
    text-align: center;
    padding-top:100px;
    right:15%;
     div{
       margin: 20px;
       img{
         width:100%;
         margin:30px;
       }
     }
    h1{
     
    p{
      font-size: 18px;
    }
   }
 }
}
.server-title{
  text-align: center;
  margin-bottom: 50px;
  h1{
    height: 48px;
    font-size: 36px;
   }
  }
</style>
