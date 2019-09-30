import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _172e437c = () => interopDefault(import('..\\pages\\admin\\index.vue' /* webpackChunkName: "pages_admin_index" */))
const _de4fad0a = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages_blog" */))
const _403b6ad7 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _61d266de = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _73f8f7fd = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _43cfd5f2 = () => interopDefault(import('..\\pages\\package-details.vue' /* webpackChunkName: "pages_package-details" */))
const _79f554ec = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _11f582aa = () => interopDefault(import('..\\pages\\admin\\addPackage.vue' /* webpackChunkName: "pages_admin_addPackage" */))
const _365aa38b = () => interopDefault(import('..\\pages\\admin\\viewPackage.vue' /* webpackChunkName: "pages_admin_viewPackage" */))
const _22724249 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: decodeURI('/'),
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
      path: "/admin",
      component: _172e437c,
      name: "admin"
    }, {
      path: "/blog",
      component: _de4fad0a,
      name: "blog"
    }, {
      path: "/contact",
      component: _403b6ad7,
      name: "contact"
    }, {
      path: "/inspire",
      component: _61d266de,
      name: "inspire"
    }, {
      path: "/package",
      component: _73f8f7fd,
      name: "package"
    }, {
      path: "/package-details",
      component: _43cfd5f2,
      name: "package-details"
    }, {
      path: "/stories",
      component: _79f554ec,
      name: "stories"
    }, {
      path: "/admin/addPackage",
      component: _11f582aa,
      name: "admin-addPackage"
    }, {
      path: "/admin/viewPackage",
      component: _365aa38b,
      name: "admin-viewPackage"
    }, {
      path: "/",
      component: _22724249,
      name: "index"
    }],

  fallback: false
}

export function createRouter() {
  return new Router(routerOptions)
}
