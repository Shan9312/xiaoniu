<template>
  <div>
    <div class="container hall">
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
      <ul class="content hall-logo">
        <li>
          <div class="hall-svg svg1">
          </div>
          <div class="hall-txt ">
            <p>小牛驾到</p>
            <p>线下体验计划</p>
          </div>
        </li>
        <li>
          <div class="hall-svg svg3">
          </div>
          <div class="hall-txt">
            <p>小牛驾到</p>
            <p>线下体验计划</p>
          </div>
        </li>
        <li>
          <div class="hall-svg svg4">
          </div>
          <div class="hall-txt ">
            <p>小牛驾到</p>
            <p>线下体验计划</p>
          </div>
        </li>
        <li>
          <div class="hall-svg svg2">
          </div>
          <div class="hall-txt">
            <p>小牛驾到</p>
            <p>线下体验计划</p>
          </div>
        </li>
      </ul>
      <div class="hall_detail">
        <div>
          <div class="hall_logo_a" href="#"></div>
          <p>详情服务条款</p>
        </div>
      </div>
      <div class="server-title">
        <h1>服务支持</h1>
      </div>
      <ul class=" hall-logo care-hall">
        <li>
          <i class="icon iconfont icon-dianhua"></i>
          <div class="hall-txt ">
            <p>联系客服</p>
            <p>400-6388-666</p>
            <p class="tt">售后由江苏小牛电动科技有限公司全权负责</p>
          </div>
        </li>
        <li style="margin-left:60px;">
          <i class="icon iconfont icon-weibo"></i>
          <div class="hall-txt">
            <p style="margin-top:25px;">关注微博</p>
          </div>
        </li>
        <li >
          <i class="icon iconfont icon-weixin3"></i>
          <div class="hall-txt ">
            <p style="margin-top:25px;">关注微信</p>
          </div>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
  export default {
    data: function () {
      return{}
    },
  }
</script>
<style scoped lang="less">
  .hall {
    margin-bottom: 50px;
    .server-header {
      height: 900px;
      background: url("../assets/img/order1.jpg") no-repeat center;
      background-size: cover;
      margin-bottom: 50px;
      div {
        color: #e0e0e0;
        position: absolute;
        height: 100%;
        width: 500px;
        text-align: center;
        padding-top: 100px;
        right: 15%;
        div {
          margin: 20px;
          img {
            width: 100%;
            margin: 30px;
          }
        }
        h1 {

          p {
            font-size: 18px;
          }
        }
      }
    }
    .server-title {
      text-align: center;
      margin-bottom: 50px;
      margin-top: 20px;
      h1 {
        height: 48px;
        font-size: 36px;
      }
    }
    ul.hall-logo {
      height: 110px;
      display: flex;
      justify-content: space-between;
      li {
        height: 100%;
        text-align: center;
        width: 210px;
        div {
          float: left;
        }
        .hall-svg {
          background-size: inherit;
          width: 72px;
          height: 72px;
          margin-left: 30px;
          text-align: center;
        }
        .svg1 {
          background: url('../assets/img/niu-gesture_84f9f5b2.svg') no-repeat center !important;
        }
        .svg2 {
          background: url('../assets/img/service-care_f1ff6a8c.svg') no-repeat center !important;
        }
        .svg3 {
          background: url('../assets/img/service-insurence_f99fa20c.svg') no-repeat center !important;
        }
        .svg4 {
          background: url('../assets/img/service-locate_9841d7c4.svg') no-repeat center !important;
        }
        .hall-txt {
          margin-top: 15px !important;
          margin-left: 10px;
          color: #5c6670;
          text-align: left;
          cursor: pointer;
          &:hover {
            color: #212121;
          }
          p {
            font-size: 16px!important;
          }
          .tt {
            font-size: 12px!important;
            color: #d2d1d1;
          }
        }
      }
    }
    .hall_detail {
      background: url('../assets/img/politicsBg_41ff77c3.png') no-repeat center;
      background-size: cover;
      position: relative;
      width: 100%;
      height: 266px;
      div {
        position: absolute;
        left: 50%;
        text-align: center;
        color: #212121;
        transform: translateX(-50%);
        div.hall_logo_a {
          width: 72px;
          height: 72px;
          margin-top: 70px;
          cursor: pointer;
          background: url('../assets/img/politics_48ef156b.svg') no-repeat center;
        }
        p {
          margin-top: 150px;
          font-size: 18px;
        }
        &:hover {
          color: #df001f;
        }
      }
    }
    ul.care-hall{
      width: 1000px;
      margin:0 auto;
      padding-left: 100px;
      li{
        text-align: left;
        width:300px;
        position: relative;
        padding-left: 50px;
        i{
        font-size:40px;
        display: inline;
        position: absolute;;
        left:0px;
        top:20px;
       }
      }
      
    }
  }
</style>
