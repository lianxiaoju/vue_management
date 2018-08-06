<template>
    <div>
        <el-container>
            <el-aside class="" width="200px" class="app_menu" style="background-color:#00152A;">
                <div class="title_biao">BigNoNo</div>
                <Asidemenu/>
            </el-aside>
            <el-container class="app_content">
                <Headers/>
                <Usernav/>
                <div class="app_main">
                    <router-view/>
                </div>
            </el-container>
        </el-container>
    </div>
</template>

<script>
import Content from '../../views/product/'
import Usernav from 'con/user_nav'
import Headers from 'con/user_head'
import Asidemenu from 'con/user_aside'
export default {

    components: {
        Content,
        Usernav,
        Headers,
        Asidemenu
    },

};
</script>




<style scoped>
.title_biao {
    height: 60px;
    color: #ccc;
    text-align: center;
    line-height: 60px;
    background-color: #01274C;
}


.el-aside {
    color: #333;
}

.el-submenu__title {
    background: #00152A;
    color: #ccc;
}

.el-submenu__title:hover {
    background-color: #00152A;
}



.el-menu-item-group__title {
    padding: 0;
}

.app_menu {
    position: fixed;
    top: 0;
    left: 0;
    bottom: 0;
}



.app_content {
    margin-left: 200px;
    display: flex;
    flex-direction: column;
    background: #F0F1F3;
    position: absolute;
    left: 0;
    top: 0;
    bottom: 0;
    right: 0;
}

.app_content .app_header {
    background: #fff;
    border-bottom: 1px solid #F0F1F3;
}


  .app_main[data-v-62164e2f] {
    padding: 10px;
    height: auto;
    border: 10px solid #F0F1F3;
    background: #fff;
}


.el-menu-item-group__title {
    padding: 0;
}

</style>


