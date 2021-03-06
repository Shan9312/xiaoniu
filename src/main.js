// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import VueAwesomeSwiper from 'vue-awesome-swiper'
import VueResource from 'vue-resource'
import  './assets/font/iconfont.css'


import 'animate.css'
import 'swiper/dist/css/swiper.css'
Vue.use(VueAwesomeSwiper)
Vue.use(VueResource);

Vue.config.productionTip = false;


/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  template: '<App/>',
  components: { App }
})
