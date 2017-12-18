<template>
  <div class="header content clear">
    <div class="header-logo left">
      <a href=""><img src="../../assets/img/logo_4ee5ab7b.png" alt=""></a>
    </div>
    <nav class="header-nav left">
      <ul class="clear">
        <li>
          <div class="header-car">
            <a href="">小牛电动</a>
            <div class="car-box">
              <ul class="clear">
                <li>
                  <div>
                    <a href=""><img src="../../assets/img/n1-header_d387c5e9.jpg" alt=""></a>
                    <p>U1</p>
                  </div>
                </li>
                <li>
                  <div>
                    <a href=""><img src="../../assets/img/m1-header_1139524b.jpg" alt=""></a>
                    <p>MI</p>
                  </div>
                </li>
                <li>
                  <div>
                    <a href=""><img src="../../assets/img/u1-header_d4ab9a16.jpg" alt=""></a>
                    <p>NIS</p>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </li>
        <li>
          <a href="">商城</a>
        </li>
        <li>
          <a href="">线下门店</a>
        </li>
        <li>
          <div class="header-server">
            <a href="">服务</a>
            <div class="server-box"></div>
          </div>
        </li>
        <li>
          <a href="">社区</a>
        </li>
        <li>
          <a href=""><img src="../../assets/img/hundmilIcon2_3e23c8ba.png" alt=""></a>
        </li>
      </ul>
    </nav>
    <div class="header-right left">
      <div>
        <a href="">登录图</a>
        <div></div>
      </div>
      <div>
        <a href="">购物车</a>
        <div></div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'HelloWorld',
    data () {
      return {
         isShow:false
      }
    },
    monthds:{
      // enter: function () {
	    //   this.isShow = !this.isShow
      //  },
	    // leave: function () {
	    //   this.isShow =this.isShow
      // }
    }
  }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang='less'>
  .content {
    margin-top: 30px;
    border: 1px solid red;
    left: 50%;
    transform: translatex(-50%);
    top: 0;
    background-attachment: #ffffff;
    border-radius: 3px;
    height: 50px;
    line-height: 50px;
    position: absolute;
    text-align: center;
    div.header-logo {
      a {
        display: inline-block;
        height: 50px;
        padding: 0 20px;
        img {
          width: 100%;
          vertical-align: middle;
        }
      }
    }
    nav {
      margin: 0 60px 0 30px;
      ul {
        width: 100%;
        height: 100%;
        li {
          float: left;
          margin: 0px 10px;
          width: 90px;
          .header-car {
            border: 1px solid red;
            position: relative;
            .car-box {
              position: absolute;
              display: none;
              background: #fff;
              width: 1170px;
              height: 240px;
              border: 1px solid red;
              top: 50px;
              left: -142px;
              ul {
                display: flex;
                justify-content: space-between;
                text-align: center;
                li {
                  height: 100%;
                  width: 300px;
                  div {
                    width: 100%;
                    height: 100%;
                    a {
                      display: block;
                      height: 180px;
                      img {
                        width: 100%;
                        height: 180px;
                      }
                    }
                    p {
                      font-size: 16px;
                      font-weight: bold;
                      padding: 0 5px;
                      cursor: pointer;
                    }
                  }
                }
              }
            }
          }

          a {
            height: 50px;
            width: 100%;
            display: inline-block;
          }
          img {
            width: 30px;
            height: 30px;
            vertical-align: middle;
          }
        }
      }
    }
    .header-right {
      div {
        float: left;
        margin: 0px 10px;
        a {
          display: block;
          height: 50px;
          float: left;
        }
      }
    }
  }
</style>
