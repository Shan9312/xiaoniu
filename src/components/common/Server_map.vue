<template>
  <div class="wrapper">
    <div class="selectBar container">
      <div></div>
      <select name="" id="" class="select_1" v-model="provice">
        <option :value="item" v-for="(item,index) in sheng" :key="index">{{item}}</option>
      </select>
      <select name="" id="" class="select_2" v-model='city'>
        <option v-if='provice' :value='item.value' v-for="(item,index) in selectData[provice]['city']" :key="index">{{item.label}}</option>
      </select>
      <select name="" id="" class="select_3">
        <option v-if='provice && city' :value="item" v-for="(item,index) in selectData[provice]['qu'][city]" :key="index">{{item}}</option>
      </select>
      <p>
        衢州市附近共有
        <span>{{selectData[provice]['storeCount']}}</span>个授权体验/专卖店
      </p>
    </div>
    <div class="map">
      <div class=" map-left" id="allmap"></div>
      <div class="map-right">
        <input type="text" id="suggestId" name="address_detail" placeholder="店号门牌" v-model="address_detail" class="input_style">
        <div class="map_list">
          <p class="nearest">距离你最近的店</p>
          <h2>上海市长宁区新华路店</h2>
          <p class="distance">
            <span class="distance-nub">1.8KM</span>
          </p>
          <p class="address">上海市长宁区新华路679号</p>
          <a href="" style="color:#4195E8">查看详情</a>
        </div>
        <div class="map_list">
          <p class="nearest">	上海市徐汇区斜土路店</p>
          <h2>上海市长宁区新华路店</h2>
          <p class="distance">
            <span class="distance-nub">2.8KM</span>
          </p>
          <p class="address">斜土路1360号</p>
          <a href="" style="color:#4195E8">查看详情</a>
        </div>
        <div class="map_list">
          <p class="nearest">距离你最近的店</p>
          <h2>上海市闵行区纪王店</h2>
          <p class="distance">
            <span class="distance-nub">4.8KM</span>
          </p>
          <p class="address">上海市长宁区新华路679号</p>
          <a href="" style="color:#4195E8; display:block;">查看详情</a>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    name: 'myServerMap',
    data: function () {
      return {
        provice: '上海市',
        city: '上海市',
        selectData: {
          安徽: {
            city: [
              {
                value: 'hefei',
                label: '合肥'
              },
              {
                value: 'wuhu',
                label: '芜湖'
              },
              {
                value: 'bengbu',
                label: '蚌埠'
              }
            ],
            qu: {
              hefei: ['合肥新区', '肥东县', '庐阳区'],
              wuhu: ['芜湖县', '三山区', '镜湖区'],
              bengbu: ['怀远县', '固镇县', '蚌山区'],
            },
            storeCount: "11"

          },
          北京: {
            city: [
              {
                value: 'beijing',
                label: '北京市'
              }
            ],
            qu: {
              beijing: ['海淀区', '朝阳区', '东城区']
            },
            storeCount: '18'
          },
          上海市: {
            city: [
              {
                value: 'shanghai',
                label: '上海市'
              }
            ],
            qu: {
              shanghai: ['嘉定区', '徐汇区', "宝山区"]
            },
            storeCount: "32"
          }
        },
        sheng: [],
        address_detail: null, //详细地址
        userlocation: { lng: "", lat: "" },
      }
    },
    created () {
      this.sheng = Object.keys(this.selectData);
      console.log(this.sheng);
    },
    mounted () {
      this.ready();
    },
    methods: {
      ready: function () {
        var map = new BMap.Map('allmap');
        var point = new BMap.Point(104.075796, 30.659684);
        map.centerAndZoom('上海', 14);
        map.addControl(new BMap.MapTypeControl());
        map.enableScrollWheelZoom(true);
        map.enableDoubleClickZoom(true);
        var marker = new BMap.Marker(point);
        map.addOverlay(marker);
      }
    }
  }
</script>
<style scoped lang="less">
  .wrapper {
    margin-top: 50px;
    .selectBar {
      position: relative;
      height: 45px;
      line-height: 45px;
      padding-left: 50px;
      padding-right: 50px;
      select {
        position: absolute;
        display: inline-block;
        width: 210px;
        height: 42px;
        top: 0px;
        border: 0;
        background-size: 16px;
        z-index: 999;
        outline: 1px solid #d7d7d7;
        line-height: 42px;
        padding-left: 14px;
        font-size: 16px;
        color: #000;
      }
      .select_1 {
        left: 100px;
      }
      .select_2 {
        left: 336px;
      }
      .select_3 {
        left: 572px;
      }
      p {
        display: inline-block;
        position: absolute;
        left: 800px;
        top: 0px;
        height: 40px;
        span {
          padding: 2px 5px;
          font-size: 18px;
          color: #df001f;
        }
      }
    }
    .map {
      position: relative;
      height: 600px;
      margin: 50px auto;
      padding: 0 50px;
      div {
        float: left;
      }
      .map-left {
        width: 800px;
        height: 100%;
      }
      .map-right {
        width: 360px;
        border: 1px solid #eee;
        height: 100%;
        box-sizing:border-box;
        input {
          display: block;
        }
        .map_list {
          cursor: pointer;
          box-sizing:border-box;
          padding: 0 30px;
          margin-top: 20px;
          margin-bottom:20px;
          width: 100%;
          .nearest {
            margin-bottom: 10px;
            font-size: 14px;
            color: #A7A7A7;
          }
          h2 {
            font-size: 18px;
            font-weight: 500;
            color: #212121;
            font-weight: normal;
          }
          .distance {
            position: relative;
            right:0px;
            width: 100%;
            font-size: 14px;
            color: #df001f;
            margin-bottom: 4px;
            height: 20px;
            text-align: right;
            font-size:18px;
          }
          .address{
            color: #A6A0A0;
            height: 50px;
          }
          &:hover{
            background: #eee;
          }
        }
      }
    }
  }
</style>

