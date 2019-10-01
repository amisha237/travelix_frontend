import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _3dfabeb2 = () => interopDefault(import('..\\pages\\admin\\index.vue' /* webpackChunkName: "pages_admin_index" */))
const _85738268 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _4c21a086 = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _4e433295 = () => interopDefault(import('..\\pages\\login.vue' /* webpackChunkName: "pages_login" */))
const _1df8681c = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _63d5e4e7 = () => interopDefault(import('..\\pages\\package-details.vue' /* webpackChunkName: "pages_package-details" */))
const _4010297f = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _2dc36460 = () => interopDefault(import('..\\pages\\admin\\addPackage.vue' /* webpackChunkName: "pages_admin_addPackage" */))
const _513d9714 = () => interopDefault(import('..\\pages\\admin\\viewPackage.vue' /* webpackChunkName: "pages_admin_viewPackage" */))
const _f6c8e104 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: decodeURI('/'),
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
      path: "/admin",
      component: _3dfabeb2,
      name: "admin"
    }, {
      path: "/contact",
      component: _85738268,
      name: "contact"
    }, {
      path: "/inspire",
      component: _4c21a086,
      name: "inspire"
    }, {
      path: "/login",
      component: _4e433295,
      name: "login"
    }, {
      path: "/package",
      component: _1df8681c,
      name: "package"
    }, {
      path: "/package-details",
      component: _63d5e4e7,
      name: "package-details"
    }, {
      path: "/stories",
      component: _4010297f,
      name: "stories"
    }, {
      path: "/admin/addPackage",
      component: _2dc36460,
      name: "admin-addPackage"
    }, {
      path: "/admin/viewPackage",
      component: _513d9714,
      name: "admin-viewPackage"
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
