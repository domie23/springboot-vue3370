<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
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
			margin: 0 auto;
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
		
		button, button:focus {
			outline: none;
		}
		
		.data-add-container .add .layui-select-title .layui-unselect {
			padding: 0 12px;
			height: 40px;
			font-size: 14px;
			color: #333;
			border-radius: 0;
			border-width: 1px;
			border-style: solid;
			border-color: rgba(142, 182, 160, 1);
			background-color: #fff;
			box-shadow: 0 0 0px rgba(110,22,64,.8);
			text-align: left;
		}
		.data-add-container .add .layui-form-item {
			display: flex;
			align-items: center;
			justify-content: center;
		}
		.data-add-container .layui-form-pane .layui-form-item[pane] .layui-form-label {
			margin: 0;
			position: inherit;
			background: transparent;
			border: 0;
		}
		.data-add-container .add .layui-input-block {
			margin: 0;
			flex: 1;
		}
		.data-add-container .layui-form-pane .layui-form-item[pane] .layui-input-inline {
			margin: 0;
			flex: 1;
			display: flex;
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
			  <div carousel-item id="swiper-item">
				<div v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="item.img" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->
		
			<div class="data-add-container" :style='{"padding":"20px","boxShadow":"0px 0px 0px rgba(110,22,64,.8)","margin":"30px auto","borderColor":"rgba(110,22,64,.3)","backgroundColor":"rgba(245, 245, 245, 1)","borderRadius":"10px","borderWidth":"0","borderStyle":"solid"}'>
		
				<form class="layui-form layui-form-pane add" lay-filter="myForm">
					
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">项目名称：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"1px","fontSize":"14px","borderStyle":"solid","height":"40px"}' v-model="detail.xiangmumingcheng" type="text" :readonly="ro.xiangmumingcheng" name="xiangmumingcheng" id="xiangmumingcheng" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">费用：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"1px","fontSize":"14px","borderStyle":"solid","height":"40px"}' v-model="detail.feiyong" type="text" :readonly="ro.feiyong" name="feiyong" id="feiyong" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}' class="layui-form-item" pane>
		                <label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">工号</label>
		                <div class="layui-input-block">
		                    <select name="gonghao" id="gonghao" lay-filter="gonghao"  >
		                        <option value="">请选择</option>
		                        <option v-for="(item,index) in gonghao" v-bind:key="index" :value="item">{{item}}</option>
		                    </select>
		                </div>
		            </div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">教师姓名：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"1px","fontSize":"14px","borderStyle":"solid","height":"40px"}' v-model="detail.jiaoshixingming" type="text" :readonly="ro.jiaoshixingming" name="jiaoshixingming" id="jiaoshixingming" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">报名时间：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"1px","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="text" name="baomingshijian" id="baomingshijian" autocomplete="off" class="layui-input" disabled>
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">学号：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"1px","fontSize":"14px","borderStyle":"solid","height":"40px"}' v-model="detail.xuehao" type="text" :readonly="ro.xuehao" name="xuehao" id="xuehao" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">姓名：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"1px","fontSize":"14px","borderStyle":"solid","height":"40px"}' v-model="detail.xingming" type="text" :readonly="ro.xingming" name="xingming" id="xingming" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">班级：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"1px","fontSize":"14px","borderStyle":"solid","height":"40px"}' v-model="detail.banji" type="text" :readonly="ro.banji" name="banji" id="banji" autocomplete="off" class="layui-input">
						</div>
					</div>
		            <div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}' class="layui-form-item" pane>
						<label :style='{"width":"94px","padding":"0 12px 0 0","fontSize":"16px","color":"rgba(0, 0, 0, 1)","textAlign":"right"}' class="layui-form-label">手机：</label>
						<div class="layui-input-block">
							<input :style='{"padding":"0 12px","boxShadow":"0 0 0px rgba(110,22,64,.8)","borderColor":"rgba(142, 182, 160, 1)","backgroundColor":"#fff","color":"#333","borderRadius":"0","textAlign":"left","borderWidth":"1px","fontSize":"14px","borderStyle":"solid","height":"40px"}' v-model="detail.shouji" type="text" :readonly="ro.shouji" name="shouji" id="shouji" autocomplete="off" class="layui-input">
						</div>
					</div>
		            
		
					<div :style='{"padding":"10px","boxShadow":"0 0 0px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(110,22,64,.3)","borderRadius":"4px","borderWidth":"0 0 0px 0","borderStyle":"solid"}' class="layui-form-item">
						<div class="layui-input-block" style="text-align: right;margin-right: 30px;">
							<button :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(110,22,64,.5)","margin":"0 10px","borderColor":"rgba(85, 137, 152, 1)","backgroundColor":"rgba(107, 194, 186, 1)","color":"#fff","borderRadius":"90px 90px 0 0","borderWidth":"5px 0","width":"13%","fontSize":"18px","borderStyle":"solid","height":"70px"}'  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
							<button :style='{"padding":"0 10px","boxShadow":"0 0 0px rgba(110,22,64,.5)","margin":"0 10px","borderColor":"rgba(193, 193, 193, 1)","backgroundColor":"rgba(238, 238, 238, 1)","color":"rgba(152, 152, 152, 1)","borderRadius":"90px 90px 0 0","borderWidth":"5px 0","width":"13%","fontSize":"14px","borderStyle":"solid","height":"70px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                                        xiangmumingcheng : false,
                                        feiyong : false,
                                        gonghao : false,
                                        jiaoshixingming : false,
                                        baomingshijian : false,
                                        xuehao : false,
                                        xingming : false,
                                        banji : false,
                                        shouji : false,
                                        sfsh : false,
                                        shhf : false,
                                        ispay : false,
					},
                    detail: {
                        xiangmumingcheng: '',
                        feiyong: '',
                        gonghao: '',
                        jiaoshixingming: '',
                        baomingshijian: '',
                        xuehao: '',
                        xingming: '',
                        banji: '',
                        shouji: '',
                        sfsh: '',
                        shhf: '',
                        ispay: '',
                    },
					gonghao: [],
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
				vue.baseurl = http.baseurl;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img style="width: 100%;height: 100%;object-fit:cover;" class="swiper-item" src="' + http.baseurl+item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
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
						vue.detail.gonghao=res.data.gonghao
						vue.detail.jiaoshixingming=res.data.jiaoshixingming
					})
				});
                                jquery('#baomingshijian').val(getCurDateTime());
				laydate.render({
					elem: '#baomingshijian',
					type: 'datetime'
				});
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
                                        vue.ro.jiaoshixingming = true;
                                        vue.ro.baomingshijian = true;
                        if(key=='xuehao'){
                                vue.detail['xuehao'] = data[`${key}`]
                                vue.ro.xuehao = true;
                                continue;
                        }
                        if(key=='xingming'){
                                vue.detail['xingming'] = data[`${key}`]
                                vue.ro.xingming = true;
                                continue;
                        }
                        if(key=='banji'){
                                vue.detail['banji'] = data[`${key}`]
                                vue.ro.banji = true;
                                continue;
                        }
                        if(key=='shouji'){
                                vue.detail['shouji'] = data[`${key}`]
                                vue.ro.shouji = true;
                                continue;
                        }
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                                        if(o=='xiangmumingcheng'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.xiangmumingcheng = true;
                                                continue;
                                        }
                                        if(o=='feiyong'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.feiyong = true;
                                                continue;
                                        }
                                        if(o=='gonghao'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.gonghao = true;
                                                continue;
                                        }
                                        if(o=='jiaoshixingming'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.jiaoshixingming = true;
                                                continue;
                                        }
                                        if(o=='baomingshijian'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.baomingshijian = true;
                                                jquery('#baomingshijian').val(obj[o]);
                                                continue;
                                        }
                                        if(o=='xuehao'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.xuehao = true;
                                                continue;
                                        }
                                        if(o=='xingming'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.xingming = true;
                                                continue;
                                        }
                                        if(o=='banji'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.banji = true;
                                                continue;
                                        }
                                        if(o=='shouji'){
                                                vue.detail[o] = obj[o];
                                                vue.ro.shouji = true;
                                                continue;
                                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验
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

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('baomingxinxi/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('baomingxinxi' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('baomingxinxi' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
