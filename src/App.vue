<template>
  <div id="app">
   
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'app'
}
</script>

<style>
#app {
    font: 14px/1.5 'PingFang SC','Helvetica Neue',Helvetica,'Hiragino Sans GB',STHeitiSC-Light,'Microsoft YaHei',Arial,sans-serif;
    text-rendering: optimizeLegibility;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    background-color: #fff;
    color: #212121; 
}
body,html{
  width: 100%;
  height: 100%;
  overflow-x: hidden;
  overflow-y: auto;
 
}
body{
  position: relative;
}
html,h1,h2,h3,h4,h5,h6, body, div, span, applet, object, iframe, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    vertical-align: baseline;
    list-style: none;
    text-decoration: none;
    font-weight: 400;
    font-style: normal;
}
a:hover{
  color: #a4a9ad;
}
a{
   color:#212121;
}
.container{
  width: 100%;
  margin:0 auto;
}
.content{
  width:1170px;
  margin:0 auto;
}
.left{
  float: left;
}
.right{
  float: right;
}
.clear{
  display: table;
  content:"";
  clear: both;
}
.niu-font {
    font-family: syNormal;
    font-weight: normal;
}
</style>
