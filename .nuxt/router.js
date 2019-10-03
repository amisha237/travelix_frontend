import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _4f29f8a3 = () => interopDefault(import('..\\pages\\admin\\index.vue' /* webpackChunkName: "pages_admin_index" */))
const _63f2f5a2 = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages_blog" */))
const _88a24d60 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _4a8a3b0a = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _7c589e19 = () => interopDefault(import('..\\pages\\login.vue' /* webpackChunkName: "pages_login" */))
const _21273314 = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _184dbb6b = () => interopDefault(import('..\\pages\\package-details.vue' /* webpackChunkName: "pages_package-details" */))
const _3e78c403 = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _6d1b07aa = () => interopDefault(import('..\\pages\\admin\\add-package.vue' /* webpackChunkName: "pages_admin_add-package" */))
const _1f4a3433 = () => interopDefault(import('..\\pages\\admin\\view-bookings.vue' /* webpackChunkName: "pages_admin_view-bookings" */))
const _7ab4bd2c = () => interopDefault(import('..\\pages\\admin\\view-customers.vue' /* webpackChunkName: "pages_admin_view-customers" */))
const _37948378 = () => interopDefault(import('..\\pages\\admin\\view-enquiries.vue' /* webpackChunkName: "pages_admin_view-enquiries" */))
const _3e4f7466 = () => interopDefault(import('..\\pages\\admin\\view-packages.vue' /* webpackChunkName: "pages_admin_view-packages" */))
const _e6acf9bc = () => interopDefault(import('..\\pages\\admin\\view-subscribers.vue' /* webpackChunkName: "pages_admin_view-subscribers" */))
const _7dfaf4df = () => interopDefault(import('..\\pages\\admin\\view-users.vue' /* webpackChunkName: "pages_admin_view-users" */))
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
      path: "/blog",
      component: _63f2f5a2,
      name: "blog"
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
      path: "/admin/add-package",
      component: _6d1b07aa,
      name: "admin-add-package"
    }, {
      path: "/admin/view-bookings",
      component: _1f4a3433,
      name: "admin-view-bookings"
    }, {
      path: "/admin/view-customers",
      component: _7ab4bd2c,
      name: "admin-view-customers"
    }, {
      path: "/admin/view-enquiries",
      component: _37948378,
      name: "admin-view-enquiries"
    }, {
      path: "/admin/view-packages",
      component: _3e4f7466,
      name: "admin-view-packages"
    }, {
      path: "/admin/view-subscribers",
      component: _e6acf9bc,
      name: "admin-view-subscribers"
    }, {
      path: "/admin/view-users",
      component: _7dfaf4df,
      name: "admin-view-users"
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
