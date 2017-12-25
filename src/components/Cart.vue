<template>
  <div class="container">
   <div class="content cart">
     <div class="cart_title">
       <a href="">1.我的购物车</a>
       <a href="">2.填写订单信息</a>
       <a href="">3.完成支付</a>
     </div>
     <div class="cart-header cart-list">
       <ul>
         <li>商品信息</li>
         <li>单价</li>
         <li>数量</li>
         <li>小计</li>
         <li>操作</li>
       </ul>
     </div>
     <div class="cart-main cart-list">
       <ul class="clear">
         <li>
           <div class="detail">
             <input type="checkbox">
             <img src="../assets/imgs/68.jpg" alt="">
             <span class="title_p">NUI小牛安全冒</span>
           </div>
          </li>
         <li>
           <div>
             <span>394</span>￥
           </div>
         </li>
         <li>
           <div class="selectOption">
             <span class="spans" @click="redCount" :class="{disspan:isShow}">-</span>
             <input v-model="count" type="text"  class="inputs" style="width:20px;padding:3px;text-align: center;">
             <span class="spans" @click="addCount" >+</span>
           </div>
         </li>
         <li>
           <div>
             <span>394</span>￥
           </div>
         </li>
         <li>
           X
         </li>
       </ul>
     </div>
     <div class="cart-main cart-list">
       <ul class="clear">
         <li>
           <div class="detail">
             <input type="checkbox">
             <img src="../assets/imgs/148.jpg" alt="">
             <span class="title_p">NUI小牛安全冒</span>
           </div>
          </li>
         <li>
           <div>
             <span>280</span>￥
           </div>
         </li>
         <li>
           <div class="selectOption">
             <span class="spans" @click="redCount" :class="{disspan:isShow}">-</span>
             <input v-model="count" type="text"  class="inputs" style="width:20px;padding:3px;text-align: center;">
             <span class="spans" @click="addCount" >+</span>
           </div>
         </li>
         <li>
           <div>
             <span>280</span>￥
           </div>
         </li>
         <li>
           X
         </li>
       </ul>
     </div>
     <div class="cart-main cart-list">
       <ul class="clear">
         <li>
           <div class="detail">
             <input type="checkbox">
             <img src="../assets/imgs/18.jpg" alt="">
             <span class="title_p">NUI小牛安全冒</span>
           </div>
          </li>
         <li>
           <div>
             <span>199</span>￥
           </div>
         </li>
         <li>
           <div class="selectOption">
             <span class="spans" @click="redCount" :class="{disspan:isShow}">-</span>
             <input v-model="count" type="text"  class="inputs" style="width:20px;padding:3px;text-align: center;">
             <span class="spans" @click="addCount" >+</span>
           </div>
         </li>
         <li>
           <div>
             <span>199</span>￥
           </div>
         </li>
         <li>
           X
         </li>
       </ul>
     </div>
     <div>
     </div>
   </div>
  </div>
</template>
<script>
export default{
   data:function(){
     return{
       isShow:false,
       count:2,
     }
   },
  methods:{
     addCount:function(){
       this.count++;
     },
     redCount:function(){
       if(this.count<=1){
         this.isShow=!this.isShow;
       }else{
         this.count--;
       }
     }
   }
}
</script>
<style lang="less" scoped>
.container {
  margin-top: 100px;
  margin-bottom: 150px;
  .cart {
    .cart_title {
      a {
        display: inline-block;
        width: 30%;
        text-align: center;
        font-size: 16px;
        //color:#ccc;
      }
    }
    .cart-header {
      height: 50px;
      line-height: 50px;
      background-color: #d1d3d3;
    }
    .cart-list {
      text-align: center;
      border-radius: 5px;
      ul {
        width: 100%;
        li {
          float: left;
          width: 10%;
          box-sizing: border-box;
          border: 1px solid #fff;
          &:first-child {
            width: 60%;
            text-align: left;
            padding-left: 20px;
            box-sizing: border-box;
            border-right: 1px solid #fff;
          }
        }
      }
    }
    .cart-main {
      height: auto;
      border:1px solid #eee;
      ul {
        li {
          height: 160px;
          line-height: 160px;
          .detail {
            img {
              width: 150px;
              height: 150px;
              vertical-align: middle;
              margin: 0 80px;
            }
            .title_p {
              margin-left: 80px;
              display: inline-block;
            }
          }
          .spans {
            width: 25px;
            font-size: 18px;
            display: inline-block;
            background: #e3e6e9;
            line-height: 25px;
            cursor: pointer;
            user-select: none;
          }
          .disspan {
            color: #d5d5d5;
            opacity: 0.3;
            cursor: not-allowed;
            background:#e3e6e9 !important;
          }
        }
      }
    }
  }
}
</style>