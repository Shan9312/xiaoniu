<template>
	<div class="container register">
		<div class="register-main">
				<h2>用户登录</h2>
				<form action="#">
					<div class="txt tel">
						<i class="icos icon iconfont icon-shouji"></i>
						<span :class='{"niu-warging":isShow}'></span>
						<input type="tel" 
						 :placeholder='isShow&&!msg?"手机号不正确":"请输入手机号"'
						 v-model="msg"
						 @blur='blurTest'
						 >
					</div>
					<div class="txt upwd">
						<i class="icos icon iconfont icon-mima-copy-copy"></i>
						<span :class='{"niu-warging":isPwd}'></span>
						<input type="password" :placeholder='isPwd&&!upwd?"密码输入错误":"请输入密码 6-12位"'
						 v-model="upwd"
						 @blur='blurUpwd'
						>
					</div>
					<p class="check">
						<input type="checkbox">
						<label for="">
						 记录登录状态
						</label>
						<a href="" class="login_a">忘记密码</a>
						<a href="" class="agree_a">快速注册</a>
					</p>
						<button class="txt btn">立即登录</button>
				</form>
		</div>
	</div>
</template>
<script>
export default{
	data:function(){
		return{
			msg:"",
			isShow: false,
			upwd:"",
			isPwd:false,
			isAgreechang: false
		}
	},
	methods:{
		blurTest:function(){
			var reg=/^1[35678]\d{9}$/;
			if(reg.test(this.msg)){
         this.isShow=false;
			}else{
				this.isShow=true;
				this.msg="";	
			}
		},
		blurUpwd:function(){
			var reg=/^[a-zA-Z0-9_]{6,12}$/;
			if(reg.test(this.upwd)){
				this.isPwd=false;
			}else{
					this.isPwd=true;
					this.upwd="";
			}
		},
	}
}
</script>
<style scoped lang="less">
.register{
	background:url("../assets/img/sign-bg_bc400b1d.jpg") no-repeat center;
	position: relative;
	height: 900px;
	.register-main{
		position: absolute;
		left:50%;
		top:70px;
		background-color: #f4f5f3;
		transform: translateX(-50%);
		width: 500px;
		height: 445px;
    h2{
			text-align: center;
			font-size:24px;
			margin-top:30px;
			font-weight: normal;
			margin-bottom: 50px;
		}
		.txt{
			width: 300px;
			background: #fff;
			border-radius: 18px;
			height: 36px;
			left:50%;
			top:0px;
			transform: translateX(-50%);
			line-height: 36px;
			position: absolute;
			.icos{
				width: 40px;
        height: 36px;
				top:0px;
				left: 0px;
				cursor: pointer;
				position: relative;
				left:10px;
				border:1px solide red;
			}
			.niu-warging{
				width: 38px;
				height: 36px;
				left:-2px;
				position: absolute;
				background:url("./../assets/img/disabled_small_35ed2bee.png") no-repeat center;
				z-index:10;
			}
			input{
				border:none;
				outline: none;
				margin-left: 20px;
			}
			
		}
		
		.tel{
			top:100px;
		}
		.upwd{
			top:180px;
		}
		.btn{
			top:350px;
			text-align: center;
			background-color: #da001d;
			color:#fff;
			font-size: 16px;
			border:none;
			outline:none;
		}
		.btns{
		  	opacity: 0.3;
		   cursor:not-allowed;
		}
		.check{
			position: absolute;
			top:260px;
			left:50%;
			width: 300px;
			font-size: 12px;
			transform: translateX(-50%);
			input{
				vertical-align: middle;
			}
      .agree_a{
				font-size: 12px;
        color: #15c;
			}
			.login_a{
				position: absolute;
				right:10px;
				height: 36px;
        top:0px;
			}

		}

	}
}
</style>
			border:1px solid red;
