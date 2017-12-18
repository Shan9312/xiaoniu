<template>
  <div class="container">
    <my-header></my-header>
  </div>
</template>

<script>
import myHeader from './common/Header'
export default {
  name: 'HelloWorld',
  data () {
    return {
     
    }
  },
  components:{
    myHeader
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

</style>
