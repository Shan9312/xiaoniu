<template>
  <div class="header content clear">
    <div class="header-logo left">
      <a href=""><img src="../../assets/img/logo_4ee5ab7b.png" alt=""></a>
    </div>
    <nav class="header-nav left">
      <ul class="clear">
        <li class="li_car">
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
        <li class="li_server">
          <div class="header-server">
            <a href="">服务</a>
            <!-- 服务下列表 -->
            <div class="server-box">
              <ul class="clear server_ul">
                <li>
                  <div class="service-care1 server-ico" ></div>
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
    name: "HelloWorld",
    data () {
      return {
        isShow: false,
      };
    },
    monthds: {

    }
  };
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang='less'>
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
          //下列车图
          .header-car {
            position: relative;
            .car-box {
              position: absolute;
              display: none;
              background: #fff;
              width: 1170px;
              height: 240px;
              top: 50px;
              left: -140px;
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
          &:hover .car-box {
            display: block;
          }
        }
        li.li_server {
          .header-server {
            position: relative;
            .server-box {
              position: absolute;
              display: none;
              background: #fff;
              width: 1170px;
              height: 240px;
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
                  padding:50px 50px;
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
                  div.service-care1{
                    background:url('../../assets/img/service-care_f1ff6a8c.svg') no-repeat center;
                  }
                  div.service-care2{
                    background:url('../../assets/img/service-insurence_f99fa20c.svg') no-repeat center;
                  }
                  div.service-care3{
                    background:url('../../assets/img/service-locate_9841d7c4.svg') no-repeat center;
                  }
                  div.details{
                    margin-left: 10px;
                    text-align: left;
                    font-size: 14px;
                    color: #a4a9ad;
                  }
                }
              }
            }
          }
          &:hover .server-box {
            display: block;
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
