<template>
  <div class="container imgContainer">
    <p  v-for="(item ,index) in imgs" :key="index" :style='{background:"url("+item+")"}' :class="{show_pic:index==currenPic}" alt=""></p>
    <ul class="circleList">
      <li v-for="(item, index) in isShow" :key="index"  @click="handleColor(index)" :class="{currents:index==currenPic}"></li>
    </ul>
    <div class="slide-detail">
      <h2>
        精彩的科技
        <br>
        出彩的设计
      </h2>
       <h5 class="txt">M1 在延续 NIU 家族设计语言的同时，加入更多潮流色彩元素、以及聪明过人的智能科技，为你的行动表现力加分。</h5>
       <a class="sign" href="">了解设计</a>
    </div>
  </div>
</template>
<script>
  export default {
    data: function () {
      return {
        currenPic: 0,
        time: null,
        canCirclePic: true,
        isShow:[0,1,2,3],
        imgs: [
          require("../../assets/img/s-37_327300d1.jpg"),
          require("../../assets/img/s-34_6f084b6f.jpg"),
          require("../../assets/img/s-36_383d4033.jpg"),
          require("../../assets/img/s-33_478c6ec5.jpg")
        ]
      };
    },
    created: function () {
      this.time = setInterval(() => {
        if (this.canCirclePic) {
          this.currenPic++;
          if (this.currenPic == 4 ) {
            this.currenPic = 0;
          }
        }
      }, 3000);
    },
    methods: {
      handleColor:function(index){
        this.currenPic=index;
      }
    }
  };
</script>
<style scoped lang="less">
  .imgContainer {
    position: relative;
    height: 800px;
    p{
      width: 100%;
      height: 100%;
      position: absolute;
      opacity: 0;
      cursor: pointer;
      transition: all .6s ease-out;
      background-repeat: no-repeat!important;
      background-position: center center !important;
    }
    .show_pic {
      opacity: 1;
    }
    .circleList {
      position: absolute;
      width: 120px; 
      height: 20px;
      bottom: 5px;
      left: 50%;
      transform: translateX(-50%);
      z-index: 20;
      li {
        width: 10px;
        height: 10px;
        float: left;
        margin-top:5px;
        margin-right: 9px;
        transition: all .6s ease-out;
        cursor: pointer;
        background: #fff;
        border-radius: 50%;
      }
      .currents {
        background:#212121;
      }
    }
    div.slide-detail {
        top: 104px;
        width: 430px;
        position: absolute;
        left: 12%;
        color:#fff;
        text-align: left;
        h2 {
          font-size: 40px;
          font-weight: normal;
        }
        h5.txt {
          font-size: 16px ;
          margin-top: 30px ;
          font-weight: normal;
        }
        a.sign {
          font-size: 18px !important;
          display: block;
          margin-top: 20px;
          color: #fff;
        }
      }
  }
</style>

