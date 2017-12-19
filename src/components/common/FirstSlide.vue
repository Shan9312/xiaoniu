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
			<div class="swiper-pagination" slot="pagination">
      </div>
		</swiper>
	</div>
</template>
<script>
export default{
	name:'slide',
	data:function () {
      return {
        clientHeight: window.document.body.offsetHeight,
        swiperOption: {
          loop: true,
          autoplay: true,
          // slideToClickedSlide:true,
          pagination: {
            el: '.swiper-pagination',
            clickable: true,
            bulletActiveClass: 'pagination-current',
            renderBullet: function (index, className) {
              return `<span class=${className} style="opacity:0.8;width:20px;height:3px;background:#666;margin:0 3px;"></span>`
            }
          },
        }
      }
    },
    mounted(){
      if(this.clientHeight > 768) {
        this.clientHeight = 768
      }
    }
}
</script>
<style lang="less">
  .firstSlide{
     height:686px;
    .swiper-slide{
      height:100%;
        a{
          display: block;
          height: 100%;
          background-size: cover!important;
        }
        a.img_1{
          background:url("../../assets/img/KV1N1S0825_0b5a65a7.jpg") no-repeat center;  
        }
        a.img_2{
          background:url("../../assets/img/kv-m1-product-video_9d5c0840.jpg") no-repeat 50%;  
        }
        a.img_3{
          background:url("../../assets/img/u1kvpc1_c0211bb6.jpg") no-repeat center;  
        }
     }
     .swiper-pagination{
       height: 20px;
       line-height: 20px;
       display: flex;
       justify-content: center;
       align-items: center;
     }
     .pagination-current{
       background: red!important;
     }
  }
</style>
