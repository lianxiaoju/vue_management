// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import store from './store/index'
import "./index.css"
// import ECharts from 'vue-echarts/components/ECharts'

// // import ECharts modules manually to reduce bundle size
// import 'echarts/lib/chart/bar'
// import 'echarts/lib/component/tooltip'

// // register component to use
// Vue.component('chart', ECharts)




Vue.config.productionTip = false
Vue.use(ElementUI);

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
})
