import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _4f29f8a3 = () => interopDefault(import('..\\pages\\admin\\index.vue' /* webpackChunkName: "pages_admin_index" */))
const _88a24d60 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _4a8a3b0a = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _7c589e19 = () => interopDefault(import('..\\pages\\login.vue' /* webpackChunkName: "pages_login" */))
const _21273314 = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _184dbb6b = () => interopDefault(import('..\\pages\\package-details.vue' /* webpackChunkName: "pages_package-details" */))
const _3e78c403 = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _b8c0ac38 = () => interopDefault(import('..\\pages\\admin\\addPackage.vue' /* webpackChunkName: "pages_admin_addPackage" */))
const _1d0d9f72 = () => interopDefault(import('..\\pages\\admin\\viewPackage.vue' /* webpackChunkName: "pages_admin_viewPackage" */))
const _9a9e09fc = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: decodeURI('/'),
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
      path: "/admin",
      component: _4f29f8a3,
      name: "admin"
    }, {
      path: "/contact",
      component: _88a24d60,
      name: "contact"
    }, {
      path: "/inspire",
      component: _4a8a3b0a,
      name: "inspire"
    }, {
      path: "/login",
      component: _7c589e19,
      name: "login"
    }, {
      path: "/package",
      component: _21273314,
      name: "package"
    }, {
      path: "/package-details",
      component: _184dbb6b,
      name: "package-details"
    }, {
      path: "/stories",
      component: _3e78c403,
      name: "stories"
    }, {
      path: "/admin/addPackage",
      component: _b8c0ac38,
      name: "admin-addPackage"
    }, {
      path: "/admin/viewPackage",
      component: _1d0d9f72,
      name: "admin-viewPackage"
    }, {
      path: "/",
      component: _9a9e09fc,
      name: "index"
    }],

  fallback: false
}

export function createRouter() {
  return new Router(routerOptions)
}
