<template>
    <el-header style="height: auto;" class="app_header">
        <!--<el-dropdown>-->
        <el-dropdown>
            <i class="el-icon-setting" style="margin-right: 15px">Setting</i>
            <el-dropdown-menu slot="dropdown">
                <el-dropdown-item>查看</el-dropdown-item>
                <el-dropdown-item>新增</el-dropdown-item>
                <el-dropdown-item @click.native="del">注销</el-dropdown-item>
            </el-dropdown-menu>
        </el-dropdown>

        <div class="user_name">
            <img class="user_img" :src="url_img" alt="">
            <span>{{name}}</span>
        </div>
        <!--</el-dropdown>-->

        <!--{{url_img}}-->
    </el-header>
</template>

<script>
export default {
    data() {
        return {
            url_img: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1533266365182&di=4d3e60db3739d86a7da0f1162322b43d&imgtype=0&src=http%3A%2F%2Fpic150.nipic.com%2Ffile%2F20171224%2F25059247_153450781037_2.jpg',
            name: 'LiSa'
        }
    },
    created() {
        this.url_img = JSON.parse(window.localStorage.getItem('otherInfo'))[0].img
        this.name = JSON.parse(window.localStorage.getItem('otherInfo'))[0].name
    },
    methods: {
        del() {
            var keys = document.cookie.match(/[^ =;]+(?=\=)/g);
            console.log(keys)
            if (keys) {
                for (var i = keys.length; i--;)
                    document.cookie = keys[i] + '=0;expires=' + new Date(0).toUTCString()
            }
        }
    }
}
</script>

<style scoped>
.el-header {

    background-color: #B3C0D1;
    color: #333;
    text-align: right;
    font-size: 12px;
    border-bottom: 2px solid #F0F2F2;
}


.el-header,
.app_header {
    height: auto;
    padding-top: 10px;
}

.el-dropdown {
    display: inline-block;
    position: relative;
    color: #606266;
    font-size: 14px;
    float: right;
    margin: 50px 0 5px 10px;
}









/*.el-header */

.user_name .user_img {
    width: 100px;
}



/*.user_setting{
    position: relative;
    left: 0;
    bottom: 0;
    right: 0;
}*/
</style>
