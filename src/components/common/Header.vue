<template>
  <div class=" content clear" :class='{"header-white":isShow}'>
    <div class="header-logo left">
      <a href=""><img src="../../assets/img/logo_4ee5ab7b.png" alt=""></a>
    </div>
    <nav class="header-nav left">
      <ul class="clear">
        <li class="li_car">
          <div class="header-car" @mouseover='isShow=true' @mouseleave='isShow=false'>
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
        <li class="li_server">
          <div class="header-server" @mouseover='isShow=true' @mouseleave='isShow=false'>
            <a href="">服务</a>
            <!-- 服务下列表 -->
            <div class="server-box">
              <ul class="clear server_ul">
                <li>
                  <div class="service-care1 server-ico"></div>
                  <div class="details">
                    <p>NIU CARE</p>
                    <p>保养计划</p>
                  </div>
                </li>
                <li>
                  <div class="service-care2 server-ico"></div>
                  <div class="details">
                    <p>牛油保</p>
                    <p>人车保险</p>
                  </div>
                </li>
                <li>
                  <div class="service-care3 server-ico"></div>
                  <div class="details">
                    <p>线下门店</p>
                    <p>查找线下服务</p>
                  </div>
                </li>
              </ul>
            </div>
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
      <div class="user-box">
        <a href="" @mouseover='isShow=true' @mouseleave='isShow=false'>登录图</a>
        <div class="user-collpase collpase">
          <a href="" class="login">登录</a>
          <a href="" class="regin">注册</a>
        </div>
      </div>
      <div class="cart-box" @mouseover='isShow=true' @mouseleave='isShow=false'>
        <a href="">购物车</a>
        <div class="cart-collpase collpase">
          <span>你的购物车是空的</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    data () {
      return {
        isShow: false
      };
    },
    monthds: {}
  };
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang='less'>
  .header-white {
    background: #eee!important;
  }

  .content {
    margin-top: 30px;
    left: 50%;
    transform: translatex(-50%);
    top: 0;
    background-color: #ffffff;
    border-radius: 3px;
    height: 50px;
    line-height: 50px;
    position: absolute;
    z-index: 10;
    text-align: center;
    .toggle-bg {
      background: #fff;
    }
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
          cursor: pointer;
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
        li.li_car {
          .header-car {
            .car-box {
              position: absolute;
              background: #fff;
              width: 1170px;
              height: 0px;
              overflow: hidden;
              top: 50px;
              left: 0px;
              transition: all 0.5s linear;
              ul {
                display: flex;
                width: 100%;
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
                      height: 70%;
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
          &:hover .car-box {
            height: 240px;
          }
          &:hover {
            background: #fff;
          }
        }
        li.li_server {
          .header-server {
            position: relative;
            .server-box {
              position: absolute;
              transition: all .5s linear;
              background: #fff;
              width: 1170px;
              height: 0px;
              overflow: hidden;
              top: 50px;
              left: -470px;
              ul {
                display: flex;
                width: 100%;
                justify-content: space-between;
                text-align: center;
                li {
                  height: 50%;
                  width: 300px;
                  padding: 50px 50px;
                  display: flex;
                  div.server-ico {
                    width: 100%;
                    background-size: inherit;
                    width: 100px;
                    height: 72px;
                    line-height: 72px;
                    margin-top: 19px;
                    margin-left: 30px;
                    text-align: center;
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
                  div.service-care1 {
                    background: url("../../assets/img/service-care_f1ff6a8c.svg") no-repeat center;
                  }
                  div.service-care2 {
                    background: url("../../assets/img/service-insurence_f99fa20c.svg") no-repeat center;
                  }
                  div.service-care3 {
                    background: url("../../assets/img/service-locate_9841d7c4.svg") no-repeat center;
                  }
                  div.details {
                    margin-left: 10px;
                    text-align: left;
                    font-size: 16px;
                    height: 72px;
                    color: #a4a9ad;
                  }
                }
              }
            }
          }
          &:hover .server-box {
            height: 240px;
          }
          &:hover {
            background: #fff;
          }
        }
      }
    }
    .header-right {
      div {
        height: 50px;
        line-height: 50px;
        float: left;
        a {
          padding: 16px 10px;
          margin: 0 20px;
        }
      }
      div.user-box,
      div.cart-box {
        .collpase {
          position: absolute;
          width: 1170px;
          background: #fff;
          top: 50px;
          z-index: 15;
          height: 0px;
          transition: all 0.5s linear;
          overflow: hidden;
        }
        div.user-collpase {
          height: 0px;
          left: 0px;
          text-align: right;
          transition: all 0.5s linear;
          a {
            display: inline-block;
            height: 30px;
            line-height: 30px;
            padding: 0px 25px;
            margin-right: 30px;
            margin-top: 30px;
            border: solid 1px #d1d3d3;
          }
          a.regin {
            margin-right: 150px;
            color: #df001f;
            border: solid 1px rgba(223, 0, 31, 0.2);
            &:hover {
              border: 1px solid #df001f;
              color: #212121;
            }
          }
        }
        div.cart-collpase {
          height: 0px;
          left: 0px;
          transition: all 0.5s linear;
          span {
            display: inline-block;
            margin-top: 50px;
          }
          &:hover .cart-collpase {
            height: 150px;
          }
        }
        &:hover .user-collpase {
          height: 100px;
        }
        &:hover .cart-collpase {
          height: 150px;
        }
        &:hover {
          background: #fff;
        }
      }
    }
  }
</style>
