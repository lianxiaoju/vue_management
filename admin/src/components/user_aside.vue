<template>
    <el-menu default-active='2' :router='true'>
        <template v-for="(item,index) in menu">
            <el-menu-item class="user-menu" :index="item.path" :key="index" v-if="!item.children">
                <i class="el-icon-menu"></i>
                <span slot="title">
                    {{item.meta.title}}
                </span>
            </el-menu-item>
            <el-submenu :index="item.path" :key="index" v-else>
                <template slot="title">
                    <i class="el-icon-location"></i>
                    {{item.meta.title}}
                </template>

                <el-menu-item  v-for="(item2,index2) in item.children" :key="index2" :index="item.path+'/'+item2.path">
                    {{item2.meta.title}}
                </el-menu-item>
            </el-submenu>
        </template>
    </el-menu>
</template>

<script>
export default {
    data() {
        return {

        }
    },
    computed: {
        menu() {
            const menuData = (routes) => {
                return routes.filter((item, index) => {
                    if (routes.children) {
                        routes.children = menuData(item.children)
                    }
                    return item.meta && item.meta.isMenu
                })
            }
            return menuData(this.$router.options.routes)



        }
    }
}

</script>

<style>
.el-submenu .el-menu-item:hover {
    background: #168EFE;
    color: #ccc;
}

.el-submenu__title,.user-menu {
    background: #00172E;
    color: #fff;
}

.el-submenu .el-menu-item {
    background: #000C18;
    color: #ccc;
}
</style>
