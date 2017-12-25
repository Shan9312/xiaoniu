<template>
	<div class="container">
		<div class="content storeDetail">
			<div class="product_img_left left">
				<ul class="imgs_bg">
					<li>
						<img :src="item" class="bg_li" :class="{currents:index==ImgItem}" v-for="(item,index) in Imgs" :key="index" alt="">
					</li>
				</ul>
				<ul class="imgs_sm">
					<li>
						<img class="sm_li" :class="{currents:isCurrents==index,active:isCurrents==index}" v-for="(item,index) in Imgs" :key="index" :src="item" @click="handleImg(index)" alt="">
					</li>
				</ul>
			</div>
			<div class="product_detail_right right">
				<p class="productName">NIU N1S 后尾箱 </p>
				<div class="countBox">
					<div class="selectOption">
						<P class="optionTit">价格</P>
						<span class="price">￥399</span>
					</div>
					<div class="selectOption">
						<p class="optionTit">颜色</p>
						<ul class="colorLists">
							<li @click="handleImg(index)" :class="{actives:index==ImgItem}" v-for="(item,index) in colorList" :key="index">{{item}}</li>
						</ul>
					</div>
					<div class="selectOption">
						<p class="optionTit">数量</p>
						<div class="counts">
							<span class="red" @click="redCount" :class="{disspan:count==1}">-</span>
							<input type="text" v-model="count">
							<span class="add" @click="addCount">+</span>
						</div>
					</div>
				</div>
				<div class="addCart">
					<a href="#">加入购物车</a>
					<p class="p1 p2">满499免运费</p>
					<p class="p1">客服电话400-6388-666，周一至周日7:00-21:00</p>
					<p class="p1">（仅收市话费）</p>
				</div>
			</div>
		</div>
		<div class="detail-title content" >
			 <a href="" class="a_txt">商品介绍</a>
			 <a href="" class="a_txt">详情参数</a>
			 <a href="" class="a_txt">售后政策</a>
		</div>
		<div class="detail_imgs content">
			<p><img src="../assets/img/75A2D8F35A1547DF886A299E2E5540FB.jpg" alt=""></p>
			<p><img src="../assets/img/7139EE88BECE4E07B722D1DB4AD890A5.jpg" alt=""></p>
			<p><img src="../assets/img/9B4C5B20A41E47E984332F4ABA387911.jpg" alt=""></p>
			<p><img src="../assets/img/350AC282BD1C42E6981FAEBC7013B639.jpg" alt=""></p>
			<p><img src="../assets/img/60B0824DB176415FB56B3B667B160C04.jpg" alt=""></p>
			<p><img src="../assets/img/5AA28F6184E542B1B8C9F33E76CE5438.jpg" alt=""></p>
			<p><img src="../assets/img/9D4587D576D44EE6B0F1DAFC3AE1AFFF.jpg" alt=""></p>
			
		</div>
	</div>
</template>
<script>
	export default {
		data: function () {
			return {
				colorList: ['白', '红', '灰', '蓝'],
				ImgItem: 0,
				count:1,
				isCurrents: -1,
				Imgs: [
					require('../assets/img/7FBC05F52F3B460D8275F41508402CFE.jpg'),
					require('../assets/img/5C0021187E514E2C802ADC64DE8A6A9D.jpg'),
					require('../assets/img/C9A1387D2ED24D1393040FE3C3B02B84.jpg'),
					require('../assets/img/2FC0B093E5B8406A9E1F22D48C020F06.jpg'),
				],
			}
		},
		methods: {
			handleImg: function (index) {
				this.ImgItem = index;
				this.isCurrents = index;
			},
			addCount:function(){
					this.count++;
			},
			redCount:function(){
				if(this.count>1){
					this.count--;
				}
				
			}

		}
	}
</script>
<style scoped lang="less">
	.container {
		.storeDetail {
			min-height: 655px;
			margin-top:30px;
			padding: 95px 15px 60px;
			div {
				ul {
					width: 100%;
					li {
						img {
							transition: all .6s ease-out;
							width: 100%;
						}
					}
					.currents {
						opacity: 1!important;
						z-index: 5!important;
					}
					.active {
						opacity: .6!important;
						background: #eee;
					}
				}
				.imgs_bg {
					height: 555px;
					position: relative;
					.bg_li {
						width: 100%;
						position: absolute;
						opacity: 0;
						z-index: 2;
					}
				}
				.imgs_sm {
					height: 100px;
					display: flex;
					padding: 0 50px;
					box-sizing: border-box;
					justify-content: space-between;
					border-radius: 4px;
					border: solid 1px #d1d3d3;
					.sm_li {
						width: 73px;
						height: 73px;
						margin: 13px 10px 12px 10px;
					}
				}
			}
			.product_img_left {
				height: 655px;
				width: 555px;
			}
			.product_detail_right {
				height: 655px;
				width: 555px;
				box-sizing: border-box;
				width: 495px;
				min-height: 655px;
				padding-left: 60px;
				padding-top: 60px;
				position: relative;
				.productName {
					margin-bottom: 40px;
					font-size: 26PX;
				}
				.countBox {
					.selectOption {
						height: 50px;
						margin: 30px 0px;
						line-height: 50px;
						.optionTit {
							height: 40px;
							float: left;
							margin-right: 36px;
							font-size: 14px;
						}
						.price {
							color: #df001f;
							font-size: 28px;
						}
						.colorLists {
							margin-top: 8px;
							width: 360px;
							float: left;
							line-height: 20px;
							li {
								float: left;
								min-width: 36px;
								height: 36px;
								border-radius: 4px;
								border: solid 1px #d1d3d3;
								margin-right: 10px;
								margin-bottom: 10px;
								text-align: center;
								cursor: pointer;
								font-size: 14px;
								padding: 6px;
								color: #5c6670;
								box-sizing: border-box
							}
							.actives {
								border: solid 2px #5c6670;
								padding: 5px;
							}
						}
						.counts {
							float: left;
							border-radius: 4px;
							text-align: center;
							span {
								width: 30px;
								font-size: 18px;
								display: inline-block;
								background: #e3e6e9;
								line-height: 36px;
								cursor: pointer;
								user-select:none;
							}
							.disspan{
								color: #d5d5d5;
		            opacity: 0.3;
								cursor:not-allowed;
								background:rgba(255,200,200,0.6)!important;
							}
							.red {
								padding: 2px 4px;
								border: 1px solid #d1d3d3;
							}
							.add {
								padding: 2px 2px;
								border: 1px solid #d1d3d3;
							}
							input {
								text-align: center;
								width: 39px;
								height: 36px;
								position: relative;
								top: -2px;
							}
						}
					}
				}
				.addCart {
					margin-top: 100px;
					a {
						display: block;
						width: 150px;
						text-align: center;
						border-radius: 5px;
						padding: 3px 10px;
						color: #fff;
						background: #df001f;
						margin-bottom: 40px;
					}
					.p1 {
						margin: 10px 0;
						color: #5c6670;
					}
					.p2 {
						font-weight: 700;
					}
				}
			}
		}
		.detail-title{
			margin:50px auto;
			padding:10px 50px;
			box-sizing: border-box;
			text-align: center;
			.a_txt{
				display:inline-block;
				padding:2px 8px;
				color: #5c6670;
				margin:0 50px;
				font-size:20px;
				transition: all 0.6 ease;
        &:hover{
					color:#212121;
				}
			}
		}
		.detail_imgs{
			p{
				width: 100%;
				img{
					width:100%;
				}
			}
		}
	}
</style>
