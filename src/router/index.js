import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import Firster from '@/components/Firster'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/first',
      name: 'Firster',
      component: Firster
    },

  ]
})
