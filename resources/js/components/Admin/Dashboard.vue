<template>
    <div>
        <div class="row">
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3>{{ this.content.users }}</h3>

                        <p>Total Users</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <router-link to="/admin/users" class="small-box-footer"
                        >More info <i class="fas fa-arrow-circle-right"></i
                    ></router-link>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-success">
                    <div class="inner">
                        <h3>{{ this.content.roles }}</h3>

                        <p>Total Roles</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-user-tag"></i>
                    </div>
                    <router-link to="/admin/roles" class="small-box-footer"
                        >More info <i class="fas fa-arrow-circle-right"></i
                    ></router-link>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-warning">
                    <div class="inner">
                        <h3>{{ this.content.staffs }}</h3>

                        <p>Total Staffs</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-user-tie"></i>
                    </div>
                    <router-link to="/admin/staffs" class="small-box-footer"
                        >More info <i class="fas fa-arrow-circle-right"></i
                    ></router-link>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-light_pink white">
                    <div class="inner">
                        <h3>{{ this.content.emails }}</h3>

                        <p>Total Email Sent</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-paper-plane"></i>
                    </div>
                    <!-- <a href="#" class="small-box-footer"
                        >More info <i class="fas fa-arrow-circle-right"></i
                    ></a> -->
                </div>
            </div>
            <!-- ./col -->
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            content: []
        };
    },
    methods: {
        getDashboardContent() {
            axios
                .get("/admin/getDashboardContent")
                .then(resoponse => {
                    this.content = resoponse.data;
                })
                .catch(err => {});
        }
    },
    created() {
        this.getDashboardContent();
    }
};
</script>

<style scoped></style>
