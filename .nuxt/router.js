import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _3d9a2a66 = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _6d17f64f = () => interopDefault(import('..\\pages\\package1.vue' /* webpackChunkName: "pages_package1" */))
const _246d115e = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: decodeURI('/'),
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
      path: "/inspire",
      component: _3d9a2a66,
      name: "inspire"
    }, {
      path: "/package1",
      component: _6d17f64f,
      name: "package1"
    }, {
      path: "/",
      component: _246d115e,
      name: "index"
    }],

  fallback: false
}

export function createRouter() {
  return new Router(routerOptions)
}
