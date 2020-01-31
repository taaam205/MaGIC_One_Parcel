require("./bootstrap");

window.Vue = require("vue");
import router from "./routes";

// Sweet Alert 2
import Swal from "sweetalert2";
window.Swal = Swal;
const Toast = Swal.mixin({
    toast: true,
    position: "top-end",
    showConfirmButton: false,
    timer: 3000,
    timerProgressBar: true,
    onOpen: toast => {
        toast.addEventListener("mouseenter", Swal.stopTimer);
        toast.addEventListener("mouseleave", Swal.resumeTimer);
    }
});
window.Toast = Toast;
// Sweet Alert 2

import { ValidationProvider, ValidationObserver, extend } from "vee-validate";
import * as rules from "vee-validate/dist/rules";

// My Custom Validation with Error Message
extend("required", {
    validate: value => {
        if (value > 0) {
            return true;
        }
    },
    message: "{_field_} field is required"
});

// install Vee-Validate rules and localization
Object.keys(rules).forEach(rule => {
    extend(rule, rules[rule]);
});

// Install Vee-Validate components globally
Vue.component("ValidationObserver", ValidationObserver);
Vue.component("ValidationProvider", ValidationProvider);

import AdminDashboard from "./components/Admin/Dashboard.vue";
import AdminUsers from "./components/Admin/Users.vue";

Vue.component("pagination", require("laravel-vue-pagination"));

const app = new Vue({
    el: "#app",
    router,
    components: {
        vueadmindashboard: AdminDashboard,
        adminusers: AdminUsers
    }
});
