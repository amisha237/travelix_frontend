import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _172e437c = () => interopDefault(import('..\\pages\\admin\\index.vue' /* webpackChunkName: "pages_admin_index" */))
const _de4fad0a = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages_blog" */))
const _403b6ad7 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _61d266de = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _73f8f7fd = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _0ed1a8c6 = () => interopDefault(import('..\\pages\\packages.vue' /* webpackChunkName: "pages_packages" */))
const _79f554ec = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _195c551e = () => interopDefault(import('..\\pages\\account\\bookings.vue' /* webpackChunkName: "pages_account_bookings" */))
const _8974cfd4 = () => interopDefault(import('..\\pages\\account\\my-stories.vue' /* webpackChunkName: "pages_account_my-stories" */))
const _182db9f5 = () => interopDefault(import('..\\pages\\account\\profile.vue' /* webpackChunkName: "pages_account_profile" */))
const _050ff5d7 = () => interopDefault(import('..\\pages\\account\\saved-packages.vue' /* webpackChunkName: "pages_account_saved-packages" */))
const _0528f766 = () => interopDefault(import('..\\pages\\admin\\add-admin.vue' /* webpackChunkName: "pages_admin_add-admin" */))
const _2e3642d8 = () => interopDefault(import('..\\pages\\admin\\add-blog.vue' /* webpackChunkName: "pages_admin_add-blog" */))
const _88cd8846 = () => interopDefault(import('..\\pages\\admin\\add-city.vue' /* webpackChunkName: "pages_admin_add-city" */))
const _3a80ff78 = () => interopDefault(import('..\\pages\\admin\\add-package.vue' /* webpackChunkName: "pages_admin_add-package" */))
const _31cbddd1 = () => interopDefault(import('..\\pages\\admin\\add-stories.vue' /* webpackChunkName: "pages_admin_add-stories" */))
const _57287b3e = () => interopDefault(import('..\\pages\\admin\\dashboard.vue' /* webpackChunkName: "pages_admin_dashboard" */))
const _1145d7a2 = () => interopDefault(import('..\\pages\\admin\\view-blogs.vue' /* webpackChunkName: "pages_admin_view-blogs" */))
const _1966960c = () => interopDefault(import('..\\pages\\admin\\view-bookings.vue' /* webpackChunkName: "pages_admin_view-bookings" */))
const _77b6d31a = () => interopDefault(import('..\\pages\\admin\\view-customers.vue' /* webpackChunkName: "pages_admin_view-customers" */))
const _fdf74682 = () => interopDefault(import('..\\pages\\admin\\view-enquiries.vue' /* webpackChunkName: "pages_admin_view-enquiries" */))
const _386bd63f = () => interopDefault(import('..\\pages\\admin\\view-packages.vue' /* webpackChunkName: "pages_admin_view-packages" */))
const _45b9d61e = () => interopDefault(import('..\\pages\\admin\\view-stories.vue' /* webpackChunkName: "pages_admin_view-stories" */))
const _398826a9 = () => interopDefault(import('..\\pages\\admin\\view-subscribers.vue' /* webpackChunkName: "pages_admin_view-subscribers" */))
const _5d3eecb4 = () => interopDefault(import('..\\pages\\admin\\view-users.vue' /* webpackChunkName: "pages_admin_view-users" */))
const _6e9f1eda = () => interopDefault(import('..\\pages\\booking\\_id.vue' /* webpackChunkName: "pages_booking__id" */))
const _4f08991e = () => interopDefault(import('..\\pages\\packagesDetails\\_id.vue' /* webpackChunkName: "pages_packagesDetails__id" */))
const _22724249 = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: decodeURI('/'),
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
      path: "/admin",
      component: _172e437c,
      name: "admin"
    }, {
      path: "/blog",
      component: _de4fad0a,
      name: "blog"
    }, {
      path: "/contact",
      component: _403b6ad7,
      name: "contact"
    }, {
      path: "/inspire",
      component: _61d266de,
      name: "inspire"
    }, {
      path: "/package",
      component: _73f8f7fd,
      name: "package"
    }, {
      path: "/packages",
      component: _0ed1a8c6,
      name: "packages"
    }, {
      path: "/stories",
      component: _79f554ec,
      name: "stories"
    }, {
      path: "/account/bookings",
      component: _195c551e,
      name: "account-bookings"
    }, {
      path: "/account/my-stories",
      component: _8974cfd4,
      name: "account-my-stories"
    }, {
      path: "/account/profile",
      component: _182db9f5,
      name: "account-profile"
    }, {
      path: "/account/saved-packages",
      component: _050ff5d7,
      name: "account-saved-packages"
    }, {
      path: "/admin/add-admin",
      component: _0528f766,
      name: "admin-add-admin"
    }, {
      path: "/admin/add-blog",
      component: _2e3642d8,
      name: "admin-add-blog"
    }, {
      path: "/admin/add-city",
      component: _88cd8846,
      name: "admin-add-city"
    }, {
      path: "/admin/add-package",
      component: _3a80ff78,
      name: "admin-add-package"
    }, {
      path: "/admin/add-stories",
      component: _31cbddd1,
      name: "admin-add-stories"
    }, {
      path: "/admin/dashboard",
      component: _57287b3e,
      name: "admin-dashboard"
    }, {
      path: "/admin/view-blogs",
      component: _1145d7a2,
      name: "admin-view-blogs"
    }, {
      path: "/admin/view-bookings",
      component: _1966960c,
      name: "admin-view-bookings"
    }, {
      path: "/admin/view-customers",
      component: _77b6d31a,
      name: "admin-view-customers"
    }, {
      path: "/admin/view-enquiries",
      component: _fdf74682,
      name: "admin-view-enquiries"
    }, {
      path: "/admin/view-packages",
      component: _386bd63f,
      name: "admin-view-packages"
    }, {
      path: "/admin/view-stories",
      component: _45b9d61e,
      name: "admin-view-stories"
    }, {
      path: "/admin/view-subscribers",
      component: _398826a9,
      name: "admin-view-subscribers"
    }, {
      path: "/admin/view-users",
      component: _5d3eecb4,
      name: "admin-view-users"
    }, {
      path: "/booking/:id?",
      component: _6e9f1eda,
      name: "booking-id"
    }, {
      path: "/packagesDetails/:id?",
      component: _4f08991e,
      name: "packagesDetails-id"
    }, {
      path: "/",
      component: _22724249,
      name: "index"
    }],

  fallback: false
}

export function createRouter() {
  return new Router(routerOptions)
}
