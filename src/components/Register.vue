<template>
	<div class="container register">
		<div class="register-main">
				<h2>快速注册</h2>
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
						<input type="password" :placeholder='isPwd&&!upwd?"字母、数字或下划线6-12位":"请输入密码 6-12位"'
						 v-model="upwd"
						 @blur='blurUpwd'
						>
					</div>
					<div class="txt upwds">
						<i class="icos icon iconfont icon-mima"></i>
						<span :class='{"niu-warging":isPwd2}'></span>
						<input type="password"  :placeholder='isPwd2&&!upwd2?"两次密码输入不正确":"请再次输入密码"'
						  v-model="upwd2"
					  	 @blur='blurUpwd2'
						>
					</div>
					<div class="txt email">
						<i class="icos icon iconfont icon-youxiang"></i>
						<input type="email" placeholder="请输入验证码(选填)" 
						 >
					</div>
					<p class="check">
						<input type="checkbox" v-model="isAgreechang">
						<label for="">
							已阅读并同意注册 <a href="" class="agree_a">用户协议</a>
						</label>
						<a href="" class="login_a">账号登录></a>
					</p>
						<button @click="regMsg" class="txt btn" :class="{btns:!isAgreechang}" :disabled="!isAgreechang">完成注册</button>
						<div class="txt warning_msg" v-if="isWarning_msg">注册失败，请重新注册</div>
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
			upwd2:"",
			isPwd:false,
			isPwd2:false,
			isAgree:true,
			isAgreechang: false,
			isWarning_msg:false,

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
		blurUpwd2:function(){
			if(this.upwd==this.upwd2){
				this.isPwd2=false;
			}else{
					this.isPwd2=true;
					this.upwd2="";
			}
		},
		regMsg:function(){
			this.$http.get("http://127.0.0.1:3000/reg/"+this.msg+"/"+this.upwd).then(function(data){
				//console.log(data.data);
				if(data.data.code==1){
					this.$router.push('/');
				}else{
					this.isWarning_msg=true;
				}		
			})
		},		
	},
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
		height: 635px;
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
		.upwds{
			top:260px;
		}
		.email{
			top:340px;
		}
		.btn{
			top:480px;
			text-align: center;
			background-color: #da001d;
			color:#fff;
			font-size: 16px;
			border:none;
			outline:none;
			cursor: pointer;
		}
		.warning_msg{
			top:540px;
			text-align: center;
			color: #da001d;
		}
		.btns{
		  	opacity: 0.3;
		    cursor:not-allowed;
		}
		.check{
			position: absolute;
			top:385px;
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
