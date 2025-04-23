<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	 /*
    @Author:Jaylan Zhou
    @Date:
    @projectName:
    @TEL:13166803607
    @QQ:764540631
    */

	/*
	    全路径,形式如下:
	    request.getScheme():获取http协议
	    request.getServerName():获取本地服务器名
	    request.getServerPort():获取服务器端口号
	    path:访问路径
	*/
%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<base href="<%=basepath%>">
<meta http-equiv="Content-Type" content="text/html;" charset=UTF-8">
<link href="css/css/foreground/common.css" rel="stylesheet" type="text/css" />
<link href="css/css/foreground/a.css" rel="stylesheet" type="text/css" />
<link href="css/css/foreground/searchform.css" rel="stylesheet" type="text/css" />
<link href="css/css/foreground/shopquery.css" rel="stylesheet" type="text/css" />
<link href="css/css/foreground/shoptwoclass_brand.css" rel="stylesheet" type="text/css" />
<link href="css/css/foreground/style.css" rel="stylesheet" type="text/css" />
<link href="css/css/foreground/shopclass.css" rel="stylesheet" type="text/css" />
<link href="css/css/foreground/f.css" rel="stylesheet" type="text/css" />
<script type=text/javascript src="js/js/foreground/shopclass_brand.js"></script>
<script type=text/javascript src="js/js/foreground/cart.js"></script>
<script type="text/javascript" src="js/js/foreground/channelmenu_1030.js"></script>
<script type="text/javascript" src="js/js/foreground/base.js"></script>
<script type="text/javascript" src="js/js/foreground/common.js"></script>
<script type="text/javascript" src="js/js/foreground/form.js"></script>
<script type="text/javascript" src="js/js/foreground/blockui.js"></script>
<script type=text/javascript src="js/js/foreground/jquery.min.js"></script>
<title>请输入标题</title>
</head>
<body style='background:#ffffff'>
<script>
var PDV_PAGEID='301'; 
var PDV_RP='index.html'; 
var PDV_COLTYPE='shop'; 
var PDV_PAGENAME='query'; 
</script>

<div id='contain' style='width:900px;background:#ffffff;margin:0px auto;padding:10px'>

<div id='top' style='width:900px;height:133px;background:none transparent scroll repeat 0% 0%'>


<!-- 二级导航菜单 -->

<div id='pdv_3496' class='pdv_class'   style='width:900px;height:71px;top:60px;left:0px; z-index:1'>
<div id='spdv_3496' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		导航菜单
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-2.html" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">


<div id="channelmenu">
<div id="channelmenumain">


	<a href="sys/request/index" target="_self" class="channelmenu_main" id="channelmenu_main_0" onMouseOver="showSubMenu('channelmenu_main','channelmenu_sub','0')">首页</a>

	<a href="sys/good/query" target="_self" class="channelmenu_main" id="channelmenu_main_1" onMouseOver="showSubMenu('channelmenu_main','channelmenu_sub','1')">房屋信息</a>

	<a href="sys/bargain/query?customName=${sessionScope['User']['account'] }" target="_self" class="channelmenu_main" id="channelmenu_main_2" onMouseOver="showSubMenu('channelmenu_main','channelmenu_sub','2')">订单管理</a>
	
	<a href="sys/message/query" target="_self" class="channelmenu_main" id="channelmenu_main_4" onMouseOver="showSubMenu('channelmenu_main','channelmenu_sub','4')">广告信息</a>
	
	<a href="sys/request/background/index" target="_self" class="channelmenu_main" id="channelmenu_main_5" onMouseOver="showSubMenu('channelmenu_main','channelmenu_sub','5')">后台系统</a>
	<c:if test="${sessionScope['User']['type'] eq 3 }">
		<a href="sys/query" target="_self" class="channelmenu_main" id="channelmenu_main_6" onMouseOver="showSubMenu('channelmenu_main','channelmenu_sub','6')">用户信息</a>
	</c:if>
	<c:if test="${sessionScope['User']['account'] ne null }">
		<a href="sys/good/queryLord?goodLord=${sessionScope['User']['account'] }" target="_self" class="channelmenu_main" id="channelmenu_main_3" onMouseOver="showSubMenu('channelmenu_main','channelmenu_sub','3')">我的房屋</a>
	</c:if>
</div>
	<div id="channelmenu_sub">
		<div id="channelmenu_sub_left"></div><div id="channelmenu_sub_right"></div>
		<ul>
</ul>
<ul>
</ul>
<ul>
</ul>
<ul>
</ul>
<ul>
</ul>
<ul>
</ul>
<ul>
</ul>
<ul>
</ul>


		</div>
</div>


<script>initSubMenu('channelmenu_main','channelmenu_sub','');</script>

