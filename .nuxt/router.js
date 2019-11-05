import Vue from 'vue'
import Router from 'vue-router'
import { interopDefault } from './utils'
import scrollBehavior from './router.scrollBehavior.js'

const _2bc1ab6a = () => interopDefault(import('..\\pages\\admin\\index.vue' /* webpackChunkName: "pages_admin_index" */))
const _2c684f4a = () => interopDefault(import('..\\pages\\blog.vue' /* webpackChunkName: "pages_blog" */))
const _4bdb3ea8 = () => interopDefault(import('..\\pages\\contact.vue' /* webpackChunkName: "pages_contact" */))
const _4a92bf3c = () => interopDefault(import('..\\pages\\inspire.vue' /* webpackChunkName: "pages_inspire" */))
const _7f98cbce = () => interopDefault(import('..\\pages\\package.vue' /* webpackChunkName: "pages_package" */))
const _772c4f15 = () => interopDefault(import('..\\pages\\packages.vue' /* webpackChunkName: "pages_packages" */))
const _62b5ad4a = () => interopDefault(import('..\\pages\\stories.vue' /* webpackChunkName: "pages_stories" */))
const _784657af = () => interopDefault(import('..\\pages\\account\\bookings.vue' /* webpackChunkName: "pages_account_bookings" */))
const _07b93a67 = () => interopDefault(import('..\\pages\\account\\my-stories.vue' /* webpackChunkName: "pages_account_my-stories" */))
const _b0bebd78 = () => interopDefault(import('..\\pages\\account\\profile.vue' /* webpackChunkName: "pages_account_profile" */))
const _614ff0b0 = () => interopDefault(import('..\\pages\\account\\saved-packages.vue' /* webpackChunkName: "pages_account_saved-packages" */))
const _e64328c8 = () => interopDefault(import('..\\pages\\admin\\add-admin.vue' /* webpackChunkName: "pages_admin_add-admin" */))
const _58e05165 = () => interopDefault(import('..\\pages\\admin\\add-blog.vue' /* webpackChunkName: "pages_admin_add-blog" */))
const _2b94aeae = () => interopDefault(import('..\\pages\\admin\\add-city.vue' /* webpackChunkName: "pages_admin_add-city" */))
const _6115cfd3 = () => interopDefault(import('..\\pages\\admin\\add-package.vue' /* webpackChunkName: "pages_admin_add-package" */))
const _9fbba540 = () => interopDefault(import('..\\pages\\admin\\add-stories.vue' /* webpackChunkName: "pages_admin_add-stories" */))
const _32c93ae6 = () => interopDefault(import('..\\pages\\admin\\dashboard.vue' /* webpackChunkName: "pages_admin_dashboard" */))
const _564716c0 = () => interopDefault(import('..\\pages\\admin\\view-blogs.vue' /* webpackChunkName: "pages_admin_view-blogs" */))
const _5b673ddb = () => interopDefault(import('..\\pages\\admin\\view-bookings.vue' /* webpackChunkName: "pages_admin_view-bookings" */))
const _7b8e2ef8 = () => interopDefault(import('..\\pages\\admin\\view-customers.vue' /* webpackChunkName: "pages_admin_view-customers" */))
const _7f18aed0 = () => interopDefault(import('..\\pages\\admin\\view-enquiries.vue' /* webpackChunkName: "pages_admin_view-enquiries" */))
const _7a6c7e0e = () => interopDefault(import('..\\pages\\admin\\view-packages.vue' /* webpackChunkName: "pages_admin_view-packages" */))
const _2996b742 = () => interopDefault(import('..\\pages\\admin\\view-stories.vue' /* webpackChunkName: "pages_admin_view-stories" */))
const _03d0387a = () => interopDefault(import('..\\pages\\admin\\view-subscribers.vue' /* webpackChunkName: "pages_admin_view-subscribers" */))
const _304a8c37 = () => interopDefault(import('..\\pages\\admin\\view-users.vue' /* webpackChunkName: "pages_admin_view-users" */))
const _419005a9 = () => interopDefault(import('..\\pages\\booking\\_id.vue' /* webpackChunkName: "pages_booking__id" */))
const _dded7e26 = () => interopDefault(import('..\\pages\\packagesDetails\\_id.vue' /* webpackChunkName: "pages_packagesDetails__id" */))
const _0e32534c = () => interopDefault(import('..\\pages\\index.vue' /* webpackChunkName: "pages_index" */))

Vue.use(Router)

export const routerOptions = {
  mode: 'history',
  base: decodeURI('/'),
  linkActiveClass: 'nuxt-link-active',
  linkExactActiveClass: 'nuxt-link-exact-active',
  scrollBehavior,

  routes: [{
      path: "/admin",
      component: _2bc1ab6a,
      name: "admin"
    }, {
      path: "/blog",
      component: _2c684f4a,
      name: "blog"
    }, {
      path: "/contact",
      component: _4bdb3ea8,
      name: "contact"
    }, {
      path: "/inspire",
      component: _4a92bf3c,
      name: "inspire"
    }, {
      path: "/package",
      component: _7f98cbce,
      name: "package"
    }, {
      path: "/packages",
      component: _772c4f15,
      name: "packages"
    }, {
      path: "/stories",
      component: _62b5ad4a,
      name: "stories"
    }, {
      path: "/account/bookings",
      component: _784657af,
      name: "account-bookings"
    }, {
      path: "/account/my-stories",
      component: _07b93a67,
      name: "account-my-stories"
    }, {
      path: "/account/profile",
      component: _b0bebd78,
      name: "account-profile"
    }, {
      path: "/account/saved-packages",
      component: _614ff0b0,
      name: "account-saved-packages"
    }, {
      path: "/admin/add-admin",
      component: _e64328c8,
      name: "admin-add-admin"
    }, {
      path: "/admin/add-blog",
      component: _58e05165,
      name: "admin-add-blog"
    }, {
      path: "/admin/add-city",
      component: _2b94aeae,
      name: "admin-add-city"
    }, {
      path: "/admin/add-package",
      component: _6115cfd3,
      name: "admin-add-package"
    }, {
      path: "/admin/add-stories",
      component: _9fbba540,
      name: "admin-add-stories"
    }, {
      path: "/admin/dashboard",
      component: _32c93ae6,
      name: "admin-dashboard"
    }, {
      path: "/admin/view-blogs",
      component: _564716c0,
      name: "admin-view-blogs"
    }, {
      path: "/admin/view-bookings",
      component: _5b673ddb,
      name: "admin-view-bookings"
    }, {
      path: "/admin/view-customers",
      component: _7b8e2ef8,
      name: "admin-view-customers"
    }, {
      path: "/admin/view-enquiries",
      component: _7f18aed0,
      name: "admin-view-enquiries"
    }, {
      path: "/admin/view-packages",
      component: _7a6c7e0e,
      name: "admin-view-packages"
    }, {
      path: "/admin/view-stories",
      component: _2996b742,
      name: "admin-view-stories"
    }, {
      path: "/admin/view-subscribers",
      component: _03d0387a,
      name: "admin-view-subscribers"
    }, {
      path: "/admin/view-users",
      component: _304a8c37,
      name: "admin-view-users"
    }, {
      path: "/booking/:id?",
      component: _419005a9,
      name: "booking-id"
    }, {
      path: "/packagesDetails/:id?",
      component: _dded7e26,
      name: "packagesDetails-id"
    }, {
      path: "/",
      component: _0e32534c,
      name: "index"
    }],

  fallback: false
}

export function createRouter() {
  return new Router(routerOptions)
}
