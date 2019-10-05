import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _02abb03c = () => interopDefault(import('..\\pages\\admin\\index.vue' /* webpackChunkName: "pages_admin_index" */))
const _0459d3e1 = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages_blog" */))
const _42e0429e = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _6d6b406b = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _124d6bd7 = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _4e47cfcc = () => interopDefault(import('..\\pages\\package-details.vue' /* webpackChunkName: "pages_package-details" */))
const _6159c964 = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _41f2c5b3 = () => interopDefault(import('..\\pages\\admin\\add-admin.vue' /* webpackChunkName: "pages_admin_add-admin" */))
const _19464f24 = () => interopDefault(import('..\\pages\\admin\\add-blog.vue' /* webpackChunkName: "pages_admin_add-blog" */))
const _227c002a = () => interopDefault(import('..\\pages\\admin\\add-package.vue' /* webpackChunkName: "pages_admin_add-package" */))
const _5c02b472 = () => interopDefault(import('..\\pages\\admin\\view-bookings.vue' /* webpackChunkName: "pages_admin_view-bookings" */))
const _55e77666 = () => interopDefault(import('..\\pages\\admin\\view-customers.vue' /* webpackChunkName: "pages_admin_view-customers" */))
const _dc27e9ce = () => interopDefault(import('..\\pages\\admin\\view-enquiries.vue' /* webpackChunkName: "pages_admin_view-enquiries" */))
const _7b07f4a5 = () => interopDefault(import('..\\pages\\admin\\view-packages.vue' /* webpackChunkName: "pages_admin_view-packages" */))
const _d612dc6a = () => interopDefault(import('..\\pages\\admin\\view-stories.vue' /* webpackChunkName: "pages_admin_view-stories" */))
const _a184b2fa = () => interopDefault(import('..\\pages\\admin\\view-subscribers.vue' /* webpackChunkName: "pages_admin_view-subscribers" */))
const _1dc17500 = () => interopDefault(import('..\\pages\\admin\\view-users.vue' /* webpackChunkName: "pages_admin_view-users" */))
const _1f25e4a3 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: decodeURI('/'),
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
      path: "/admin",
      component: _02abb03c,
      name: "admin"
    }, {
      path: "/blog",
      component: _0459d3e1,
      name: "blog"
    }, {
      path: "/contact",
      component: _42e0429e,
      name: "contact"
    }, {
      path: "/inspire",
      component: _6d6b406b,
      name: "inspire"
    }, {
      path: "/package",
      component: _124d6bd7,
      name: "package"
    }, {
      path: "/package-details",
      component: _4e47cfcc,
      name: "package-details"
    }, {
      path: "/stories",
      component: _6159c964,
      name: "stories"
    }, {
      path: "/admin/add-admin",
      component: _41f2c5b3,
      name: "admin-add-admin"
    }, {
      path: "/admin/add-blog",
      component: _19464f24,
      name: "admin-add-blog"
    }, {
      path: "/admin/add-package",
      component: _227c002a,
      name: "admin-add-package"
    }, {
      path: "/admin/view-bookings",
      component: _5c02b472,
      name: "admin-view-bookings"
    }, {
      path: "/admin/view-customers",
      component: _55e77666,
      name: "admin-view-customers"
    }, {
      path: "/admin/view-enquiries",
      component: _dc27e9ce,
      name: "admin-view-enquiries"
    }, {
      path: "/admin/view-packages",
      component: _7b07f4a5,
      name: "admin-view-packages"
    }, {
      path: "/admin/view-stories",
      component: _d612dc6a,
      name: "admin-view-stories"
    }, {
      path: "/admin/view-subscribers",
      component: _a184b2fa,
      name: "admin-view-subscribers"
    }, {
      path: "/admin/view-users",
      component: _1dc17500,
      name: "admin-view-users"
    }, {
      path: "/",
      component: _1f25e4a3,
      name: "index"
    }],

  fallback: false
}

export function createRouter() {
  return new Router(routerOptions)
}
