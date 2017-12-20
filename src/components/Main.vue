<template>
  <div class="section container">
    <div class="section-header" :style='{height:clientHeight+"px"}'>
      <div class="cover" :style='{height:clientHeight+"px"}'></div>
      <div class="abs-text">
        <h1 class="niu-font">
          科&nbsp技&nbsp玩&nbsp转&nbsp城&nbsp市
        </h1>
        <p class="paly-btn">
          观看M1产品视频
          <span class="play-icon"></span>
        </p>
      </div>
      <p class="marks">*全新M1上线，产品实物可能与部分宣传视频或图片有细微差别，请以实物为准。</p>
      <video class="j_fullVideo" :style='{height:clientHeight+"px"}'>
        <source src="../assets/img/s-2v.mp4">
        <source src="">
        <img src="" alt="">
      </video>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'mains',
    data () {
      return {
        clientHeight: window.document.body.offsetHeight
      }
    },
    mounted () {
      if (this.clientHeight > 768) {
        this.clientHeight = 768
      }
    }
  }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang='less'>
  .section {
    .section-header {
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
        opacity: .4;
      }
      .abs-text{
        background:url("../assets/img/s-15_9cc2ed90.png") no-repeat 43% top;
        position: absolute;
        height: 310px;
        color:#fff;
        z-index: 10;
        width:460px;
        border:1px solid red;
        top:40% ;
        left:50%;
        transform: translateX(-50%);
        h1{

        }
        p.play-btn{
          
        } 
      }
    }
  }
</style>
