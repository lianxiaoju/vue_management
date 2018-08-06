import Vue from 'vue'
import Vuex from 'vuex'
import Router from '@/router'
Vue.use(Vuex)
// import "@/mock"
// import axios from 'axios'

const store = new Vuex.Store({
    state: {
        exist: false,
        list: []
    },
    getters: {

    },
    mutations: {
        GET_EXIST_STUTAS(state, isflag) {
            state.exist = isflag
        },
        GETLIST(state, list) {
            state.list = list
        }

    },
    actions: {
        GETSHOPLIST(content) {
            fetch('/api/shopcar', {
                credentials: 'include'
            }).then(res => {
                return res.json()
            }).then(data => {
                console.log(data)
                commit('GETLIST', data.data)
            })
        }
    }
})



export default store