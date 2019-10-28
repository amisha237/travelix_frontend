import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _f0ee75e2 = () => interopDefault(import('..\\pages\\admin\\index.vue' /* webpackChunkName: "pages_admin_index" */))
const _aa2a23e4 = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages_blog" */))
const _6e44f964 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _05bf49c4 = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _bbfaf2ec = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _0fc6f102 = () => interopDefault(import('..\\pages\\package-details.vue' /* webpackChunkName: "pages_package-details" */))
const _bc0c284e = () => interopDefault(import('..\\pages\\packages.vue' /* webpackChunkName: "pages_packages" */))
const _1de237d2 = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _5a95f740 = () => interopDefault(import('..\\pages\\admin\\add-admin.vue' /* webpackChunkName: "pages_admin_add-admin" */))
const _c59cdfbe = () => interopDefault(import('..\\pages\\admin\\add-blog.vue' /* webpackChunkName: "pages_admin_add-blog" */))
const _6fe5ed6a = () => interopDefault(import('..\\pages\\admin\\add-city.vue' /* webpackChunkName: "pages_admin_add-city" */))
const _e8ad70d2 = () => interopDefault(import('..\\pages\\admin\\add-package.vue' /* webpackChunkName: "pages_admin_add-package" */))
const _4a94b5b8 = () => interopDefault(import('..\\pages\\admin\\add-stories.vue' /* webpackChunkName: "pages_admin_add-stories" */))
const _2c71fb51 = () => interopDefault(import('..\\pages\\admin\\dashboard.vue' /* webpackChunkName: "pages_admin_dashboard" */))
const _6978d308 = () => interopDefault(import('..\\pages\\admin\\view-blogs.vue' /* webpackChunkName: "pages_admin_view-blogs" */))
const _2efbd49f = () => interopDefault(import('..\\pages\\admin\\view-bookings.vue' /* webpackChunkName: "pages_admin_view-bookings" */))
const _61372a40 = () => interopDefault(import('..\\pages\\admin\\view-customers.vue' /* webpackChunkName: "pages_admin_view-customers" */))
const _1e16f08c = () => interopDefault(import('..\\pages\\admin\\view-enquiries.vue' /* webpackChunkName: "pages_admin_view-enquiries" */))
const _4e0114d2 = () => interopDefault(import('..\\pages\\admin\\view-packages.vue' /* webpackChunkName: "pages_admin_view-packages" */))
const _517237fe = () => interopDefault(import('..\\pages\\admin\\view-stories.vue' /* webpackChunkName: "pages_admin_view-stories" */))
const _47760994 = () => interopDefault(import('..\\pages\\admin\\view-subscribers.vue' /* webpackChunkName: "pages_admin_view-subscribers" */))
const _b571e81a = () => interopDefault(import('..\\pages\\admin\\view-users.vue' /* webpackChunkName: "pages_admin_view-users" */))
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
      path: "/package",
      component: _bbfaf2ec,
      name: "package"
    }, {
      path: "/package-details",
      component: _0fc6f102,
      name: "package-details"
    }, {
      path: "/packages",
      component: _bc0c284e,
      name: "packages"
    }, {
      path: "/stories",
      component: _1de237d2,
      name: "stories"
    }, {
      path: "/admin/add-admin",
      component: _5a95f740,
      name: "admin-add-admin"
    }, {
      path: "/admin/add-blog",
      component: _c59cdfbe,
      name: "admin-add-blog"
    }, {
      path: "/admin/add-city",
      component: _6fe5ed6a,
      name: "admin-add-city"
    }, {
      path: "/admin/add-package",
      component: _e8ad70d2,
      name: "admin-add-package"
    }, {
      path: "/admin/add-stories",
      component: _4a94b5b8,
      name: "admin-add-stories"
    }, {
      path: "/admin/dashboard",
      component: _2c71fb51,
      name: "admin-dashboard"
    }, {
      path: "/admin/view-blogs",
      component: _6978d308,
      name: "admin-view-blogs"
    }, {
      path: "/admin/view-bookings",
      component: _2efbd49f,
      name: "admin-view-bookings"
    }, {
      path: "/admin/view-customers",
      component: _61372a40,
      name: "admin-view-customers"
    }, {
      path: "/admin/view-enquiries",
      component: _1e16f08c,
      name: "admin-view-enquiries"
    }, {
      path: "/admin/view-packages",
      component: _4e0114d2,
      name: "admin-view-packages"
    }, {
      path: "/admin/view-stories",
      component: _517237fe,
      name: "admin-view-stories"
    }, {
      path: "/admin/view-subscribers",
      component: _47760994,
      name: "admin-view-subscribers"
    }, {
      path: "/admin/view-users",
      component: _b571e81a,
      name: "admin-view-users"
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
