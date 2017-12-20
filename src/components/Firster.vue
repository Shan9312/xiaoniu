<template>
  <div class="container">
    <my-header></my-header>
    <my-first-slide></my-first-slide>
    <div class="section">
        <ul>
          <li>
            <div>
              <a href="" class="img_1"></a>
              <h3>官方商城 配件上新</h3>
              <p>满499免运费</p>
            </div>
          </li>
          <li>
            <div>
              <a href="" class="img_2" ></a>
              <h3>小牛电动车M1 产品详情</h3>
              <p>了解小牛电动车M1出色的设计与全新科技</p>
            </div>
          </li>
          <li>
            <div>
              <a href="" class="img_3"></a>
              <h3>小牛电动使用教程完全手册</h3>
              <p>从开箱验车到科学使用电池的讲解视频</p>
            </div>
          </li>
          <li>
            <div>
              <a href="" class="img_4"></a>
              <h3>小牛U1 PRO产品详情</h3>
              <p>漫画了解小牛电动U1 pro</p>
            </div>
          </li>
        </ul>
    </div>
    <my-footer></my-footer>
  </div>
</template>

<script>
import myHeader from './common/Header'
import myFirstSlide  from './common/FirstSlide'
import myFooter from './common/Footer'
export default {
  name: 'HelloWorld',
  data () {
    return {
     
    }
  },
  components:{
    myHeader,myFirstSlide,myFooter
  }
}
</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="less">
  .container{
    height: 100%;
  }
  .section{
    min-width: 1170px;
    margin:50px auto;
    ul{
      width: 100%;
      display: flex;
      justify-content: space-between;
      li{
        width: 25%;
        height: 288px;
        margin:1.3% 1%;
        cursor: pointer;
        div{
          width: 100%;
          height: 100%;
          text-align: center;
          a{
            height: 228px;
            display:block;
            border-radius: 4px;
            box-shadow: 4px 4px 4px #a4a9a4;
            background-size:cover !important;
            transition: box-shadow 200ms ease-out;
          }
          a.img_1{
            background:url('../assets/img/684_94eb54a3.jpg') no-repeat 50%;
          }
          a.img_2{
            background:url('../assets/img/m1_1063e017.jpg') no-repeat 50%;
          }
          a.img_3{
            background:url('../assets/img/20170213_a486c6b2.jpg') no-repeat 50%;
          }
          a.img_4{
            background:url('../assets/img/u1pro_a8950b6a.jpg') no-repeat 50%;
          }
          h3{
            margin:10px 0;
          }
          p{
            color:#a4a9ad;
          }
        }
      }
    }
  }

</style>
