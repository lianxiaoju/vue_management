<template>
    <div class="app_crumb">
        <el-breadcrumb separator="/" class="app_info">
            <el-breadcrumb-item>首页</el-breadcrumb-item>
            <el-breadcrumb-item>活动列表</el-breadcrumb-item>
            <el-breadcrumb-item>活动详情</el-breadcrumb-item>
        </el-breadcrumb>
        <h2>商品列表</h2>
    </div>
</template>

<script>
export default {

}
</script>

<style scoped>
.app_crumb {
    border-bottom: 6px solid #F0F1F3;
    background: #fff;
    padding: 10px 0 20px 10px;
}

.app_crumb .app_info {
    line-height: 40px;
    /*height: auto;*/
    /*padding: 10px 0;*/
}

.app_crumb h2 {
    line-height: 10px;
}
</style>
