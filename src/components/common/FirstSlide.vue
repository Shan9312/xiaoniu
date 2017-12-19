<template>
	<div class="container slide">
		<swiper :options="swiperOption" ref="mySwiper">
			<swiper-slide v-for='(item,index) in slides' :key='index'>
				<a href=""></a>
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
          autoplay: false,
          pagination: {
            el: '.swiper-pagination'
          },
          on: {
            slideChange: this.handleChange
          }
        }
      }
    },
}
</script>
<style scoped lang="less">

</style>
