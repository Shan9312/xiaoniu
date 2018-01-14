<template>
	<div class="slide firstSlide">
		<swiper :options="swiperOption" ref="mySwiper" style='height:100%'>
			<swiper-slide v-for="(item,index) in myImgs" :key="index">
				<a href="" :style='{background:"url("+item+")"}' ></a>
			</swiper-slide>
			<div class="swiper-pagination" slot="pagination">
      </div>
		</swiper>
	</div>
</template>
<script>
export default {
  name: "slide",
  data: function() {
    return {
        myImgs:[
          require("../../assets/img/75_3c5b77c6.jpg"),
          require("../../assets/img/161_56d8e4d9.jpg"),
          require("../../assets/img/124_515b784b.jpg"),
          require("../../assets/img/104_147f00b1.jpg"),
          require("../../assets/img/87_ddec851c.jpg"),      
        ],
        clientHeight: window.document.body.offsetHeight,
        swiperOption: {
        loop: true,
        autoplay: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
          bulletActiveClass: "pagination-current",
          renderBullet: function(index, className) {
            return `<span class=${className} style="opacity:0.8;width:20px;height:3px;background:#666;margin:0 3px;"></span>`;
          }
        }
      }
    };
  },
  mounted() {
    if (this.clientHeight > 768) {
      this.clientHeight = 768;
    }
  }
};
</script>
<style lang="less" scoped>
.firstSlide {
  height: 500px;
  .swiper-slide {
    height: 100%;
    a {
      display: block;
      height:500px;
      background-size: cover !important;
    }
  }
  .swiper-pagination {
    height: 20px;
    line-height: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .pagination-current {
    background: red !important;
  }
}
</style>

