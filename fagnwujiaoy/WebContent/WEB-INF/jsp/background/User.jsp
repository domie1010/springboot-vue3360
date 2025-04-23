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
<title>请输入标题</title>
<link rel="stylesheet" type="text/css" href="css/css/background/skin.css" />
<script type=text/javascript src="js/js/foreground/jquery.min.js"></script>
</head>
    <body>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <!-- 头部开始 -->
            <tr>
                <td width="17" valign="top" background="image/image/background/mail_left_bg.gif">
                    <img src="image/image/background/left_top_right.gif" width="17" height="29" />
                </td>
                <td valign="top" background="image/image/background/content_bg.gif">
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="image/image/background/content_bg.gif">
                        <tr><td height="31"><div class="title">添加栏目</div></td></tr>
                    </table>
                </td>
                <td width="16" valign="top" background="image/image/background/mail_right_bg.gif"><img src="image/image/background/nav_right_bg.gif" width="16" height="29" /></td>
            </tr>
            <!-- 中间部分开始 -->
            <tr>
                <!--第一行左边框-->
                <td valign="middle" background="image/image/background/mail_left_bg.gif">&nbsp;</td>
                <!--第一行中间内容-->
                <td valign="top" bgcolor="#F7F8F9">
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <!-- 空白行-->
                        <tr><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <tr>
                            <td colspan="4">
                                <table>
                                    <tr>
                                        <td width="100" align="center"><img src="image/image/background/mime.gif" /></td>
                                        <td valign="bottom"><h3 style="letter-spacing:1px;">在这里，您可以根据您的需求，填写网站参数！</h3></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 一条线 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <!-- 添加产品开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <form action="sys/userUpdate" method="post" onsubmit="return check();">
                                            <input type="hidden" value="${user['id'] }" name="id">
                                                <table width="100%"class="cont">
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="15%">用户名：</td>
                                                        <td width="25%"><input class="text" type="text" name="account" id="account" value="${user['account'] }" /></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="15%">密码：</td>
                                                        <td width="25%"><input class="text" type="text" name="password" id="password" value="${user['password'] }" /></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="15%">电话：</td>
                                                        <td width="25%"><input class="text" type="text" name="tel" id="tel" value="${user['tel'] }" /></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="15%">地址：</td>
                                                        <td width="25%"><input class="text" type="text" name="address" id="address" value="${user['address'] }" /></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="15%">邮箱：</td>
                                                        <td width="25%"><input class="text" type="text" name="email" id="email" value="${user['email'] }" /></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <c:if test="${user['type'] eq 3}" var="c">
    	                                                <tr id="li">
                                                    </c:if>
                                                    <c:if test="${!c }">
	                                                    <tr id="li" style="display: none">
                                                    </c:if>
                                                        <td width="2%">&nbsp;</td>
                                                        <td width="15%">安全码：</td>
                                                        <td width="25%"><input class="text" type="text" name="safe" id="safe" value="${user['safe'] }" /></td>
                                                        <td width="2%">&nbsp;</td>
                                                    </tr>
                                                    <c:if test="${user['type'] ne 2 }">
                                                   <tr>
                                                        <td>&nbsp;</td>
                                                        <td>身份：</td>
                                                        <td>
                                                            <select name="type" id="type" onchange="trWay(this.value);">
                                                            	<c:if test="${user['type'] eq 1}" var="s1">
                                                               		<option value="1" selected="selected">普通用户</option>
                                                            	</c:if>
                                                            	<c:if test="${!s1}">
                                                               		<option value="1">普通用户</option>
                                                            	</c:if>
                                                            	<c:if test="${user['type'] eq 3}" var="s2">
                                                               		<option value="3" selected="selected">高级用户</option>
                                                            	</c:if>
                                                            	<c:if test="${!s2}">
                                                               		<option value="3">高级用户</option>
                                                            	</c:if>
                                                            </select>
                                                        </td>
                                                    </tr>
                                                    </c:if>
                                                </table>
                                                 <input type="submit" value="提交">
                                                 <input type="hidden" value="2" name="control">
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!-- 添加产品结束 -->
                        <tr>
                            <td height="40" colspan="4">
                                <table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
                                    <tr><td></td></tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="51%" class="left_txt">
                            </td>
                            <td>&nbsp;</td><td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td background="image/image/background/mail_right_bg.gif">&nbsp;</td>
            </tr>
            <!-- 底部部分 -->
            <tr>
                <td valign="bottom" background="image/image/background/mail_left_bg.gif">
                    <img src="image/image/background/buttom_left.gif" width="17" height="17" />
                </td>
                <td background="image/image/background/buttom_bgs.gif">
                    <img src="image/image/background/buttom_bgs.gif" width="17" height="17">
                </td>
                <td valign="bottom" background="image/image/background/mail_right_bg.gif">
                    <img src="image/image/background/buttom_right.gif" width="16" height="17" />
                </td>           
            </tr>
        </table>
    </body>
    <script type="text/javascript">
    	function check(){
    		var account = $("#account").val();
    		var password = $("#password").val();
    		var tel = $("#tel").val();
    		var address = $("#address").val();
    		var email = $("#email").val();
    		var type = $("#type").val();
    		if(account==null){
    			alert("请输入用户名!");
    			return false;
    		}
    		if(password==null){
    			alert("请输入密码!");
    			return false;
    		}
    		if(tel==null){
    			alert("请输入电话!");
    			return false;
    		}
    		if(address==null){
    			alert("请输入地址!");
    			return false;
    		}
    		if(email==null){
    			alert("请输入邮箱!");
    			return false;
    		}
    		alert("提交成功！");
    		return true;
    	}
    	function trWay(value){
    		if(value=='3'){
        		$("#li").show();
    		}
    		if(value=='1'){
            	$("#li").hide();
            	$("#safe").val("无")
        	}
    	}
    </script>
</html>