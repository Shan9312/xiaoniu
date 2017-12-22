<template>
  <div class="container store-nav">
    <div class="title">
      <h2>小牛电动</h2>
      <p>E-Scooter</p>
    </div>
    <div class="content cart_imgs"> 
        <div class="detail" v-for="(item,index) in myproducts" :key="index">
          <p><img :src="item.pic" alt=""></p>
          <span class="left">{{item.title}}</span>
          <span class="right">{{item.price}}</span>
          <ul>
            <li v-for="(l,index) in item.bg" :key="index" :style='{backgroundColor:l}'></li>
          </ul>
        </div>  
    </div>
  </div>
</template>
<script>
export default {
  data: function() {
    return {
      myproducts: [
        {
          pic: require("../../assets/imgs/u1_72145162.jpg"),
          title: "小牛电动U1",
          price: "2999起",
          bg: ["#ddd", "#df001f", "#2DCCD3", "#840B55"]
        },
        {
          pic: require("../../assets/imgs/M1_9626b025.jpg"),
          title: "小牛电动M1",
          price: "4699起",
          bg: ["#ddd", "#df001f", "#0086d6", "#840B55"]
        },
        {
          pic: require("../../assets/imgs/N1_ff546d83.jpg"),
          title: "小牛电动NS1",
          price: "5899起",
          bg: ["#ddd", "#df001f", "#2DCCD3", "#840B55"]
        }
      ]
    };
  }
};
</script>
<style scoped lang="less">
.store-nav {
  .title {
    height: 75px;
    text-align: center;
    padding-top: 30px;
    padding-bottom: 6px;
    h2 {
      font-size: 36px;
      font-weight: normal;
    }
    p {
      font-size: 18px;
      color: #5c6670;
    }
  }
  .cart_imgs {
    height: 320px;
    div {
      float: left;
      padding:0 20px;
      width: 340px;
      p {
        height: 240px;
        img {
          width: 100%;
        }
      }
      span {
        padding:0 30px;
        font-size: 18px;
        cursor: pointer;
        transition: all 0.6s ease-out;
        &:hover {
          color: #5c6670;
        }
      }
      ul {
        height: 14px;
        float: left;
        width: 100%;
        margin-left: 30px;
        margin-top: 15px;
        li {
          height: 14px;
          width: 14px;
          margin:0 10px;
          float: left;
          cursor: pointer;
          transition: all .6s ease-in-out;
          border-radius: 50%;
          &:hover{
            height: 18px;
            width: 18px;
          }
        }
      }
    }
  }
}
</style>

