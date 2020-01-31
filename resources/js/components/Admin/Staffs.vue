<template>
    <div>
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Staffs</h3>
                <div class="card-tools">
                    <button
                        type="button"
                        class="btn btn-success"
                        data-toggle="modal"
                        data-target="#addNewStaff"
                    >
                        Add New
                        <i class="fas fa-plus-circle"></i>
                    </button>
                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <div
                    id="example1_wrapper"
                    class="dataTables_wrapper dt-bootstrap4"
                >
                    <!-- <div class="row">
                        <div class="col-sm-12 col-md-6">
                            <div class="dataTables_length" id="example1_length">
                                <label
                                    >Show
                                    <select
                                        name="example1_length"
                                        aria-controls="example1"
                                        class="custom-select custom-select-sm form-control form-control-sm"
                                        wtx-context="32672F7E-9AB5-4491-881B-D2ED4105D4BD"
                                        ><option value="10">10</option
                                        ><option value="25">25</option
                                        ><option value="50">50</option
                                        ><option value="100"
                                            >100</option
                                        ></select
                                    >
                                    Staffs</label
                                >
                            </div>
                        </div>
                    </div> -->

                    <!-- Table -->
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
                                            aria-label="Image: activate to sort column ascending"
                                            style="width: 57px;"
                                        >
                                            Modify
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr
                                        v-for="(staff, index) in staffs.data"
                                        :key="index"
                                        role="row"
                                        class="odd"
                                    >
                                        <td class="sorting_1">
                                            {{ staff.id }}
                                        </td>
                                        <td>{{ staff.name }}</td>
                                        <td>{{ staff.email }}</td>
                                        <td v-if="staff.roles">
                                            <span
                                                class="badge badge-success"
                                                v-for="(role,
                                                index) in staff.roles"
                                                :key="index"
                                                >{{ role.name }}
                                            </span>
                                        </td>
                                        <td>
                                            <button
                                                type="button"
                                                class="btn btn-primary btn-sm"
                                                @click.prevent="
                                                    editModal(staff)
                                                "
                                            >
                                                Edit
                                            </button>
                                            <button
                                                type="button"
                                                class="btn btn-outline-danger btn-sm"
                                                @click.prevent="
                                                    deleteStaff(staff.id)
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
                                Showing {{ this.staffs.from }} to
                                {{ this.staffs.to }} of
                                {{ this.staffs.total }} staffs
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-7">
                            <div
                                class="dataTables_paginate paging_simple_numbers"
                                id="example1_paginate"
                            >
                                <ul class="pagination">
                                    <pagination
                                        :data="staffs"
                                        @pagination-change-page="loadStaffs"
                                    ></pagination>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Table -->
                </div>
            </div>
            <!-- /.card-body -->

            <!--Staff Add Modal -->
            <div
                class="modal fade bd-example-modal-lg"
                id="addNewStaff"
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
                                Add New Staff
                            </h5>
                            <button
                                type="button"
                                class="close"
                                data-dismiss="modal"
                                aria-label="Close"
                            >
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <ValidationObserver ref="form" v-slot="{ invalid }">
                                <form @submit.prevent="createStaff">
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

            <!--Staff Edit Modal -->
            <div
                class="modal fade bd-example-modal-lg"
                id="editStaff"
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
                                Edit Staff
                            </h5>
                            <button
                                type="button"
                                class="close"
                                data-dismiss="modal"
                                aria-label="Close"
                            >
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <ValidationObserver ref="form" v-slot="{ invalid }">
                                <form @submit.prevent="editStaff">
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
            staffs: {},

            users: {},

            modalTitle: "",

            csrf: document
                .querySelector('meta[name="csrf-token"]')
                .getAttribute("content"),

            form: {
                id: "",
                name: "",
                email: "",
                errors: [],
                success: ""
            },

            inputFieldFocused: {
                email: false
            }
        };
    },
    methods: {
        loadStaffs(page = 1) {
            axios
                .get("/admin/getStaffs?page=" + page)
                .then(resoponse => {
                    this.staffs = resoponse.data;
                })
                .catch(err => {});
        },
        editModal(staff) {
            $("#editStaff").modal("show");
            this.form.id = staff.id;
            this.form.name = staff.name;
            this.form.email = staff.email;
        },
        editStaff() {
            this.form.errors = [];

            let id = this.form.id;
            let name = this.form.name;
            let email = this.form.email;

            axios
                .patch("/admin/editStaff/" + id, {
                    name,
                    email
                })
                .then(response => {
                    if (response.status == 200) {
                        this.form.success = response.data.success;
                        Toast.fire({
                            icon: "success",
                            title: "Staff edited in successfully"
                        });

                        $("#editStaff").modal("hide");
                        this.loadStaffs();
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
        createStaff() {
            this.form.errors = [];

            let name = this.form.name;
            let email = this.form.email;

            axios
                .post("/admin/addStaff", {
                    name,
                    email
                })
                .then(response => {
                    if (response.status == 200) {
                        this.form.success = response.data.success;
                        Toast.fire({
                            icon: "success",
                            title: "Staff Created in successfully"
                        });
                        $("#addNewStaff").modal("hide");
                        this.loadStaffs();
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
        deleteStaff(id) {
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
                        .delete("/admin/deleteStaff/" + id)
                        .then(response => {
                            if (response.status == 200) {
                                Swal.fire(
                                    "Deleted!",
                                    "Staff deleted successfully",
                                    "success"
                                );
                            }
                            this.loadStaffs();
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
        this.loadStaffs();
    }
};
</script>

<style scoped>
.badge {
    font-size: 90%;
    line-height: 1.5;
}
</style>
