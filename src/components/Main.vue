<template>
  <div class="section container">
    <div class="section-title content" :class="{sectionTitleBg:isShowBg,fixed:fixedHeader}">
        <h2 class="left">M1</h2>
        <div class="right section-nav">
          <a href="">概述</a>
          <a href="">设计</a>
          <a href="">电力系统</a>
          <a href="">工艺</a>
          <a href="">动力</a>
          <a href="">灯光系统</a>
          <a href="">智能系统</a>
          <a href="">参数</a>
          <a href="">说明书</a>
          <a href="">立即购买</a>
        </div>
    </div>
    <div class="section-header" :style='{height:clientHeight+"px"}'>
      <div class="cover" :style='{height:clientHeight+"px"}'></div>
      <div class="abs-text">
        <h1 class="niu-font">
          科&nbsp技&nbsp玩&nbsp转&nbsp城&nbsp市
        </h1>
        <p class="play-btn">
          观看M1产品视频
          <span class="play-icon" ></span>
        </p>
      </div>
      <p class="marks">*全新M1上线，产品实物可能与部分宣传视频或图片有细微差别，请以实物为准。</p>
      <video class="j_fullVideo" autoplay loop >
        <source src="../assets/img/s-2v.mp4">
        <source src="">
        <img src="../assets/img/s-2v_9b38e42c.png" alt="">
      </video>
    </div>
    <my-main-slide></my-main-slide>
    <my-main-battery @fixedHead='v => {fixedHeader = v}'></my-main-battery>
    
  </div>
</template>

<script>
import myMainSlide from './common/MainSlide2'
import myMainBattery from './common/MainBattery'
export default {
  name: "mains",
  data() {
    return {
      isShowBg:false,
      clientHeight: window.document.body.offsetHeight,
      scrollTop:window.scroll.scrollTop,
      fixedHeader: false
    };
  },
  mounted() {
    if (this.clientHeight > 768) {
      this.clientHeight = 768;
    }
    this.$nextTick(() => {
      window.addEventListener('scroll',function () {
          console.log('scroll')
      },false);
    })
    console.log(this.scrollTop);
    if(this.scrollTop>500){
      this.isShowBg=true;
    }
  },
  components:{
    myMainSlide,myMainBattery
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang='less'>
.section {
  .sectionTitleBg{
     background:rgba(247,247,247,0.7) !important;
  }
  .section-title {
    position: absolute;
    height: 40px;
    line-height: 40px;
    background: transparent;
    color: #fff;
    top: 90px;
    left: 50%;
    border-radius:4px;
    transform: translatex(-50%);
    z-index: 5;
    border-bottom: 1px solid #ccc;
    h2 {
      height: 100%;
      font-weight: normal;
      font-size: 18px;
      padding-left: 14px;
      color: #fff;
      padding-bottom: 15px;
      width: 200px;
    }
    div.section-nav {
      text-align: center;
      a {
        color: #fff;
        height: 100%;
        padding: 5px 20px;
        font-size: 14px;
      }
      a:first-child {
        color: #df001f;
      }
      a:last-child {
        background: #df001f;
        padding: 7px 40px;
        border-radius: 5px;
      }
    }
  }
  
  .section-header {
    position: relative;
    text-align: center;
    background: #080808;
    overflow: hidden;
    height: 100%;
    .cover {
      width: 100%;
      position: absolute;
      height: 100%;
      background: #000;
      z-index: 1;
      opacity: 0.4;
    }
    .abs-text {
      background: url("../assets/img/s-15_9cc2ed90.png") no-repeat 50% top;
      position: absolute;
      color: #fff;
      z-index: 6;
      width: 460px;
      top: 50%;
      padding-top:150px;
      left: 50%;
      transform: translate(-50%,-50%);
      h1 {
        font-size: 43px;
        color: #f7f7f7;
        font-family: syNormal;
        font-weight: 400;
        font-style: normal;
      }
      p.play-btn {
        width: 249px;
        margin-top: 13px;
        height: 44px;
        line-height: 44px;
        color: #df001f;
        margin-left: auto;
        margin-right: auto;
        font-size: 24px;
        cursor: pointer;
        span {
          display: inline-block;
          width: 38px;
          height: 38px;
          vertical-align: -11px;
          background: url("../assets/img/s-38_aa40dd4c.png") no-repeat center;
        }
      }
    }
    .marks {
      position: absolute;
      z-index: 10;
      bottom: 50px;
      left: 50%;
      transform: translateX(-50%);
      color: #fff;
    }
    video {
      width: 100%;
    }
  }
  .fixed{
    position: fixed;
    top:20px;
    background:rgba(200,200,200,0.5)
  }
}
</style>
