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
<link href="css/css/foreground/pagetitlemenu_b2.css" rel="stylesheet" type="text/css" />
<link href="css/css/foreground/jobform.css" rel="stylesheet" type="text/css" />
<link href="css/css/foreground/jobcontent.css" rel="stylesheet" type="text/css" />
<link href="css/css/foreground/f.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/js/foreground/base.js"></script>
<script type="text/javascript" src="js/js/foreground/common.js"></script>
<script type="text/javascript" src="js/js/foreground/form.js"></script>
<script type="text/javascript" src="js/js/foreground/blockui.js"></script>
<script type="text/javascript" src="js/js/foreground/channelmenu_1030.js"></script>
<script type="text/javascript" src="js/js/foreground/jobform.js"></script>
<title>请输入标题</title>
</head>
<body style='background:#ffffff'>
<script>
var PDV_PAGEID='293'; 
var PDV_RP='index.html'; 
var PDV_COLTYPE='job'; 
var PDV_PAGENAME='detail'; 
</script>

<div id='contain' style='width:900px;background:#ffffff;margin:0px auto;padding:10px'>

<div id='top' style='width:900px;height:133px;background:none transparent scroll repeat 0% 0%'>


<!-- 二级导航菜单 -->

<div id='pdv_3507' class='pdv_class'   style='width:900px;height:71px;top:60px;left:0px; z-index:2'>
<div id='spdv_3507' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		导航菜单
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-13.html" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">


<div id="channelmenu">
<div id="channelmenumain">


	<a href="sys/request/index" target="_self" class="channelmenu_main" id="channelmenu_main_0" onMouseOver="showSubMenu('channelmenu_main','channelmenu_sub','0')">首页</a>

	<a href="sys/good/query" target="_self" class="channelmenu_main" id="channelmenu_main_1" onMouseOver="showSubMenu('channelmenu_main','channelmenu_sub','1')">房屋信息</a>

	<a href="sys/bargain/query?customName=${sessionScope['User']['account'] }" target="_self" class="channelmenu_main" id="channelmenu_main_2" onMouseOver="showSubMenu('channelmenu_main','channelmenu_sub','2')">订单管理</a>
	
	<a href="sys/message/query" target="_self" class="channelmenu_main" id="channelmenu_main_4" onMouseOver="showSubMenu('channelmenu_main','channelmenu_sub','4')">广告信息</a>
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

<!-- 网站标志 -->

<div id='pdv_3604' class='pdv_class'  title='网站标志' style='width:180px;height:70px;top:5px;left:6px; z-index:3'>
<div id='spdv_3604' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px #dddddd solid;background:#fff;">
	<div style="height:25px;margin:1px;display:none;background:#cccccc;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:#fff">
		网站标志
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-13.html" style="line-height:25px;color:#fff">更多</a>
		</div>
	</div>
<div style="padding:0px">


<h2>房屋交易系统</h2>


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


<!-- 购物车提示信息 -->

<div id='pdv_3727' class='pdv_class'  title='购物车' style='width:452px;height:27px;top:10px;left:448px; z-index:6'>
<div id='spdv_3727' class='pdv_top' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		购物车
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-13.html" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">

<div style=" background:url(image/image/foreground/carttop.gif) left -25px repeat-x;height:22px;">
	<div style="float:right;width:12px;height:22px;background:url(image/image/foreground/carttop.gif) -28px 0px no-repeat;"></div>
	<div style="float:left;width:12px;height:22px;background:url(image/image/foreground/carttop.gif) left 0px no-repeat;"></div>
	<div style="float:left;height:22px;background:url(image/image/foreground/smallcart.gif) 10px no-repeat;padding-left:35px;">
	购物车 <span style="color: #ff6600;font:bold 12px/22px Verdana, Arial, Helvetica, sans-serif"> ${sessionScope['count'] } </span> 件商品
 <span style="color: #e0d989;font:12px/22px Verdana, Arial;padding:0px 3px">|</span> <a href="sys/collect/query">查看购物车</a>
	<span style="color: #e0d989;font:12px/22px Verdana, Arial;padding:0px 3px">|</span> <a href="sys/bargain/query">我的订单</a>
	<span style="color: #e0d989;font:12px/22px Verdana, Arial;padding:0px 3px">|</span> <a href="sys/request/background/index">后台系统</a>
	<span style="color: #e0d989;font:12px/22px Verdana, Arial;padding:0px 3px">|</span> <a href="sys/queryOne?id=${sessionScope['User']['id'] }">会员中心</a>
	</div>
