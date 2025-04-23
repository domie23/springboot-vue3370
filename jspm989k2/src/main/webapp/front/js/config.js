
var projectName = '普通话培训信息管理系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
]


var indexNav = [

{
	name: '项目培训',
	url: './pages/xiangmupeixun/list.jsp'
}, 

{
	name: '公告信息',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspm989k2/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-list","buttons":["新增","查看","修改","删除"],"menu":"教师","menuJump":"列表","tableName":"jiaoshi"}],"menu":"教师管理"},{"child":[{"appFrontIcon":"cuIcon-skin","buttons":["查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["新增","查看","修改","删除"],"menu":"项目培训","menuJump":"列表","tableName":"xiangmupeixun"}],"menu":"项目培训管理"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","修改","删除","报表"],"menu":"报名信息","menuJump":"列表","tableName":"baomingxinxi"}],"menu":"报名信息管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["新增","查看","修改","删除"],"menu":"培训安排","menuJump":"列表","tableName":"peixunanpai"}],"menu":"培训安排管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","修改","删除","导出"],"menu":"成绩信息","menuJump":"列表","tableName":"chengjixinxi"}],"menu":"成绩信息管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","删除"],"menu":"评价信息","menuJump":"列表","tableName":"pingjiaxinxi"}],"menu":"评价信息管理"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"},{"appFrontIcon":"cuIcon-discover","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","报名"],"menu":"项目培训列表","menuJump":"列表","tableName":"xiangmupeixun"}],"menu":"项目培训模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","删除","审核","成绩"],"menu":"报名信息","menuJump":"列表","tableName":"baomingxinxi"}],"menu":"报名信息管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["查看"],"menu":"培训安排","menuJump":"列表","tableName":"peixunanpai"}],"menu":"培训安排管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","修改","删除","导出"],"menu":"成绩信息","menuJump":"列表","tableName":"chengjixinxi"}],"menu":"成绩信息管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看"],"menu":"评价信息","menuJump":"列表","tableName":"pingjiaxinxi"}],"menu":"评价信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","报名"],"menu":"项目培训列表","menuJump":"列表","tableName":"xiangmupeixun"}],"menu":"项目培训模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"教师","tableName":"jiaoshi"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","删除","支付","评价"],"menu":"报名信息","menuJump":"列表","tableName":"baomingxinxi"}],"menu":"报名信息管理"},{"child":[{"appFrontIcon":"cuIcon-cardboard","buttons":["查看"],"menu":"培训安排","menuJump":"列表","tableName":"peixunanpai"}],"menu":"培训安排管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看"],"menu":"成绩信息","menuJump":"列表","tableName":"chengjixinxi"}],"menu":"成绩信息管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看"],"menu":"评价信息","menuJump":"列表","tableName":"pingjiaxinxi"}],"menu":"评价信息管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","报名"],"menu":"项目培训列表","menuJump":"列表","tableName":"xiangmupeixun"}],"menu":"项目培训模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
