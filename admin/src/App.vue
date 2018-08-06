<template>
  <div id="app">
    <!--<router-view/>-->
    <div>
      <Admin v-if="exist" />
      <Login v-else/>
    </div>
  </div>
</template>

<script>
import Admin from './views/layout/user.layout'
import Login from './views/layout/base.layout'
import { mapState } from 'vuex'
export default {
  name: 'App',
  data() {
    return {
      // exist:false
    }
  },
  components: {
    Admin,
    Login
  },
  computed: {
    ...mapState(['exist'])
  }
}
</script>

<style>

</style>
