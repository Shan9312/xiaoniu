import Vue from 'vue'
import Router from 'vue-router'
const Home = () => import('@/components/Home')
const Firster = () => import('@/components/Firster')
const Main = () => import('@/components/Main')
const Store = () => import('@/components/Store')
const Service = () => import('@/components/Service')
const Hall = () => import('@/components/Hall')
const Detail = () => import('@/components/Detail')
const Register =()=>import('@/components/Register')
const Login =()=>import('@/components/Login')
// import Home from '@/components/Home'
// import Firster from '@/components/Firster'
// import Main from '@/components/Main'
// import Store from '@/components/Store'
// import Service from '@/components/Service'
// import Hall from '@/components/Hall'
// import Detail from '@/components/Detail'

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
        {
          path: '/detail',
          name: 'Detail',
          component: Detail
        },
        {
          path: '/register',
          name: 'Register',
          component: Register
        },
        {
          path: '/login',
          name: 'Login',
          component: Login
        }   
      ]
    },
    
  ]
})
