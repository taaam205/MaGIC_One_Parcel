<template>
    <div>
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Users</h3>
                <div class="card-tools">
                    <button
                        type="button"
                        class="btn btn-success"
                        data-toggle="modal"
                        data-target="#addNewUser"
                    >
                        Add New
                        <i class="fas fa-user-plus fa-fw"></i>
                    </button>
                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <div
                    id="example1_wrapper"
                    class="dataTables_wrapper dt-bootstrap4"
                >
                    <div class="row">
                        <div class="col-sm-12 table-responsive-sm">
                            <table
                                id="example1"
                                class="table table-bordered table-striped dataTable"
                                role="grid"
                                aria-describedby="example1_info"
                            >
                                <thead>
                                    <tr role="row">
                                        <th
                                            class="sorting_asc"
                                            tabindex="0"
                                            aria-controls="example1"
                                            rowspan="1"
                                            colspan="1"
                                            aria-sort="ascending"
                                            aria-label="ID: activate to sort column descending"
                                            style="width: 105px;"
                                        >
                                            ID
                                        </th>
                                        <th
                                            class="sorting"
                                            tabindex="0"
                                            aria-controls="example1"
                                            rowspan="1"
                                            colspan="1"
                                            aria-label="Name: activate to sort column ascending"
                                            style="width: 130px;"
                                        >
                                            Name
                                        </th>
                                        <th
                                            class="sorting"
                                            tabindex="0"
                                            aria-controls="example1"
                                            rowspan="1"
                                            colspan="1"
                                            aria-label="Email: activate to sort column ascending"
                                            style="width: 113px;"
                                        >
                                            Email
                                        </th>
                                        <th
                                            class="sorting"
                                            tabindex="0"
                                            aria-controls="example1"
                                            rowspan="1"
                                            colspan="1"
                                            aria-label="Roles: activate to sort column ascending"
                                            style="width: 86px;"
                                        >
                                            Roles
                                        </th>
                                        <th
                                            class="sorting"
                                            tabindex="0"
                                            aria-controls="example1"
                                            rowspan="1"
                                            colspan="1"
                                            aria-label="Image: activate to sort column ascending"
                                            style="width: 57px;"
                                        >
                                            Modify
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr
                                        v-for="(user, index) in users.data"
                                        :key="index"
                                        role="row"
                                        class="odd"
                                    >
                                        <td class="sorting_1">{{ user.id }}</td>
                                        <td>{{ user.name }}</td>
                                        <td>{{ user.email }}</td>
                                        <td v-if="user.roles">
                                            <span
                                                class="badge badge-success"
                                                v-for="(role,
                                                index) in user.roles"
                                                :key="index"
                                                >{{ role.name }}
                                            </span>
                                        </td>
                                        <td>
                                            <button
                                                type="button"
                                                class="btn btn-outline-danger btn-sm"
                                                @click.prevent="
                                                    deleteUser(user.id)
                                                "
                                            >
                                                Delete
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-5">
                            <div
                                class="dataTables_info"
                                id="example1_info"
                                role="status"
                                aria-live="polite"
                            >
                                Showing {{ this.users.from }} to
                                {{ this.users.to }} of
                                {{ this.users.total }} users
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div
                                class="dataTables_paginate paging_simple_numbers"
                                id="example1_paginate"
                            >
                                <ul class="pagination">
                                    <pagination
                                        :data="users"
                                        @pagination-change-page="loadUsers"
                                    ></pagination>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.card-body -->

            <!--Add Modal -->
            <div
                class="modal fade bd-example-modal-lg"
                id="addNewUser"
                tabindex="-1"
                role="dialog"
                aria-labelledby="exampleModalCenterTitle"
                aria-hidden="true"
            >
                <div
                    class="modal-dialog modal-dialog-centered modal-lg"
                    role="document"
                >
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5
                                class="modal-title"
                                id="exampleModalCenterTitle"
                            >
                                Add New User
                            </h5>
                            <button
                                type="button"
                                class="close"
                                data-dismiss="modal"
                                aria-label="Close"
                                data-target="#editUser"
                            >
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <ValidationObserver ref="form" v-slot="{ invalid }">
                                <form @submit.prevent="createUser">
                                    <input
                                        type="hidden"
                                        name="_token"
                                        :value="csrf"
                                    />
                                    <div class="form-group row">
                                        <label
                                            for="name"
                                            class="col-md-4 col-form-label text-md-right"
                                            >Name</label
                                        >
                                        <div class="col-md-6">
                                            <ValidationProvider
                                                vid="name"
                                                name="Name"
                                                rules="required"
                                                v-slot="{ errors }"
                                            >
                                                <input
                                                    v-model="form.name"
                                                    type="text"
                                                    name="name"
                                                    class="form-control"
                                                    required
                                                />
                                                <span class="text-danger">
                                                    {{ errors[0] }}
                                                </span>
                                            </ValidationProvider>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label
                                            for="email"
                                            class="col-md-4 col-form-label text-md-right"
                                            >E-Mail Address</label
                                        >
                                        <div class="col-md-6">
                                            <ValidationProvider
                                                vid="email"
                                                name="E-Mail"
                                                rules="required|email"
                                                v-slot="{ errors }"
                                            >
                                                <input
                                                    v-model="form.email"
                                                    type="email"
                                                    name="email"
                                                    class="form-control"
                                                    @blur="
                                                        inputFieldFocused.email = true
                                                    "
                                                    placeholder="Ex: john@example.com"
                                                    required
                                                />
                                                <span
                                                    v-if="
                                                        inputFieldFocused.email
                                                    "
                                                    class="text-danger"
                                                    >{{ errors[0] }}
                                                </span>
                                            </ValidationProvider>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label
                                            for="password"
                                            class="col-md-4 col-form-label text-md-right"
                                            >Password</label
                                        >

                                        <div class="col-md-6">
                                            <ValidationProvider
                                                vid="password"
                                                name="Password"
                                                rules="min:8|max:20|required"
                                                v-slot="{ errors }"
                                            >
                                                <input
                                                    v-model="form.password"
                                                    name="password"
                                                    type="password"
                                                    class="form-control"
                                                    @blur="
                                                        inputFieldFocused.password = true
                                                    "
                                                    required
                                                    placeholder="Enter Password"
                                                    ref="password"
                                                />

                                                <small
                                                    id="passwordHelpInline"
                                                    class="text-muted"
                                                >
                                                    Must be 8-20 characters
                                                    long.
                                                </small>
                                                <br />
                                                <span
                                                    v-if="
                                                        inputFieldFocused.password
                                                    "
                                                    class="text-danger"
                                                    >{{ errors[0] }}
                                                </span>
                                            </ValidationProvider>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label
                                            for="password-confirm"
                                            class="col-md-4 col-form-label text-md-right"
                                            >Confirm Password</label
                                        >
                                        <div class="col-md-6">
                                            <ValidationProvider
                                                name="Confirm Password"
                                                rules="required|confirmed:password"
                                                v-slot="{ errors }"
                                            >
                                                <input
                                                    name="password_confirmation"
                                                    type="password"
                                                    class="form-control"
                                                    placeholder="Rewrite your password"
                                                    v-model="
                                                        form.password_confirmation
                                                    "
                                                    @blur="
                                                        inputFieldFocused.password_confirmation = true
                                                    "
                                                />
                                                <span
                                                    v-if="
                                                        inputFieldFocused.password_confirmation
                                                    "
                                                    class="text-danger"
                                                    >{{ errors[0] }}
                                                </span>
                                            </ValidationProvider>
                                        </div>
                                    </div>

                                    <div class="modal-footer">
                                        <button
                                            type="button"
                                            class="btn btn-secondary"
                                            data-dismiss="modal"
                                        >
                                            Close
                                        </button>
                                        <button
                                            type="submit"
                                            class="btn btn-primary"
                                            :disabled="invalid"
                                        >
                                            Register
                                        </button>
                                    </div>
                                </form>
                            </ValidationObserver>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            users: {},
            csrf: document
                .querySelector('meta[name="csrf-token"]')
                .getAttribute("content"),

            form: {
                name: "",
                email: "",
                password: "",
                password_confirmation: "",
                errors: [],
                success: ""
            },

            inputFieldFocused: {
                email: false,
                password: false,
                password_confirmation: false
            }
        };
    },
    methods: {
        // newModal() {
        //     $("#addNewUser").modal("toggle");
        // },
        loadUsers(page = 1) {
            axios
                .get("/admin/getUsers?page=" + page)
                .then(resoponse => {
                    this.users = resoponse.data;
                })
                .catch(err => {});
        },

        createUser() {
            this.form.errors = [];

            let name = this.form.name;
            let email = this.form.email;
            let password = this.form.password;
            let password_confirmation = this.form.password_confirmation;

            axios
                .post("/admin/addUser", {
                    name,
                    email,
                    password,
                    password_confirmation
                })
                .then(response => {
                    if (response.status == 200) {
                        this.form.success = response.data.success;
                        Toast.fire({
                            icon: "success",
                            title: "User Created in successfully"
                        });
                        $("#addNewUser").modal("hide");
                        this.loadUsers();
                    }
                })
                .catch(error => {
                    if (error.response.status == 422) {
                        this.form.errors.push(error.response.data.errors);
                    } else if (error.response.status == 404) {
                        this.form.errors.push("404 Not Found");
                    } else {
                        this.form.errors.push(
                            "Something errors happend, please try again later"
                        );
                    }
                });
        },
        deleteUser(id) {
            Swal.fire({
                title: "Are you sure?",
                text: "You won't be able to revert this!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#3085d6",
                cancelButtonColor: "#d33",
                confirmButtonText: "Yes, delete it!"
            }).then(result => {
                if (result.value) {
                    //Send Request to server
                    axios
                        .delete("/admin/deleteUser/" + id)
                        .then(response => {
                            if (response.status == 200) {
                                Swal.fire(
                                    "Deleted!",
                                    "User deleted successfully",
                                    "success"
                                );
                            }
                            this.loadUsers();
                        })
                        .catch(error => {
                            Swal.fire({
                                icon: "error",
                                title: "Oops...",
                                text: error,
                                footer: "<a href>Why do I have this issue?</a>"
                            });
                        });
                }
            });
        }
    },
    created() {
        this.loadUsers();
    }
};
</script>

<style scoped>
.badge {
    font-size: 90%;
    line-height: 1.5;
}
</style>