</div>



</div>
</div>

</div>
</div>
</div>
<div id='content' style='width:900px;height:1417px;background:none transparent scroll repeat 0% 0%;margin:10px auto'>


<!-- 网页标题(菜单) -->

<div id='pdv_3363' class='pdv_class'  title='客户中心' style='width:169px;height:355px;top:0px;left:0px; z-index:1'>
<div id='spdv_3363' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:1px #e0e0e0 solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		客户中心
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="-13.html" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">


<div class="titlemenu_b2" >


<a href="aboutus.html" target="_self" class="titlemenu_b2">关于我们</a>


<a href="guide.html" target="_self" class="titlemenu_b2">购物指南</a>


<a href="payment.html" target="_self" class="titlemenu_b2">支付方式</a>


<a href="dev.html" target="_self" class="titlemenu_b2">配送说明</a>


<a href="service.html" target="_self" class="titlemenu_b2">售后服务</a>


<a href="contact.html" target="_self" class="titlemenu_b2">联系方式</a>


<a href="index-8.html" target="_self" class="titlemenu_b2">投诉建议</a>
 
</div>

</div>
</div>

</div>
</div>

<!-- 应聘申请表单 -->

<div id='pdv_3366' class='pdv_class'  title='职位信息' style='width:716px;height:480px;top:49px;left:184px; z-index:8'>
<div id='spdv_3366' class='pdv_content' style='overflow:visible;width:100%;'>
<div class="pdv_border" style="border:1px #d4d4d4 solid;height:100%;padding:0;margin:0;background:#fff">
<div style="position:relative;height:30px;border:0px;margin:-1px -1px 0px -1px;background:url(image/image/foreground/top-2.gif) left no-repeat">
	<div style="float:left;height:30px;font:bold 12px/30px Verdana, Arial, Helvetica, sans-serif;text-align:left;padding:0px 0px 0px 24px;color:#f26522;">
	用户注册
	</div>
	<div style="float:right;width:50px;height:30px;text-align:right;background:url(image/image/foreground/top-2.gif) -750px no-repeat">
	<a href="-13.html" style="font:12px/28px simsun;color:#555;margin-right:8px;display:none">更多&gt;&gt;</a>
	</div>
</div>
<div style="padding:20px">

<div  id="notice" class="noticediv"></div>
<form id="jobform" method="post" action="sys/userAdd" name="jobform" onsubmit="return check();">
<table width="100%" border="0" cellspacing="0" cellpadding="3" >

<tr> 
      <td width="80" align="right">用 户 名：</td>
      <td> 
        <input type="text" name="account" id="account" class="input" style="width:200px" />
        <font style='color:red'>*</font> <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>

    <tr> 
      <td width="80" align="right">密   码：</td>
      <td> 
        <input type="text" name="password" id="password" class="input" style="width:200px" />
        <font style='color:red'>*</font> <div style="padding-top:3px;color:#666"></div> </td>
    </tr>


	<tr> 
      <td width="80" align="right">地   址：</td>
      <td> 
        <input type="text" name="address" class="input" style="width:200px" />
        <font style='color:red'></font> <div style="padding-top:3px;color:#666"></div>  </td>
    </tr>

    <tr> 
      <td width="80" align="right">邮   箱：</td>
      <td> 
        <input type="text" name="Email" class="input" style="width:200px" />
        <font style='color:red'></font> <div style="padding-top:3px;color:#666"></div> </td>
    </tr>
	<tr> 
      <td width="80" align="right">电   话：</td>
      <td> 
       <input type="text" name="tel" class="input" style="width:200px" />
        <font style='color:red'></font> <div style="padding-top:3px;color:#666"></div> </td>
    </tr>
	<tr> 
      <td width="80" align="right"></td>
      <td>
	  </td>
    </tr>
    <tr> 
      <td width="80" align="right">&nbsp;</td>
      <td height="30">
        <input type='hidden' name='id' value="${user['id'] }">
        <input type='hidden' name='type' value="1">
        <input type="submit" name="ccc" value="提交" class="submit">
        <input name='jobid' type='hidden' id="jobid" value='7'>       
	  </td>
    </tr>
  </table>
</form>


</div>
</div>

</div>
</div>

<!-- 职位信息详情 -->


