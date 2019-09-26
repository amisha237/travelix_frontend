import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _bd26b874 = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages_blog" */))
const _a2826ea8 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _3d9a2a66 = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _3b07545c = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _3188b35f = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _246d115e = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: decodeURI('/'),
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
      path: "/blog",
      component: _bd26b874,
      name: "blog"
    }, {
      path: "/contact",
      component: _a2826ea8,
      name: "contact"
    }, {
      path: "/inspire",
      component: _3d9a2a66,
      name: "inspire"
    }, {
      path: "/package",
      component: _3b07545c,
      name: "package"
    }, {
      path: "/stories",
      component: _3188b35f,
      name: "stories"
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
