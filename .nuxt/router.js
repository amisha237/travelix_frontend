import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _2065e1a6 = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages_blog" */))
const _85738268 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _4c21a086 = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _1df8681c = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _4010297f = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _f6c8e104 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: decodeURI('/'),
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
      path: "/blog",
      component: _2065e1a6,
      name: "blog"
    }, {
      path: "/contact",
      component: _85738268,
      name: "contact"
    }, {
      path: "/inspire",
      component: _4c21a086,
      name: "inspire"
    }, {
      path: "/package",
      component: _1df8681c,
      name: "package"
    }, {
      path: "/stories",
      component: _4010297f,
      name: "stories"
    }, {
      path: "/",
      component: _f6c8e104,
      name: "index"
    }],

  fallback: false
}

export function createRouter() {
  return new Router(routerOptions)
}
