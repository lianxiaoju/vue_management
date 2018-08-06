import Vue from 'vue'
import Router from 'vue-router'
import Admin from '@/views/layout/user.layout'
import Login from '@/views/layout/base.layout'
import Home from '@/views/home/'
import Product from '@/views/product'
import RoduceAdd from '@/views/product/add'
import RoduceGroup from '@/views/product/group'
import RoduceList from '@/views/product/list'


import store from '@/store/'
Vue.use(Router)

const router = new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'Admin',
      component: Admin,
      meta: {
        title: '管理系统'
      },
      redirect:'/home'
    },

    {
      path: '/login',
      name: 'Login',
      // component: () => ('@/views/layout/base.layout'),
      component: Login,
      meta: {
        title: '用户登录'
      }
    },
    {
      path: '/home',
      name: 'Home',
      // component: () => ('@/views/home/'),
      component: Home,
      meta: {
        title: '首页',
        isMenu: true
      }
    },
    {
      path: '/product',
      meta: {
        title: '商品管理',
        isMenu: true
      },
      redirect: '/product/list',
      component:Product,
      // component: resolve => require('@/views/product'),
      children: [
        {
          path: 'add',
          name: 'RoduceAdd',
          component: RoduceAdd,
          // component: () => ('@/views/product/add'),
          meta: {
            title: '商品添加',
            isMenu: true
          }
        },
        {
          path: 'group',
          name: 'RoduceGroup',
          // component: () => ('@/views/product/group'),
          component: RoduceGroup,
          meta: {
            title: '商品分组',
            isMenu: true
          }
        },
        {
          path: 'list',
          name: 'RoduceList',
          // component: () => ('@/views/product/list'),
          component: RoduceList,
          meta: {
            title: '商品列表',
            isMenu: true
          }
        }
      ]
    }


  ]
})

router.beforeEach((to, from, next) => {

  let token = document.cookie.indexOf('userInfo');
  if (token === -1) {
    store.commit('GET_EXIST_STUTAS', false)
    next('/login')
  } else {
    store.commit('GET_EXIST_STUTAS', true)
    next();
  }



})

router.afterEach((to, from) => {
  document.title = to.meta.title
})




export default router
