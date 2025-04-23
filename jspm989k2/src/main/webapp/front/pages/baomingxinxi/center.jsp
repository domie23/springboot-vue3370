<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 个人中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>个人中心</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		html::after {
			position: fixed;
			top: 0;
			right: 0;
			left: 0;
			bottom: 0;
			content: '';
			display: block;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
			z-index: -1;
		}
		#swiper {
			overflow: hidden;
		}
		#swiper .layui-carousel-ind li {
			width: 16px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 3px;
			background-color: #f7f7f7;
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 24px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 0;
			background-color: rgba(110,22,64,1);
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
	
		.index-title {
			text-align: center;
			box-sizing: border-box;
			width: 980px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
		.index-title span {
			padding: 0 10px;
			line-height: 1.4;
		}
		.center-container .layui-nav-tree {
			width: 100%;
		}
		.center-container .layui-nav {
			position: inherit;
		}
		.center-container .layui-nav-tree .layui-nav-item {
			height: 70px;
			line-height: 70px;
			font-size: 14px;
			color: rgba(152, 152, 152, 1);
			border-width: 5px 0;
			border-style: solid;
			border-color: rgba(193, 193, 193, 1);
			border-radius: 90px 90px 0 0;
			background-color: rgba(238, 238, 238, 1);
			box-shadow: 0 0 6px rgba(255,0,0,0);
			text-align: center;
		}
		.center-container .layui-nav-tree .layui-nav-bar {
			height: 70px !important;
			opacity: 0 !important;
		}
		.center-container .layui-nav-tree .layui-nav-item.layui-this {
			font-size: 14px;
			color: #fff;
			border-width: 5px 0;
			border-style: solid;
			border-color: rgba(85, 137, 152, 1);
			border-radius: 90px 90px 0 0;
			background-color: rgba(107, 194, 186, 1);
			box-shadow: 0 0 0px rgba(255,0,0,0);
		}
		.center-container .layui-nav-tree .layui-nav-item:hover {
			font-size: 14px;
			color: #fff;
			border-width: 0;
			border-style: solid;
			border-color: rgba(110,22,64,.3);
			border-radius: 0;
			background-color: rgba(107, 194, 186, 1);
			box-shadow: 0 0 0px rgba(255,0,0,0);
		}
		.center-container .layui-nav-tree .layui-nav-item a {
			line-height: inherit;
			height: auto;
			background-color: inherit;
			color: inherit;
			text-decoration: none;
		}
		.right-container {
			position: relative;
		}
	
		.right-container .layui-form-item {
			display: flex;
			align-items: center;
		}
		.right-container .layui-input-block {
			margin: 0;
			flex: 1;
		}
		.right-container .input .layui-input {
			padding: 0 12px;
			height: 40px;
			font-size: 14px;
			color: #333;
			border-radius: 0;
			border-width: 1px;
			border-style: solid;
			border-color: rgba(54, 83, 80, 1);
			background-color: #fff;
			box-shadow: 0 0 0px rgba(110,22,64,.8);
			text-align: left;
		}
		.right-container .select .layui-input {
			padding: 0 12px;
			height: 40px;
			font-size: 14px;
			color: #333;
			border-radius: 0;
			border-width: 1px;
			border-style: solid;
			border-color: rgba(54, 83, 80, 1);
			background-color: #fff;
			box-shadow: 0 0 0px rgba(110,22,64,.8);
			text-align: left;
		}
		.right-container .date .layui-input {
			padding: 0 12px;
			height: 40px;
			font-size: 14px;
			color: #333;
			border-radius: 0;
			border-width: 1px;
			border-style: solid;
			border-color: rgba(54, 83, 80, 1);
			background-color: #fff;
			box-shadow: 0 0 0px rgba(110,22,64,.8);
			text-align: left;
		}
	</style>
	<body>

		<div id="app">
			<!-- 轮播图 -->
			<!-- <div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div> -->
			<div class="layui-carousel" id="swiper" :style='{"boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","width":"100%","borderStyle":"solid"}'>
			  <div carousel-item>
				<div v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="item.img" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->

			<!-- 标题 -->
			<!-- <h2 style="margin-top: 20px;" class="index-title">USER / CENTER</h2>
			<div class="line-container">
				<p class="line" style="background: #EEEEEE;"> 个人中心 </p>
			</div> -->
			<div class="index-title" :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"10px auto","borderColor":"rgba(107, 194, 186, 1)","backgroundColor":"rgba(255, 255, 255, 1)","color":"rgba(107, 194, 186, 1)","borderRadius":"4px","borderWidth":"4px","fontSize":"24px","borderStyle":"solid","height":"auto"}'>
			  <span>USER / CENTER</span><span>个人中心</span>
			</div>
			<!-- 标题 -->

			<div class="center-container">
				<!-- 个人中心菜单 config.js-->
				<div class="left-container" :style='{"padding":"0 20px","boxShadow":"0px 0px 0px rgba(110,22,64,.8)","margin":"0 10px 0 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"rgba(255, 255, 255, 1)","borderRadius":"0","borderWidth":"0 0 1px 0","width":"160px","borderStyle":"solid"}'>
					<ul class="layui-nav layui-nav-tree">
						<li v-for="(item,index) in centerMenu" v-bind:key="index" class="layui-nav-item" :class="index==0?'layui-this':''">
							<a :href="'javascript:jump(\''+item.url+'\')'">{{item.name}}</a>
						</li>
					</ul>
				</div>
				<!-- 个人中心菜单 -->
				<!-- 个人中心 -->
				<div class="right-container" :style='{"padding":"20px","boxShadow":"0px 0px 0px rgba(110,22,64,.8)","margin":"0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"0","borderWidth":"0","borderStyle":"solid"}'>
					<form class="layui-form" lay-filter="myForm">
						<!-- 主键 -->
						<input type="hidden" name="id" id="id" />
						<div class="layui-form-item"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}'>
							<label  :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">项目名称</label>
							<div class="layui-input-block input">
								<input type="text"  name="xiangmumingcheng" name="xiangmumingcheng" id="xiangmumingcheng" placeholder="项目名称" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}'>
							<label  :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">费用</label>
							<div class="layui-input-block input">
								<input type="text"  name="feiyong" name="feiyong" id="feiyong" placeholder="费用" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item" :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}'>
							<label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">工号</label>
							<div class="layui-input-block select">
								<select name="gonghao" id="gonghao" >
									<option value="">请选择</option>
									<option v-for="(item,index) in gonghao" v-bind:key="index" :value="item">{{item}}</option>
								</select>
							</div>
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}'>
							<label  :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">教师姓名</label>
							<div class="layui-input-block input">
								<input type="text" readonly="readonly" name="jiaoshixingming" name="jiaoshixingming" id="jiaoshixingming" placeholder="教师姓名" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}'>
							<label  :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">报名时间</label>
							<div class="layui-input-block date">
								<input type="text" name="baomingshijian" disabled="disabled" id="baomingshijian" placeholder="报名时间" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}'>
							<label  :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">学号</label>
							<div class="layui-input-block input">
								<input type="text"  name="xuehao" name="xuehao" id="xuehao" placeholder="学号" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}'>
							<label  :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">姓名</label>
							<div class="layui-input-block input">
								<input type="text"  name="xingming" name="xingming" id="xingming" placeholder="姓名" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}'>
							<label  :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">班级</label>
							<div class="layui-input-block input">
								<input type="text"  name="banji" name="banji" id="banji" placeholder="班级" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item"  :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}'>
							<label  :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">手机</label>
							<div class="layui-input-block input">
								<input type="text"  name="shouji" name="shouji" id="shouji" placeholder="手机" autocomplete="off" class="layui-input">
							</div>
						</div>

						<div class="layui-form-item">
							<div class="layui-input-block" style="display: flex;flex-wrap:wrap;">
								<button :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(110,22,64,.5)","margin":"10px auto 0","borderColor":"rgba(85, 137, 152, 1)","backgroundColor":"rgba(107, 194, 186, 1)","color":"#fff","borderRadius":"90px 90px 0 0","borderWidth":"5px 0","width":"13%","fontSize":"18px","borderStyle":"solid","height":"70px"}' class="layui-btn btn-submit btn-theme" lay-submit lay-filter="*">更新信息</button>
				<button :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(110,22,64,.5)","margin":"10px auto","borderColor":"rgba(193, 193, 193, 1)","backgroundColor":"rgba(238, 238, 238, 1)","color":"rgba(152, 152, 152, 1)","borderRadius":"90px 90px 0 0","borderWidth":"5px 0","width":"13%","fontSize":"18px","borderStyle":"solid","height":"70px"}' @click="logout" class="layui-btn btn-submit">退出登录</button>
							</div>
						</div>
						<!-- <div class="layui-form-item">
							<div class="layui-input-block">
								<button :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(110,22,64,.5)","margin":"10px auto","borderColor":"rgba(193, 193, 193, 1)","backgroundColor":"rgba(238, 238, 238, 1)","color":"rgba(152, 152, 152, 1)","borderRadius":"90px 90px 0 0","borderWidth":"5px 0","width":"13%","fontSize":"18px","borderStyle":"solid","height":"70px"}' @click="logout" class="layui-btn btn-submit">退出登录</button>
							</div>
						</div> -->
					</form>
				</div>
				<!-- 个人中心 -->
			</div>

		</div>

		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					gonghao: [],
					centerMenu: centerMenu
				},
                updated: function() {
					layui.form.render(null, 'myForm');
				},
				methods: {
					jump(url) {
						jump(url)
					},
					logout(){
						localStorage.removeItem('Token');
						localStorage.removeItem('role');
						localStorage.removeItem('sessionTable');
						localStorage.removeItem('adminName');
						localStorage.removeItem('userid');
						localStorage.removeItem('vip');
						localStorage.removeItem('userTable');
						window.parent.location.href = '../login/login.jsp';
					}
				}
			})

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;

				// 充值
				jquery('#btn-recharge').click(function(e) {
					layer.open({
						type: 2,
						title: '用户充值',
						area: ['900px', '600px'],
						content: '../shop-recharge/recharge.jsp'
					});
				});
				// 会员购买
				jquery('#btn-buyvip').click(function(e) {
					layer.open({
						type: 2,
						title: '会员购买',
						area: ['900px', '600px'],
						content: '../shop-recharge/buyvip.jsp'
					});
				});

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						let swiperList = [];
						res.data.list.forEach(element => {
											if (element.value != null) {
											  swiperList.push({
												img: http.baseurl+element.value
											  });
											}
						});
						vue.swiperList = swiperList;
						vue.$nextTick(() => {
						  carousel.render({
						      elem: '#swiper',
						              width: '100%',
						      height: '300px',
						      arrow: 'hover',
						      anim: 'default',
						      autoplay: 'true',
						      interval: '3000',
						      indicator: 'none'
						  });
						})
					}
				});

				http.request(`option/jiaoshi/gonghao`,'get',{},(res)=>{
					vue.gonghao = res.data
				});
				form.on('select(gonghao)', (data) => {
					console.log(data.value);
					http.request('follow/jiaoshi/gonghao', 'get', {
						columnValue: data.value
					}, function(res) {
						jquery("#jiaoshixingming").val(res.data.jiaoshixingming)
					})
				});
                                laydate.render({
                                        elem: '#baomingshijian',
                                        type: 'datetime'
                                });
				
				// 查询用户信息
				let table = localStorage.getItem("userTable");

				if(!table){
					layer.msg('请先登录', {
						time: 2000,
						icon: 5
					}, function() {
						window.parent.location.href = '../login/login.jsp';
					});
				}

				
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					form.val("myForm", data.data);
				});

				// 提交表单
				form.on('submit(*)', function(data) {
					data = data.field;
				    if(!isNumber(data.feiyong)){
					layer.msg('费用应输入数字', {
									time: 2000,
									icon: 5
								});
					return false
				    }
				    if(!data.gonghao){
					layer.msg('工号不能为空', {
									time: 2000,
									icon: 5
								});
					return false
				    }
				    if(!isMobile(data.shouji)){
					layer.msg('手机应输入手机格式', {
									time: 2000,
									icon: 5
								});
					return false
				    }
					http.requestJson(table + '/update', 'post', data, function(res) {
						layer.msg('修改成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.reload();
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
