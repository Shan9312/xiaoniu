<template>
	<div class="container slide">
		<swiper :options="swiperOption" ref="mySwiper">
			<swiper-slide>
				<a href="" class="img_1"></a>
			</swiper-slide>
      <swiper-slide>
				<a href="" class="img_2"></a>
			</swiper-slide>
      <swiper-slide>
				<a href="" class="img_3"></a>
			</swiper-slide>
			<div class="swiper-pagination" slot="pagination"></div>
		</swiper>
	</div>
</template>
<script>
export default{
	name:'slide',
	data:function () {
      return {
        swiperOption: {
          loop: true,
          autoplay: true,
          // slideToClickedSlide:true,
          paginationClickable :true, 
          pagination: {
            el: '.swiper-pagination',
            paginationClickable :true,
          },
        }
      }
    },
}
</script>
<style scoped lang="less">
  .container{
     height:886px;
    .swiper-slide{
      height:886px;
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
  }
</style>
