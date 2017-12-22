<template>
  <div class="container floors">
    <div class="content floor"  >
       <div class="sale-header">
         <h2 class="left sale_h2">新品上架</h2>
         <span class="left title_span">New Arrivals</span>
       </div>
       <ul>
          <li v-for="(p,index) in productsList_1" :key="index">
            <div class="img_div"><img :src="require('../../'+p.pic)" alt=""></div>
            <p class="title_p" v-text="p.title"></p>
            <p class="detail_p" v-text="p.details"></p>
            <span class="price">{{"¥"+p.price}}</span>
          </li>
       </ul>
    </div>
    <div class="content floor"  >
       <div class="sale-header">
         <h2 class="left sale_h2">小牛骑行周边</h2>
         <span class="left title_span">New Arrivals</span>
       </div>
       <ul>
          <li v-for="(p,index) in productsList_2" :key="index">
            <transition enter-active-class="animated flipinx" leave-active-class="animated flipinx">
              <div class="img_div"><img :src="require('../../'+p.pic)" alt=""></div>
            </transition>
            <p class="title_p" v-text="p.title"></p>
            <p class="detail_p" v-text="p.details"></p>
            <span class="price">{{"¥"+p.price}}</span>
          </li>
       </ul>
    </div>
    <div class="content floor"  >
       <div class="sale-header">
         <h2 class="left sale_h2">M系列骑行周边</h2>
         <span class="left title_span">New Arrivals</span>
       </div>
       <ul>
          <li v-for="(p,index) in productsList_3" :key="index">
            <div class="img_div"><img :src="require('../../'+p.pic)" alt=""></div>
            <p class="title_p" v-text="p.title"></p>
            <p class="detail_p" v-text="p.details"></p>
            <span class="price">{{"¥"+p.price}}</span>
          </li>
       </ul>
    </div>
    <div class="content floor"  >
       <div class="sale-header">
         <h2 class="left sale_h2">牛油保</h2>
         <span class="left title_span">New Arrivals</span>
       </div>
       <ul>
          <li v-for="(p,index) in productsList_4" :key="index">
            <div class="img_div"><img :src="require('../../'+p[0].pic)" alt=""></div>
            <p class="title_p" v-text="p[0].title"></p>
            <p class="detail_p" v-text="p[0].details"></p>
            <span class="price">{{"¥"+p[0].price}}</span>
          </li>
       </ul>
    </div>
  </div>
</template>
<script>
export default {
  data: function() {
    return {
      productsList_1:[],
      productsList_2:[],
      productsList_3:[],
      productsList_4:[],
      productsList_s:{}
    };
  },
  created:function(){
   this.loadProducts();
  },
  methods:{
     loadProducts:function(){
       this.$http.get("http://127.0.0.1:3000/product").then(function(data){
         this.productsList_1=data.data.splice(0,12);
         this. productsList_2=data.data.splice(0,12);
         this. productsList_3=data.data.splice(0,4);
         this. productsList_s=data.data.splice(0,1);
         this
         for(var i=0;i<4;i++){
           this.productsList_4.push(this. productsList_s);
         }
         console.log(this. productsList_4);
       })
     }
  }
};
</script>
<style scoped lang="less">
.floors {
  background-color: #f5f5f5;
  .floor {
    padding: 15px 0px;
    div.sale-header {
      height: 30px;
      line-height: 30px;
      margin-bottom:20px;
      h2.sale_h2 {
        font-size: 24px;
        margin-right: 15px;
        margin-left: 20px;
        font-weight: normal;
      }
      span.title_span {
        font-size: 18px;
        color: #5c6670;
      }
    }
    ul {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      li {
        width: 260px;
        height: 360px;
        padding: 0 5px;
        cursor: pointer;
        margin-bottom: 20px;
        background:#fff;
        .img_div {
          height: 260px;
          img {
            height: 100%;
          }
        }
        .title_p {
          font-size: 18px;
          color: #5c6670;
          height: 27px;
        }
        .detail_p {
          font-size: 14px;
          color: #a4a9ad;
          height: 21px;
        }
        span {
          margin-top: 4px;
          float: right;
          height: 25px;
          font-size: 18px;
          color: #df001f;
        }
      &:hover{
        box-shadow: 10px 10px 30px #212121;
      }
      }
    }
  }
}
</style>

