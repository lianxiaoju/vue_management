<template>
    <div class="user_info">
        <div class="user_from">
            <el-input v-model="formLabelAlign.name" placeholder="请输入登录"></el-input>
            <el-input v-model="formLabelAlign.pwd" placeholder="请输入密码"></el-input>
            <el-button class="btn" type="danger" plain @click="login">登录</el-button>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            formLabelAlign: {
                name: '',
                pwd: ''
            }
        }
    },
    methods: {
        login() {
            let { name, pwd } = this.formLabelAlign
            fetch('api/login?name=' + name + '&pwd=' + pwd, {
                method: 'POST',
                credentials: "include"
            }).then(res => {
                return res.json()
            }).then(data => {
                if (data.code == 1) {
                    window.localStorage.setItem('otherInfo',JSON.stringify(data.msg))
                    this.$router.push('/')
                } else if (data.code == 0) {
                    alert(data.msg);
                    this.formLabelAlign.name = '';
                    this.formLabelAlign.pwd = '';
                }
            })

        }
    }
}
</script>




<style>
.user_info {
    position: fixed;
    left: 0;
    background: #01274C;
    top: 0;
    bottom: 0;
    right: 0;
}

.user_from {
    width: 400px;
    height: auto;
    margin: 200px auto;
    padding: 20px;
    border-radius: 10px;
    border: 1px solid #c0c4cc;
    background: #fff;
}

.user_from input {
    margin: 10px;
}

.btn {
    margin: 10px 39%;
    padding: 10px 40px;
}
</style>
