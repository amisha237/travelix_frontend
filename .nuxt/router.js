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
const _2434f665 = () => interopDefault(import('..\\pages\\admin\\add-admin.vue' /* webpackChunkName: "pages_admin_add-admin" */))
const _7cf4cc5c = () => interopDefault(import('..\\pages\\admin\\add-package.vue' /* webpackChunkName: "pages_admin_add-package" */))
const _090d87b8 = () => interopDefault(import('..\\pages\\admin\\view-bookings.vue' /* webpackChunkName: "pages_admin_view-bookings" */))
const _2466b35b = () => interopDefault(import('..\\pages\\admin\\view-customers.vue' /* webpackChunkName: "pages_admin_view-customers" */))
const _3d730cb2 = () => interopDefault(import('..\\pages\\admin\\view-enquiries.vue' /* webpackChunkName: "pages_admin_view-enquiries" */))
const _1a7e7c57 = () => interopDefault(import('..\\pages\\admin\\view-packages.vue' /* webpackChunkName: "pages_admin_view-packages" */))
const _ecd1684e = () => interopDefault(import('..\\pages\\admin\\view-stories.vue' /* webpackChunkName: "pages_admin_view-stories" */))
const _dc92acde = () => interopDefault(import('..\\pages\\admin\\view-subscribers.vue' /* webpackChunkName: "pages_admin_view-subscribers" */))
const _f8754ae4 = () => interopDefault(import('..\\pages\\admin\\view-users.vue' /* webpackChunkName: "pages_admin_view-users" */))
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
      path: "/admin/add-admin",
      component: _2434f665,
      name: "admin-add-admin"
    }, {
      path: "/admin/add-package",
      component: _7cf4cc5c,
      name: "admin-add-package"
    }, {
      path: "/admin/view-bookings",
      component: _090d87b8,
      name: "admin-view-bookings"
    }, {
      path: "/admin/view-customers",
      component: _2466b35b,
      name: "admin-view-customers"
    }, {
      path: "/admin/view-enquiries",
      component: _3d730cb2,
      name: "admin-view-enquiries"
    }, {
      path: "/admin/view-packages",
      component: _1a7e7c57,
      name: "admin-view-packages"
    }, {
      path: "/admin/view-stories",
      component: _ecd1684e,
      name: "admin-view-stories"
    }, {
      path: "/admin/view-subscribers",
      component: _dc92acde,
      name: "admin-view-subscribers"
    }, {
      path: "/admin/view-users",
      component: _f8754ae4,
      name: "admin-view-users"
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
