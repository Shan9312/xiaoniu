<template>
  <div class="mains">
     <my-header></my-header>
     <router-view></router-view>
     <my-footer></my-footer>
  </div>
</template>

<script>
import myHeader from './common/Header'
import myFooter from './common/Footer'
export default {
  name: 'mains',
  data () {
    return {
      
    }
  },
  components:{
    myHeader,myFooter
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang='less'>

</style>