</div>
</div>

</div>
</div>

<!-- 商品搜索表单 -->

<div id='pdv_3515' class='pdv_class'  title='商品搜索' style='width:743px;height:26px;top:95px;left:92px; z-index:4'>
<div id='spdv_3515' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		商品搜索
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-1.html" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">

<script>
$(document).ready(function(){
	if($("#shopkeyword")[0].value==""){
		$("#shopkeyword")[0].value="请输入关键词";
		$("#shopkeyword").focus(function(){
			$("#shopkeyword")[0].value="";
		});
	}
	if($("#shopkeyword")[0].value=="请输入关键词"){
		$("#shopkeyword").focus(function(){
			$("#shopkeyword")[0].value="";
		});
	}
	$("#searchbutton").mouseover(function(){
			if($("#shopkeyword")[0].value=="请输入关键词"){
				$("#shopkeyword")[0].value="";
			}
	});
});
</script>
<div class="shopsearchform">
<form id="searchform" method="post" action="sys/good/query">
 
  <div class="searchform">
  房屋搜索：<select name="searchType">
      <option value="0" >选择搜索类型</option>
	  <option value="房屋名称">房屋名称</option>
	  <option value="房屋价格">房屋价格</option>
	  <option value="房屋大小">房屋大小</option>
    </select>  
  </div>
  <div class="searchform">
  </div>
  
  
  
    <div class="searchform">
    <input name="search" type="text" id="shopkeyword" value="" size="20" class="input">
  </div>
  <div class="searchform">
  <input name="imageField" id="searchbutton" type="image" src="image/image/foreground/searchxx.gif" border="0">
  </div>
</form>
</div>

</div>
</div>

</div>
</div>

<!-- 网站标志 -->

<div id='pdv_3593' class='pdv_class'  title='网站标志' style='width:180px;height:70px;top:5px;left:6px; z-index:4'>
<div id='spdv_3593' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;background:#fff;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:#fff">
		网站标志
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-2.html" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">


<h2>房屋交易系统</h2>


</div>
</div>

</div>
</div>

<!-- 购物车提示信息 -->

<div id='pdv_3716' class='pdv_class'  title='购物车' style='width:452px;height:27px;top:10px;left:448px; z-index:5'>
<div id='spdv_3716' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		购物车
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-2.html" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">




</div>
</div>

</div>
</div>
</div>
<div id='content' style='width:900px;height:1019px;background:none transparent scroll repeat 0% 0%;margin:10px auto'>


<!-- 商品检索搜索 -->

<div id='pdv_3613' class='pdv_class'  title='' style='width:701px;height:500px;left:199px; z-index:3'>
<div id='spdv_3613' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:#fff;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-2.html" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">


<div class="shopquery_cap">
	<div class="shopquery_cap_left"></div>
	<div class="shopquery_cap_right"></div>
	<div class="shopquery_paixu">
	<form id="shopquerysxform" method="get" action="http://demo.vhostgo.com/1030/shop/class/index.php">
	
	 <input name="catid" type="hidden"  value="92">
	 <input name="showbrandid" type="hidden" value="">
	 <input id="showmethod" name="showmethod" type="hidden" value="cc">
	 <input name="pricefrom" type="hidden" value="">
	 <input name="priceto" type="hidden" value="">
	 <input name="key" type="hidden" value="">
	 
	 <script>
	$(function() {
	 	$("#shopquery_paixu").attr("value","uptime");
	 	$("#shopquery_shownums").attr("value","9");
		$("#showquery_showmethod_cc")[0].className="showquery_showmethod_cc";
		$("#showquery_showmethod_lb")[0].className="showquery_showmethod_lb";
		$("#showquery_showmethod_tu")[0].className="showquery_showmethod_tu";
		$("#showquery_showmethod_cc")[0].className="showquery_showmethod_cc_now";
		$("#showquery_showmethod_cc").click(function(){
			$("input#showmethod")[0].value="cc";
			$("#shopquerysxform").submit();
		});
		$("#showquery_showmethod_lb").click(function(){
			$("input#showmethod")[0].value="lb";
			$("#shopquerysxform").submit();
		});
		$("#showquery_showmethod_tu").click(function(){
			$("input#showmethod")[0].value="tu";
			$("#shopquerysxform").submit();
		});
	 
	});
	</script>
	</form>
	</div>
	
