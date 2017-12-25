<template>
<div>
 <div class="container server-header">
   <div >
    <h1>线下门店</h1>
    <p>小牛电动授权体验店是小牛公司授权开设的线下实体店，集销售展示、售后维系、顾客体验、用户聚会于一体。</p>
    <p>为您提供良好的购物环境和售后服务。也为“牛油”们提供一个聚会场所。</p>
   </div>    
 </div>
 <my-service-map></my-service-map>
</div>
</template>
<script>
import myServiceMap from './common/Server_map'
export default{
  data () {
    return {}
  },
  components:{
    myServiceMap
  }
}
</script>
<style scoped lang="less">
.server-header{
  height:600px;
  position: relative;
  background: url("../assets/img/banner_0953510d.jpg") no-repeat center;
  div{
    color: #e0e0e0;
    position: absolute;
    height: 100%;
    text-align: center;
    padding-top:230px;
    left:50%;
    transform: translatex(-50%);
    h1{
      font-weight: normal;
      font-size: 48px;
      margin-bottom:10px;
    p{
      font-size: 18px;
    }
   }
 }
}
</style>
