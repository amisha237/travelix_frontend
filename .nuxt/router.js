import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _f0ee75e2 = () => interopDefault(import('..\\pages\\admin\\index.vue' /* webpackChunkName: "pages_admin_index" */))
const _aa2a23e4 = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages_blog" */))
const _6e44f964 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _05bf49c4 = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _145fb32d = () => interopDefault(import('..\\pages\\login.vue' /* webpackChunkName: "pages_login" */))
const _bbfaf2ec = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _0fc6f102 = () => interopDefault(import('..\\pages\\package-details.vue' /* webpackChunkName: "pages_package-details" */))
const _1de237d2 = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _6a287e10 = () => interopDefault(import('..\\pages\\admin\\addPackage.vue' /* webpackChunkName: "pages_admin_addPackage" */))
const _41772a44 = () => interopDefault(import('..\\pages\\admin\\viewPackage.vue' /* webpackChunkName: "pages_admin_viewPackage" */))
const _4ab81016 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: decodeURI('/'),
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
      path: "/admin",
      component: _f0ee75e2,
      name: "admin"
    }, {
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
      path: "/login",
      component: _145fb32d,
      name: "login"
    }, {
      path: "/package",
      component: _bbfaf2ec,
      name: "package"
    }, {
      path: "/package-details",
      component: _0fc6f102,
      name: "package-details"
    }, {
      path: "/stories",
      component: _1de237d2,
      name: "stories"
    }, {
      path: "/admin/addPackage",
      component: _6a287e10,
      name: "admin-addPackage"
    }, {
      path: "/admin/viewPackage",
      component: _41772a44,
      name: "admin-viewPackage"
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
