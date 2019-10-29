import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _4f29f8a3 = () => interopDefault(import('..\\pages\\admin\\index.vue' /* webpackChunkName: "pages_admin_index" */))
const _63f2f5a2 = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages_blog" */))
const _88a24d60 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _4a8a3b0a = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _21273314 = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _184dbb6b = () => interopDefault(import('..\\pages\\package-details.vue' /* webpackChunkName: "pages_package-details" */))
const _01cc096d = () => interopDefault(import('..\\pages\\packages.vue' /* webpackChunkName: "pages_packages" */))
const _3e78c403 = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _74127f52 = () => interopDefault(import('..\\pages\\account\\bookings.vue' /* webpackChunkName: "pages_account_bookings" */))
const _aa1bcde2 = () => interopDefault(import('..\\pages\\account\\my-stories.vue' /* webpackChunkName: "pages_account_my-stories" */))
const _5926f8c8 = () => interopDefault(import('..\\pages\\account\\profile.vue' /* webpackChunkName: "pages_account_profile" */))
const _58315250 = () => interopDefault(import('..\\pages\\account\\saved-packages.vue' /* webpackChunkName: "pages_account_saved-packages" */))
const _8eab6418 = () => interopDefault(import('..\\pages\\admin\\add-admin.vue' /* webpackChunkName: "pages_admin_add-admin" */))
const _853a77e6 = () => interopDefault(import('..\\pages\\admin\\add-blog.vue' /* webpackChunkName: "pages_admin_add-blog" */))
const _dfd1bd54 = () => interopDefault(import('..\\pages\\admin\\add-city.vue' /* webpackChunkName: "pages_admin_add-city" */))
const _6d1b07aa = () => interopDefault(import('..\\pages\\admin\\add-package.vue' /* webpackChunkName: "pages_admin_add-package" */))
const _187ed9b8 = () => interopDefault(import('..\\pages\\admin\\add-stories.vue' /* webpackChunkName: "pages_admin_add-stories" */))
const _126744e5 = () => interopDefault(import('..\\pages\\admin\\dashboard.vue' /* webpackChunkName: "pages_admin_dashboard" */))
const _b8110130 = () => interopDefault(import('..\\pages\\admin\\view-blogs.vue' /* webpackChunkName: "pages_admin_view-blogs" */))
const _1f4a3433 = () => interopDefault(import('..\\pages\\admin\\view-bookings.vue' /* webpackChunkName: "pages_admin_view-bookings" */))
const _7ab4bd2c = () => interopDefault(import('..\\pages\\admin\\view-customers.vue' /* webpackChunkName: "pages_admin_view-customers" */))
const _37948378 = () => interopDefault(import('..\\pages\\admin\\view-enquiries.vue' /* webpackChunkName: "pages_admin_view-enquiries" */))
const _3e4f7466 = () => interopDefault(import('..\\pages\\admin\\view-packages.vue' /* webpackChunkName: "pages_admin_view-packages" */))
const _6660d42c = () => interopDefault(import('..\\pages\\admin\\view-stories.vue' /* webpackChunkName: "pages_admin_view-stories" */))
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
      path: "/package",
      component: _21273314,
      name: "package"
    }, {
      path: "/package-details",
      component: _184dbb6b,
      name: "package-details"
    }, {
      path: "/packages",
      component: _01cc096d,
      name: "packages"
    }, {
      path: "/stories",
      component: _3e78c403,
      name: "stories"
    }, {
      path: "/account/bookings",
      component: _74127f52,
      name: "account-bookings"
    }, {
      path: "/account/my-stories",
      component: _aa1bcde2,
      name: "account-my-stories"
    }, {
      path: "/account/profile",
      component: _5926f8c8,
      name: "account-profile"
    }, {
      path: "/account/saved-packages",
      component: _58315250,
      name: "account-saved-packages"
    }, {
      path: "/admin/add-admin",
      component: _8eab6418,
      name: "admin-add-admin"
    }, {
      path: "/admin/add-blog",
      component: _853a77e6,
      name: "admin-add-blog"
    }, {
      path: "/admin/add-city",
      component: _dfd1bd54,
      name: "admin-add-city"
    }, {
      path: "/admin/add-package",
      component: _6d1b07aa,
      name: "admin-add-package"
    }, {
      path: "/admin/add-stories",
      component: _187ed9b8,
      name: "admin-add-stories"
    }, {
      path: "/admin/dashboard",
      component: _126744e5,
      name: "admin-dashboard"
    }, {
      path: "/admin/view-blogs",
      component: _b8110130,
      name: "admin-view-blogs"
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
      path: "/admin/view-stories",
      component: _6660d42c,
      name: "admin-view-stories"
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
