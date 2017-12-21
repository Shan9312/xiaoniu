<template>
  <div class="container bettery">
    <div class="bettery-header">
      <div class="bettery-top">
        <h2 class="title niu-font">更理想的锂电，和理想中一样</h2>
        <p class="detail">
          "M1 的锂电包采用原装进口锂电电芯*，高效的 BMS 电池管理系统，"
          <br> "仅 8.2kg* 的轻巧重量却能提供 120km* 超长续航。 铝合金一体化外观精致细腻。"
          <br> "成功地让 M1 的锂电包人见人爱。"
        </p>
        <a href="">了解电力系统</a>
      </div>
    </div>
    <div class="bettery-middle">
      <ul>
        <li v-for="(item,index) in mylist" :key="index">
          <h3 class="par-tit ">{{item.txt}}</h3>
          <h2 class="par-num ">
            <b style="font-size: 28px; position: absolute; left: 260px; top: -22px;">*</b>
            <span class=" niu-num-font J_rockNum">{{item.nub}}</span>
          </h2>
          <p class="par-unit">{{item.wgh}}</p>
        </li>
      </ul>
    </div>
    <div class="bettery-video">
      <div>
        <h2>工艺精湛，细致入微</h2>
        <p>
          " 结构和用料的精致考究，让 M1 从内到外都稳健可靠, 又不失轻巧灵活。"
          <br> "精良的模具与漆面做工，让 M1 无论远近，都耐人寻味。"
        </p>
        <a href="">了解车身工艺</a>
      </div>
      <video class="j_fullVideo content" autoplay loop>
        <source src="../../assets/img/s-1.mp4">
      </video>
      <p class="txt">*全新M1上线，产品实物可能与部分宣传视频或图片有细微差别，请以实物为准。</p>
    </div>
    <div class="bettery-motion">
      <div>
        <h2>收放自如带来酣畅驾趣</h2>
        <p>NIU 联合研发无刷永磁电机，高效输出，动力强劲稳定。高性能刹车组件，辅以EBS电子刹车系统，充分理解你的行驶意图。穿梭每条街道，让你津津乐道。</p>
        <a href="">了解动力系统</a>
      </div>
    </div>
    <div class="bettery-lamp">
      <div>
        <h2>
          标志性的灯光系统
          <br> 更佳安全保障
        </h2>
        <p>
          家族式的灯光系统设计在 M1 中得到了延续，
          <br> 更多科技元素的采用，更加美观时尚。安全
          <br> 为本的理念，让行车过程安全放心。
        </p>
        <a href="">了解灯光系统</a>
      </div>
    </div>
    <div class="bettery-safe">
      <div>
        <h2> 不怕丢的M1省心更安心</h2>
        <p>
          小牛电动推出了精心定制的牛油保服务，包括整车盗抢赔付，
          <br> 人身意外保障和第三者责任保障，全方位保证人车安全。
        </p>
        <a href="">了解牛油保服务</a>
      </div>
    </div>
    <div class="bettery-system">
      <ul class="imgs-bettery">
        <li :class="{current:index==ImgItem}" v-for="(item,index) in myImg" :key="index" :style='{background:"url("+item+")"}'></li>
      </ul>
      <ul class="circleList">
        <li @click="handleColor(index)" :class="{currents:isCurrents==index}" v-for="(item,index) in ImgCircle" :key="index" :style='{backgroundColor:item}'></li>
      </ul>
    </div>
  </div>
</template>
<script>
  export default {
    data: function () {
      return {
        ImgItem: 0,
        isCurrents:-1,
        ImgCircle: ["#d4d4d4", "#74767a", "#da0e18", "#3a81c0"],
        mylist: [
          { txt: "重量轻至", nub: 8.2, wgh: "KG" },
          { txt: "续航远志", nub: 120, wgh: "KM" },
          { txt: "充电至快", nub: "3.0", wgh: "HOURS" }
        ],
        myImg: [
          require('../../assets/img/s-43_9ef71a28.jpg'),
          require('../../assets/img/s-44_168afd15.jpg'),
          require('../../assets/img/s-45_2ab7e2a3.jpg'),
          require('../../assets/img/s-47_0a65871d.jpg'),
        ],
      };
    },
    methods: {
        handleColor:function(index){
          this.ImgItem=index;
          this.isCurrents=index;
        }
    }
  };
