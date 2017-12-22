import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import Firster from '@/components/Firster'
import Main from '@/components/Main'
import Store from '@/components/Store'
import Service from '@/components/Service'
import Hall from '@/components/Hall'

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
    {
      path: '/store',
      name: 'Store',
      component: Store
    },
    {
      path: '/service',
      name: 'Service',
      component: Service
    },
    {
      path: '/hall',
      name: 'Hall',
      component: Hall
    },

  ]
})