<!-- 当前位置提示条 -->

<div id='pdv_3365' class='pdv_class'  title='当前位置' style='width:717px;height:38px;top:0px;left:183px; z-index:9'>
<div id='spdv_3365' class='pdv_content' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;background:url(image/image/foreground/top-2.png) 0px 0px no-repeat;margin:0px;height:35px">
<div style="float:right;width:10px;height:35px;background:url(image/image/foreground/top-2.png) -890px 0px no-repeat">
</div>
<div style="margin:0px;padding:8px">
 


</div>
</div>

</div>
</div>
</div>
<div id='bottom' style='width:900px;height:208px;background:none transparent scroll repeat 0% 0%'>


<!-- 底部信息编辑区 -->

<div id='pdv_3839' class='pdv_class'  title='脚注信息' style='width:900px;height:175px;top:38px;left:0px; z-index:7'>
<div id='spdv_3839' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:1px #ddd solid;height:100%;padding:0;margin:0;background:#f8f8f8">
<div style="position:relative;height:8px;line-height:8px;border:0px;padding:0;margin:-1px -1px 0px -1px;background:url(image/image/foreground/top.png) 0px 0px no-repeat;">
	<div style="float:left;width:8px;height:8px;line-height:8px;background:url(image/image/foreground/top.png) 0px 0px no-repeat">
	</div>
	<div style="float:right;width:8px;height:8px;line-height:8px;background:url(image/image/foreground/top.png) -892px 0px no-repeat">
	</div>
	
</div>

<div style="margin:0px 7px 0px 7px;padding:15px">
<div style="width:100%;text-align:center;font:12px/20px Arial, Helvetica, sans-serif">
<div style="LINE-HEIGHT: 22px">Copyright ? 2009-2010&nbsp;All Rights Reserved. 房屋交易网站 版权所有&nbsp;&nbsp;&nbsp;<a class=icp href="http://www.miibeian.gov.cn/" target=_blank><font color=#648675>沪ICP备01234567号</font></a><br />服务时间：<span class=red><strong><font color=#ff0000>周一至周日 08:30 — 20:00</font></strong></span>&nbsp; 全国订购及服务热线：<span class=red><strong><font color=#ff0000>021-98765432</font></strong></span>&nbsp; <br />联系地址：上海市某某路某大厦20楼B座2008室&nbsp;&nbsp;&nbsp;邮政编码：210000&nbsp;&nbsp;<br /><br /><img alt="" src="image/image/foreground/200910221256198928725.gif" border=0 />&nbsp;<img alt="" src="image/image/foreground/200910221256198943820.gif" border=0 />&nbsp;<img alt="" src="image/image/foreground/200910221256198954080.gif" border=0 /></div><!# footer end -->
</div>

</div>
</div>
<div style="margin-top:-9px;height:9px;line-height:9px;background:url(image/image/foreground/top.png) 0px -98px no-repeat">&nbsp;</div>
<div style="float:right;margin-top:-9px;width:10px;height:9px;line-height:9px;background:url(image/image/foreground/top.png) -890px -98px no-repeat">&nbsp;</div>

</div>
</div>

<!-- 底部菜单（一级） -->

<div id='pdv_3792' class='pdv_class'   style='width:900px;height:38px;top:0px;left:0px; z-index:10'>
<div id='spdv_3792' class='pdv_bottom' style='overflow:hidden;width:100%;height:100%'>
<div class="pdv_border" style="border:0px;background:url(image/image/foreground/top-2.png) 0px 0px no-repeat;margin:0px;height:35px">
<div style="float:right;width:10px;height:35px;background:url(image/image/foreground/top-2.png) -890px 0px no-repeat">
</div>
<div style="margin:0px;padding:3px">


<div id="bottommenu">|

<a href="aboutus.html" target="_self">关于我们</a>|

<a href="guide.html" target="_self">购物指南</a>|

<a href="payment.html" target="_self">支付方式</a>|

<a href="dev.html" target="_self">配送说明</a>|

<a href="service.html" target="_self">售后服务</a>|

<a href="contact.html" target="_self">联系方式</a>|

<a href="index-8.html" target="_self">投诉建议</a>|

<a href="index-9.html" target="_self">诚聘英才</a>|

<a href="index-7.html" target="_self">友情链接</a>|
 
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
	var account = $("#account").val();
	var password = $("#password").val();
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
</script>
<!-- awwwb.com -->
</html>