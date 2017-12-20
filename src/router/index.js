import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import Firster from '@/components/Firster'
import Main from '@/components/Main'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home,
      children:[
        {
          path:'/',
          component:Main
        }
      ]
    },
    {
      path: '/first',
      name: 'Firster',
      component: Firster
    },

  ]
})
