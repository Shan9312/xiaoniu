<template>
  <div class="slide firstSlide">
    <swiper :options="swiperOption" ref="mySwiper" :style='{height:clientHeight+"px"}'>
      <swiper-slide>
        <a href="" class="img_1"></a>
      </swiper-slide>
      <swiper-slide>
        <a href="" class="img_2"></a>
      </swiper-slide>
      <swiper-slide>
        <a href="" class="img_3"></a>
      </swiper-slide>
      <swiper-slide>
        <a href="" class="img_4"></a>
      </swiper-slide>
      <div class="swiper-pagination" slot="pagination">
      </div>
      <div class="swiper-button-prev" slot="button-prev"></div>
      <div class="swiper-button-next" slot="button-next"></div>
    </swiper>
  </div>
</template>
<script>
  export default {
    name: 'slide',
    data: function () {
      return {
        clientHeight: window.document.body.offsetHeight,
        swiperOption: {
          loop: true,
          autoplay: true,
          type: 'bullets',
          bulletActiveClass: 'pagination-current',
          pagination: {
            el: '.swiper-pagination',
            clickable: true,
          },
          navigation: {
            el: '.swiper-container',
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
          }
        }
      }
    },
    mounted () {
      if (this.clientHeight > 768) {
        this.clientHeight = 768
      }
    }
  }
</script>
<style lang="less" scoped>
  .firstSlide {
    height: 686px;
    .swiper-slide {
      height: 100%;
      a {
        display: block;
        height: 100%;
        background-size: cover!important;
      }
      a.img_1 {
        background: url("../../assets/img/s-37_327300d1.jpg") no-repeat center;
      }
      a.img_2 {
        background: url("../../assets/img/s-34_6f084b6f.jpg") no-repeat 50%;
      }
      a.img_3 {
        background: url("../../assets/img/s-36_383d4033.jpg") no-repeat center;
      }
      a.img_4 {
        background: url("../../assets/img/s-33_478c6ec5.jpg") no-repeat center;
      }
    } 
    .swiper-button-prev{
       color:red!important;
    }
  }
</style>
