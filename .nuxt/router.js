import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _3dfabeb2 = () => interopDefault(import('..\\pages\\admin\\index.vue' /* webpackChunkName: "pages_admin_index" */))
const _2065e1a6 = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages_blog" */))
const _85738268 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _4c21a086 = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _4e433295 = () => interopDefault(import('..\\pages\\login.vue' /* webpackChunkName: "pages_login" */))
const _1df8681c = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _63d5e4e7 = () => interopDefault(import('..\\pages\\package-details.vue' /* webpackChunkName: "pages_package-details" */))
const _4010297f = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _f873dda2 = () => interopDefault(import('..\\pages\\admin\\add-package.vue' /* webpackChunkName: "pages_admin_add-package" */))
const _d9e6cf92 = () => interopDefault(import('..\\pages\\admin\\view-bookings.vue' /* webpackChunkName: "pages_admin_view-bookings" */))
const _7f3ed9a8 = () => interopDefault(import('..\\pages\\admin\\view-customers.vue' /* webpackChunkName: "pages_admin_view-customers" */))
const _3c1e9ff4 = () => interopDefault(import('..\\pages\\admin\\view-enquiries.vue' /* webpackChunkName: "pages_admin_view-enquiries" */))
const _9bdc4f2c = () => interopDefault(import('..\\pages\\admin\\view-packages.vue' /* webpackChunkName: "pages_admin_view-packages" */))
const _d1c31ec4 = () => interopDefault(import('..\\pages\\admin\\view-subscribers.vue' /* webpackChunkName: "pages_admin_view-subscribers" */))
const _081eaf5b = () => interopDefault(import('..\\pages\\admin\\view-users.vue' /* webpackChunkName: "pages_admin_view-users" */))
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
      path: "/admin/add-package",
      component: _f873dda2,
      name: "admin-add-package"
    }, {
      path: "/admin/view-bookings",
      component: _d9e6cf92,
      name: "admin-view-bookings"
    }, {
      path: "/admin/view-customers",
      component: _7f3ed9a8,
      name: "admin-view-customers"
    }, {
      path: "/admin/view-enquiries",
      component: _3c1e9ff4,
      name: "admin-view-enquiries"
    }, {
      path: "/admin/view-packages",
      component: _9bdc4f2c,
      name: "admin-view-packages"
    }, {
      path: "/admin/view-subscribers",
      component: _d1c31ec4,
      name: "admin-view-subscribers"
    }, {
      path: "/admin/view-users",
      component: _081eaf5b,
      name: "admin-view-users"
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
