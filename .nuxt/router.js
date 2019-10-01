import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _b416fcd8 = () => interopDefault(import('..\\pages\\admin\\index.vue' /* webpackChunkName: "pages_admin_index" */))
const _2569ff93 = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages_blog" */))
const _775cbdbf = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _06381f79 = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _a9cb6a36 = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _1383c0da = () => interopDefault(import('..\\pages\\package-details.vue' /* webpackChunkName: "pages_package-details" */))
const _0bb2af1c = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _ad2be0da = () => interopDefault(import('..\\pages\\admin\\addPackage.vue' /* webpackChunkName: "pages_admin_addPackage" */))
const _5ee020ba = () => interopDefault(import('..\\pages\\admin\\viewPackage.vue' /* webpackChunkName: "pages_admin_viewPackage" */))
const _201b2f31 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: decodeURI('/'),
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
      path: "/admin",
      component: _b416fcd8,
      name: "admin"
    }, {
      path: "/blog",
      component: _2569ff93,
      name: "blog"
    }, {
      path: "/contact",
      component: _775cbdbf,
      name: "contact"
    }, {
      path: "/inspire",
      component: _06381f79,
      name: "inspire"
    }, {
      path: "/package",
      component: _a9cb6a36,
      name: "package"
    }, {
      path: "/package-details",
      component: _1383c0da,
      name: "package-details"
    }, {
      path: "/stories",
      component: _0bb2af1c,
      name: "stories"
    }, {
      path: "/admin/addPackage",
      component: _ad2be0da,
      name: "admin-addPackage"
    }, {
      path: "/admin/viewPackage",
      component: _5ee020ba,
      name: "admin-viewPackage"
    }, {
      path: "/",
      component: _201b2f31,
      name: "index"
    }],

  fallback: false
}

export function createRouter() {
  return new Router(routerOptions)
}
