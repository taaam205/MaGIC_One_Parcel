<template>
    <div>
        <div class="container">
            <div class="tab-content mt-3" id="myTabContent">
                <div
                    class="tab-pane fade show active"
                    id="dashboard"
                    role="tabpanel"
                    aria-labelledby="dashboard-tab"
                >
                    <div class="row justify-content-center mt-3 mb-3">
                        <h3>Inform Recipient of Parcel</h3>
                    </div>

                    <form action="" method="post" id="parcel_form">
                        <!-- {{ csrf_field() }} -->
                        <div class="container row justify-content-center">
                            <div class="col-md-4 mt-2 mb-2">
                                <div class="input-group mb-3">
                                    <select
                                        name="staff_id"
                                        class="custom-select form-control"
                                        id="inputGroupSelect01"
                                        v-model="form.staffId"
                                    >
                                        <!-- <option selected
                                            >Select Recipient</option
                                        > -->

                                        <option
                                            v-for="(staff, index) in this
                                                .staffs"
                                            :key="index"
                                            :value="staff.id"
                                            >{{ staff.name }}</option
                                        >
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3 mt-2 mb-2">
                                <input
                                    type="text"
                                    class="form-control"
                                    name="barcode"
                                    placeholder="Tracking Number"
                                    v-model="form.trackingNumber"
                                />
                            </div>

                            <div
                                class="container row mt-2 justify-content-center"
                            >
                                <div class="col-md-7">
                                    <div class="form-group">
                                        <label for="">Optional Message</label>
                                        <textarea
                                            class="form-control"
                                            name="optional"
                                            id=""
                                            rows="5"
                                            v-model="form.optionalMessage"
                                        ></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="container row justify-content-center">
                                <button
                                    id="submitForm"
                                    @click.prevent="sendEmail"
                                    type="submit"
                                    class="btn btn-primary ml-2 mt-2"
                                    style="box-shadow: 0 0 2rem 0 rgba(59, 68, 78, 0.15);"
                                >
                                    Send on Email
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- <div
                        class="alert alert-info alert-dismissible fade show mt-4"
                        role="alert"
                        v-if="successMessage"
                    >
                        <strong>Great!</strong>
                        {{ this.successMessage.mailSend }}
                        <button
                            type="button"
                            class="close"
                            data-dismiss="alert"
                            aria-label="Close"
                        >
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div> -->

                    <div
                        class="alert alert-danger alert-dismissible fade show mt-4"
                        role="alert"
                        v-if="errors"
                    >
                        <strong>Sorry!</strong> {{ this.errors }}
                        <button
                            type="button"
                            class="close"
                            data-dismiss="alert"
                            aria-label="Close"
                        >
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "email",
    data() {
        return {
            staffs: {},
            recipent: {},
            form: {
                staffId: "",
                trackingNumber: "",
                optionalMessage: ""
            },
            errors: "",
            successMessage: ""
        };
    },
    methods: {
        loadstaffs() {
            axios
                .get("/admin/getAllStaff")
                .then(resoponse => {
                    this.staffs = resoponse.data;
                })
                .catch(error => {});
        },
        sendEmail() {
            this.recipent = this.staffs.find(
                obj => obj.id == this.form.staffId
            );

            axios
                .post("/admin/sendEmail", this.form)
                .then(resoponse => {
                    if (resoponse.status == 200) {
                        this.successMessage = resoponse.data;
                        this.form = {
                            staffId: "",
                            trackingNumber: "",
                            optionalMessage: ""
                        };
                        let timerInterval;
                        Swal.fire({
                            icon: "success",
                            title: "Great!",
                            text: resoponse.data.mailSend,
                            timer: 2000,
                            timerProgressBar: true,
                            onBeforeOpen: () => {
                                Swal.showLoading();
                                timerInterval = setInterval(() => {
                                    const content = Swal.getContent();
                                    if (content) {
                                        const b = content.querySelector("b");
                                        if (b) {
                                            b.textContent = Swal.getTimerLeft();
                                        }
                                    }
                                }, 100);
                            }
                        });
                    }
                })
                .catch(error => {
                    this.errors = error;
                });
        }
    },
    created() {
        this.loadstaffs();
    }
};
</script>

<style scoped></style>