</div>
<div class="shopquery_out">
<c:forEach items="${pager.datas }" var="good" varStatus="vs">
<div class="shopquery">
		<div class="fang" style="width:120px;height:120px">
			<div class="picFit" style="width:120px;height:120px">
			<a href="sys/good/queryOne?id=${good['id'] }" target="_self" ><img src="upload/upload/${good['url'] }" style="width:120px;height:120px" border="0" /></a>
			</div>
		</div>
		<div class="prop">
		价格：<span class="hb">￥</span><span class="price">${good['goodPrice'] }</span><br />
		</div>
		<a href="sys/good/queryOne?id=${good['id'] }" target="_self" class="prodtitle"   >${good['goodName'] }</a>
		<div class="memo" >
		${good['goodIntroduce'] }
		</div>
</div>
</c:forEach>
</div>
<script>
$(function() {
$().picFit("fill");
});
</script>
<br clear="all" />
<br />
<div id="showpages" >
	  <div id="pagesinfo">共${pager.totalCount }条 每页9条 页次：${pager.pageNow}/${pager.totalPage }</div>
	  <div id="pages"><ul><li class="pbutton"><a href=index98bc.html?page=1&amp;catid=92&amp;myord=uptime&amp;myshownums=9&amp;showmethod=cc&amp;pricefrom=&amp;priceto=&amp;showtj=&amp;showbrandid=&amp;key=>首页</a></li><li class="pbutton">上一页</li><li class="pagesnow">1</li><li class="pbutton">下一页</li><li class="opt"><select onChange="window.location=this.options[this.selectedIndex].value"></select></li><li class="pbutton"><a href=index98bc.html?page=1&amp;catid=92&amp;myord=uptime&amp;myshownums=9&amp;showmethod=cc&amp;pricefrom=&amp;priceto=&amp;showtj=&amp;showbrandid=&amp;key=>尾页</a></li></ul></div>
 </div>


</div>
</div>

</div>
</div>

<!-- 分类品牌组合查询 -->

<div id='pdv_3611' class='pdv_class'  title='' style='width:180px;height:400px;top:0px;left:0px; z-index:7'>
<div id='spdv_3611' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:#fff;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-1.html" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">


<div class="shoptwoclass">

<div id="shopclasstop_1" class="shoptwoclass_top">
<div id="shopclasscap_1" class="shoptwoclass_topright"></div>
<a href="index45e7.html?1.html" target="_self" >用户</a></div>
<c:if test="${sessionScope['User']['account'] eq null or sessionScope['User']['account'] eq '' }" var="login">
<form action="sys/login" method="post" onsubmit="return check();" id="login">
<ul id="shopclasssub_1" style="height: 40px;">

<li>用户:<input type="text" name="account" id="account" style="width: 120px;"></li>

<li>密码:<input type="password" name="password" id="password" style="width: 120px; margin-top: 5px;"></li>

<li id="li" style="display: none">验证:<input type="password" name="safe" id="safe" style="width: 120px; margin-top: 5px;"></li>

<li>身份:
	<select name="type" onchange="trWay(this.value);">
		<option value="1">普通用户</option>
		<option value="2">高级用户</option>
	</select>
</li>

<li><input type="submit" value="登录" style="margin-top: 5px;"><a href="sys/request/sign">注册</a><font color="red">${messageLogin }</font></li>

</ul>
</form>
</c:if>
<c:if test="${!login }">
<ul id="shopclasssub_1" style="height: 40px;">

<li><c:out value="${sessionScope['User']['account'] },您好"></c:out></li>

<li><a href="javascript:;" onclick="return logout();" style="color: blue;">退出</a></li>


</ul>
</c:if>
<div id="shopclasstop_2" class="shoptwoclass_top">
<div id="shopclasscap_2" class="shoptwoclass_topright"></div>
<a href="index0b5f.html?2.html" target="_self" >欢迎</a></div>
<ul id="shopclasssub_2">

<li>欢迎来到商城</li>
<li>欢迎来到商城</li>
<li>欢迎来到商城</li>
<li>欢迎来到商城</li>
<li>欢迎来到商城</li>
<li>欢迎来到商城</li>
<li>欢迎来到商城</li>
<li>欢迎来到商城</li>

</ul>

 
<br clear="all" />
</div>


</div>
</div>

</div>
</div>


</div>
</div><div id='bodyex'>

</div>

</body>
<script type="text/javascript">
	function check(){
		var account = $("#account").val()
		var password = $("#password").val()
		if(account==null||account==''){
			alert("请输入用户名!");
			return false;
		}
		if(password==null||password==''){
			alert("请输入密码!");
			return false;
		}
		return true;
	}
	function logout(){
		if(window.confirm("您确定要退出吗?")){
			window.location.href="sys/logout";
			return true;
		}
		return false;
	}
	function trWay(value){
		if(value=='2'){
    		$("#li").show();
    		$("#login").attr("action", "sys/loginVip");
		}
		if(value=='1'){
        	$("#li").hide();
        	$("#login").attr("action", "sys/login");
    	}
	}
</script>
<!-- awwwb.com -->
</html>