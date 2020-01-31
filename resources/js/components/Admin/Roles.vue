<template>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Roles</h3>
                    <!-- <div class="card-tools">
                        <button type="button" class="btn btn-success">
                            Add New
                            <i class="fas fa-plus-circle"></i>
                        </button>
                    </div> -->
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
                                            <!-- <th
                                                class="sorting"
                                                tabindex="0"
                                                aria-controls="example1"
                                                rowspan="1"
                                                colspan="1"
                                                aria-label="Image: activate to sort column ascending"
                                                style="width: 57px;"
                                            >
                                                Modify
                                            </th> -->
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr
                                            v-for="(role, index) in roles.data"
                                            :key="index"
                                            role="row"
                                            class="odd"
                                        >
                                            <td>{{ role.name }}</td>
                                            <!-- <td>
                                                <button
                                                    type="button"
                                                    class="btn btn-primary btn-sm"
                                                >
                                                    Edit
                                                </button>
                                                <button
                                                    type="button"
                                                    class="btn btn-outline-danger btn-sm"
                                                >
                                                    Delete
                                                </button>
                                            </td> -->
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
                                    Showing {{ this.roles.from }} to
                                    {{ this.roles.to }} of
                                    {{ this.roles.total }} roles
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-7">
                                <div
                                    class="dataTables_paginate paging_simple_numbers"
                                    id="example1_paginate"
                                >
                                    <ul class="pagination">
                                        <pagination
                                            :data="roles"
                                            @pagination-change-page="loadroles"
                                        ></pagination>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.card-body -->
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            roles: {}
        };
    },
    methods: {
        loadroles(page = 1) {
            axios
                .get("/admin/getRoles?page=" + page)
                .then(resoponse => {
                    this.roles = resoponse.data;
                })
                .catch(err => {});
        }
    },
    created() {
        this.loadroles();
    }
};
</script>

<style scoped></style>
