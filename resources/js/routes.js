import Vue from "vue";
import Router from "vue-router";

import AdminDashboard from "./components/Admin/Dashboard.vue";
import AdminUsers from "./components/Admin/Users.vue";
import AdminRoles from "./components/Admin/Roles.vue";
import AdminStaffs from "./components/Admin/Staffs.vue";
import AdminEmail from "./components/Admin/Email.vue";

Vue.use(Router);

let router = new Router({
    mode: "history",
    routes: [
        {
            path: "/admin",
            component: AdminDashboard,
            name: "adminDashboard"
        },
        {
            path: "/admin/users",
            component: AdminUsers,
            name: "adminUsers",
            props: true
        },
        {
            path: "/admin/roles",
            component: AdminRoles,
            name: "adminRoles"
        },
        {
            path: "/admin/staffs",
            component: AdminStaffs,
            name: "adminStaffs"
        },
        {
            path: "/admin/email",
            component: AdminEmail,
            name: "AdminEmail"
        }
    ]
});

export default router;
