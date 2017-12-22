<template>
<div>
  <my-header></my-header>
  <my-store-slide></my-store-slide>
  <my-store-nav></my-store-nav>
  <my-store-floor></my-store-floor>
  <my-footer></my-footer>
</div>
</template>
<script>
import myHeader from "./common/Header";
import myStoreSlide from "./common/StoreSlide"
import myFooter from "./common/Footer";
import myStoreNav from "./common/StoreNav"
import myStoreFloor from './common/StoreFloor'
export default {
  data: function() {
    return {};
  },
  components: {
    myHeader, myFooter,myStoreSlide,myStoreNav,myStoreFloor
  }
};
</script>
<style scoped lang="less">

</style>

