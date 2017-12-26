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
      <div class="cart-main cart-list" v-for="(item,index) in ProductList" :key="index">
        <ul class="clear">
          <li>
            <div class="detail">
              <input type="checkbox" @change='handleCheckedChange(index)' :checked='selected[index]'>
              <img :src="require('../'+item.pic)" alt="">
              <span class="title_p">{{item.title}}</span>
            </div>
          </li>
          <li>
            <div>
              <span>{{item.price}}</span>￥
            </div>
          </li>
          <li>
            <div class="selectOption">
              <span class="spans" @click="handleCount(-1,index)" :class="{disspan:isShow}">-</span>
              <input v-model="item.count" type="text" class="inputs" style="width:20px;padding:3px;text-align: center;" disabled />
              <span class="spans" @click="handleCount(1,index)">+</span>
            </div>
          </li>
          <li>
            <div>
              <span>{{item.sum}}</span>￥
            </div>
          </li>
          <li>X</li>
        </ul>
      </div>
      <div>
      <div class="cart-footer">
        <ul>
          <li><input type="checkbox" @change="handleCheckedChangeAll" :checked='selected.length === ProductList.length'>全选</li>
          <li>已选产品数量：<span>{{selected.length}}</span>产品合计：<span>{{sums}}</span><a href="#" class="demp">下一步</a></li>
        </ul>
      </div>
     </div>
   </div>
 </div>
</template>
<script>
export default {
  data: function() {
    return {
      ProductList: [
        {
          count: 2,
          price: 188,
          pic: "assets/imgs/145.jpg",
          title: "小牛电动雨衣",
          sum: 376
        },
        {
          count: 4,
          price: 258,
          pic: "assets/imgs/158.jpg",
          title: "夏季透气坐垫",
          sum: 1032
        },
        {
          count: 7,
          price: 258,
          pic: "assets/imgs/sjzj.jpg",
          title: "NIU骑行通用手机支架",
          sum: 1806
        }
      ],
      isShow: false,
      selected: [],
      sums:0
    };
  },
  methods: {
    handleCount: function(a, index) {
      let product = this.ProductList[index];
      if (a == 1) {
        product.count++;
      } else {
        if (product.count <= 0) {
          product.count = 0;
          // this.isShow =true
        } else {
          product.count--;
        }
      }
      product.sum = product.count * product.price;
    },
    handleCheckedChange(index) {
      console.dir(this.selected[index]);
      if (this.selected[index]) {
        this.selected.splice(index, 1);
        console.dir(this.selected);
        for(var index in this.selected){
            this.sums=this.selected[index].price*this.selected[index].count;
          }
      } else {
        // this.selected.push(this.ProductList[index]) ;
       
        this.$set(this.selected, index, this.ProductList[index]);
         //console.dir(this.selected);
        for(var index in this.selected){
            this.sums+=this.selected[index].price*this.selected[index].count;
          }
      }
    },
    handleCheckedChangeAll() {
      if (this.selected.length) {
        this.selected = [];
      } else {
        this.selected = Object.assign([], this.ProductList);
        //console.dir(this.selected);
      }
     
    }
  },
  watch: {
    selected(v) {
      // console.dir(v);
    }
  }
};
</script>
<style lang="less" scoped>
.container {
  margin-top: 100px;
  margin-bottom: 150px;
  .cart {
    .cart_title {
      margin-bottom:30px; 
      margin-top:20px;
      a {
        display: inline-block;
        width: 30%;
        text-align: center;
        font-size: 16px; //color:#ccc;
        &:nth-child(2){
          border-left:1px solid #ddd;
          border-right:1px solid #ddd;
        }
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
      border: 1px solid #eee;
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
            background: #e3e6e9 !important;
          }
        }
      }
    }
    .cart-footer {
      height: 100px;
      line-height: 100px;
      border:1px solid #eee;
      ul {
        width: 100%;
        box-sizing: border-box;
        li {
          float: left;
          box-sizing: border-box;
          &:first-child {
            width: 59%;
            padding-left: 25px;
            input {
              vertical-align: middle;
            }
          }
          &:last-child {
            width: 40%;
            text-align: center;
            span{
              color:#df001f;
              font-size: 16px;
              padding:0 5px;
            }
            .demp {
              display: inline-block;
              height: 35px;
              padding: 0 30px;
              text-align: center;
              line-height: 35px;
              border-radius: 15px;
              border-radius: 20px;
              color: #fff;
              cursor: pointer;
              background-color: #df001f;
              margin-left:30px;
            }
          }
        }
      }
    }
  }
}
</style>