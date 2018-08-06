<template>
    <div>
        <div>商品列表</div>
        <el-table :data="list" style="width: 100%" border>
            <el-table-column align="center" prop="bg_url" label="商品" width="160">
                <template scope="scope">
                    <img :src="scope.row.bg_url" width="100" height="100" class="shop_img" />
                </template>
            </el-table-column>
            <el-table-column align="center" prop="price" label="价格" width="180">
            </el-table-column>
            <el-table-column align="center" prop="stock" label="库存">
            </el-table-column>
            <el-table-column align="center" prop="goods" label="总销量">
            </el-table-column>
            <el-table-column align="center" label="创建时间">
                <template scope="scope">
                    0000-00-00
                </template>
            </el-table-column>
            <el-table-column align="center" prop="status" label="状态">
            </el-table-column>
            <el-table-column align="center" label="操作">
                <template scope="scope">
                    <el-button type="text" size="small">编辑</el-button>
                    <el-button type="text" size="small">删除</el-button>
                    <el-button type="text" size="small" v-if="scope.row.status==1" @click.native="status(scope.row.id,2,scope.$index)">发布</el-button>
                    <el-button type="text" size="small" v-else @click.native="status(scope.row.id,1,scope.$index)">下架</el-button>
                </template>
            </el-table-column>
        </el-table>
        <el-pagination small background layout="prev, pager, next" :total="total" :page-size="pageSize" @current-change="gotopage">
        </el-pagination>
    </div>
</template>

<script>
import { mapState } from 'vuex'

export default {
    data() {
        return {
            page: 1,
            total: 0,
            pageSize: 5,
            list: [],
        }
    },
    created() {
        // this.$store.dispatch('GETSHOPLIST', { page: this.page, pageSize: this.pageSize })
        fetch('/api/shopcar?page=' + this.page + '&pageSize=' + this.pageSize, {
            credentials: 'include'
        }).then(res => {
            return res.json()
        }).then(data => {
            this.list = data.data
            this.total = data.count
        })
    },
    mounted() {

    },
    computed: {
    },
    methods: {
        gotopage(index) {
            this.page = index;
            this.$nextTick(() => {
                fetch('/api/shopcar?page=' + this.page + '&pageSize=' + this.pageSize, {
                    credentials: 'include'
                }).then(res => {
                    return res.json()
                }).then(data => {
                    this.list = data.data
                    this.total = data.count
                })
            })
        },
        status(id, code, index) {
            // console.log(id + '----' + code + '----' + index)
            //1 1 0
            //数据的id  status  下标
            this.$confirm('此操作将永久删除该文件, 是否继续?', '提示', {
                confirmButtonText: '确定',
                cancelButtonText: '取消',
                type: 'warning'
            }).then(() => {

            }).catch(() => {
                this.$message({
                    type: 'info',
                    message: '已取消删除'
                });
            });
            this.$confirm(code == 1 ? '确认下架' : '确认发布？').then(() => {
                // alert('000')
                fetch('/api/publish?id=' + id + '&status=' + code, {
                    credentials: 'include'
                }).then(res => {
                    return res.json()
                }).then(data => {
                    // console.log(data)
                    this.$set(this.list, index, data.data)
                    if (code == 1) {
                        this.$message({
                            type: 'info',
                            message: '下架成功'
                        });
                    } else {
                        this.$message({
                            type: 'success',
                            message: '上架成功'
                        });
                    }

                })
              
            })
           





        }
    }
}
</script>

<style scoped>
ul {
    width: 100%;
    height: auto;
}

ul li img {
    width: 100px;
    height: 100px;
}

.el-table__row>td {
    color: red;
    max-height: 100px;
}

.shop_img {
    width: 60px;
    height: 60px;
}

.small {
    color: #8FC5FF;
}

.el-pagination {
    margin: 0 39%;
}

.el-table {
    text-align: center;
}

.el-table .el-table-column {
    text-align: center;
}

























/*max-height*/
</style>
