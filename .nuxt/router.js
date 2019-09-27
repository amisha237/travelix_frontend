import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _aa2a23e4 = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages_blog" */))
const _6e44f964 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _05bf49c4 = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _bbfaf2ec = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _1de237d2 = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _4ab81016 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: decodeURI('/'),
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
      path: "/blog",
      component: _aa2a23e4,
      name: "blog"
    }, {
      path: "/contact",
      component: _6e44f964,
      name: "contact"
    }, {
      path: "/inspire",
      component: _05bf49c4,
      name: "inspire"
    }, {
      path: "/package",
      component: _bbfaf2ec,
      name: "package"
    }, {
      path: "/stories",
      component: _1de237d2,
      name: "stories"
    }, {
      path: "/",
      component: _4ab81016,
      name: "index"
    }],

  fallback: false
}

export function createRouter() {
  return new Router(routerOptions)
}