</script>
<style scoped lang="less">
  .bettery {
    .bettery-header {
      height: 600px;
      background: url("../../assets/img/s-17_00e679f4.jpg") no-repeat 50%;
      background-size: cover;
      position: relative;
      color: #f7f7f7;
      div.bettery-top {
        position: absolute;
        text-align: center;
        left: 50%;
        transform: translatex(-50%);
        h2 {
          font-size: 40px;
          height: 50px;
          line-height: 50px;
        }
        p {
          height: 80px;
          line-height: 26px;
          font-size: 16px;
        }
        a {
          color: #df001f;
          font-size: 16px;
          display: inline-block;
          margin-top: 20px;
        }
      }
    }
    .bettery-middle {
      height: 250px;
      color: #df001f;
      position: relative;
      text-align: center;
      background: url("../../assets/img/s-39_12e69273.jpg") no-repeat 50%;
      ul {
        position: absolute;
        width: 1170px;
        left: 50%;
        transform: translateX(-50%);
        li {
          float: left;
          height: 100%;
          width: 388px;
          h3 {
            font-size: 18px;
            color: #f7f7f7;
            margin-top: 60px;
            font-weight: normal;
          }
          h2 {
            height: 80px;
            position: relative;
            line-height: 80px;
            color: #df001f;
            b {
              font-size: 20px;
            }
            span {
              font-size: 75px;
            }
          }
          p {
            font-size: 20px;
          }
        }
      }
    }
    .bettery-video {
      height: 700px;
      padding-top: 20px;
      background: #fff;
      position: relative;
      div {
        padding-top: 450px;
        top: 0;
        left: 50%;
        transform: translateX(-50%);
        text-align: center;
        position: absolute;
        z-index: 5;
        h2 {
          font-size: 40px;
          color: #5c6670;
        }
        p {
          font-size: 16px;
          color: #5c6670;
          margin-top: 30px;
        }
        a {
          font-size: 18px;
          display: block;
          color: #df001f;
          margin-top: 20px;
        }
      }
      video {
        width: 100%;
        height: 600px;
      }
      p.txt {
        font-size: 12px;
        color: #ccc;
        position: absolute;
        bottom: 10px;
        text-align: center;
        left: 0;
        right: 0;
        z-index: 10;
      }
    }
    .bettery-motion {
      height: 700px;
      position: relative;
      background: url("../../assets/img/s-41_f14d708a.jpg") no-repeat 50%;
      div {
        top: 304px;
        width: 430px;
        position: absolute;
        left: 20%;
        text-align: left;
        h2 {
          font-size: 40px;
          color: #f7f7f7;
        }
        p {
          font-size: 16px;
          color: #f7f7f7;
          margin-top: 30px;
        }
        a {
          font-size: 18px;
          display: block;
          color: #df001f;
          margin-top: 20px;
        }
      }
    }
    .bettery-lamp {
      height: 600px;
      position: relative;
      background: url("../../assets/img/s-42_0309a09d.jpg") no-repeat 50%;
      div {
        top: 104px;
        width: 430px;
        position: absolute;
        right: 15%;
        text-align: left;
        h2 {
          font-size: 40px;
          font-weight: normal;
          color: #5c6670;
        }
        p {
          font-size: 16px;
          color: #5c6670;
          margin-top: 30px;
        }
        a {
          font-size: 18px;
          display: block;
          color: #df001f;
          margin-top: 20px;
        }
      }
    }
    .bettery-safe {
      height: 400px;
      position: relative;
      background: url("../../assets/img/s-20_1a5c04ea.jpg") no-repeat 50%;
      div {
        top: 80px;
        width: 430px;
        position: absolute;
        left: 35%;
        transform: translatex(-50%);
        color: #fff;
        text-align: center;
        h2 {
          font-size: 40px;
          font-weight: normal;
        }
        p {
          font-size: 16px;
          margin-top: 30px;
        }
        a {
          font-size: 18px;
          display: block;
          color: #fff;
          margin-top: 20px;
        }
      }
    }
    .bettery-system {
      height: 800px;
      position: relative;
      ul.imgs-bettery {
        height: 800px;
        position: relative;
        li {
          position: absolute;
          width: 100%;
          height: 800px;
          transition: all .6s ease-out;
          opacity: 0;
          z-index: 1;
          background-color: #fff;
          background-repeat: no-repeat!important;
          background-position: center center !important;
        }
        .current {
          opacity: 1;
          z-index: 2;
        }
      }
      .circleList {
        position: absolute;
        width: 288px;
        height: 55px;
        background: #a3a3a3;
        left: 50%;
        transform: translateX(-50%);
        bottom: 25px;
        border-radius: 30px;
        z-index: 10;
        li {
          margin-right: 20px;
          margin-top: 12px;
          width: 32px;
          height: 32px;
          border-radius: 50%;
          float: left;
          position: relative;
          cursor: pointer;
          &:first-child{
            margin-left: 50px;
          }
        }
        .currents{
          cursor: default;
          width: 38px;
          height: 38px;
        }
      }
    }
  }
</style>

