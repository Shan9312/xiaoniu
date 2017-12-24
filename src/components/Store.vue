<template>
<div>
  <my-store-slide></my-store-slide>
  <my-store-nav></my-store-nav>
  <my-store-floor></my-store-floor>
</div>
</template>
<script>
import myStoreSlide from "./common/StoreSlide"
import myStoreNav from "./common/StoreNav"
import myStoreFloor from './common/StoreFloor'
export default {
  data: function() {
    return {};
  },
  components: {
    myStoreSlide,myStoreNav,myStoreFloor
  }
};
</script>
<style scoped lang="less">

</style>

