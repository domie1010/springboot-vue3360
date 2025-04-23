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
<link rel="stylesheet" type="text/css" href="css/css/background/skin.css" />
<script type=text/javascript src="js/js/foreground/jquery.min.js"></script>
</head>
    <body>
        <table width="100%">
            <!-- 顶部部分 -->
            <tr height="41"><td colspan="2" background="image/image/background/login_top_bg.gif">&nbsp;</td></tr>
            <!-- 主体部分 -->
            <tr style="background:url(image/image/background/login_bg.jpg) repeat-x;" height="532">
                <!-- 主体左部分 -->
                <td id="left_cont">
                    <table width="100%" height="100%">
                        <tr height="155"><td colspan="2">&nbsp;</td></tr>
                        <tr>
                            <td width="20%" rowspan="2">&nbsp;</td>
                            <td width="60%">
                                <table width="100%">
                                    <tr height="70"><td align="right"></td></tr>
                                    <tr height="274">
                                        <td valign="top" align="right">
                                            <ul>
                                                <li>房屋交易网站后台</li>
                                            </ul>
                                        </td>
                                    </tr>
                                </table>
                            <td width="15%" rowspan="2">&nbsp;</td>
                            </td>
                        </tr>
                        <tr><td colspan="2">&nbsp;</td></tr>
                    </table>
                </td>
                <!-- 主体右部分 -->
                <td id="right_cont">
                    <table height="100%">
                        <tr height="30%"><td colspan="3">&nbsp;</td></tr>
                        <tr>
                            <td width="30%" rowspan="5">&nbsp;</td>
                            <td valign="top" id="form">
                                <form action="sys/loginAdmin" method="post" onsubmit="return check();">
                                    <table valign="top" width="50%">
                                        <tr><td colspan="2"><h4 style="letter-spacing:1px;font-size:16px;">房屋交易网站后台</h4></td></tr>
                                        <tr><td>管理员：</td><td><input type="text" name="account" id="account"  /></td></tr>
                                        <tr><td>密&nbsp;&nbsp;&nbsp;&nbsp;码：</td><td><input type="password" id="password" name="password"  /></td></tr>
                                        <input type="hidden" name="type" value="2">
                                        <tr class="bt" align="center"><td>&nbsp;<input type="submit" value="登陆" /></td><td>&nbsp;<input type="reset" value="重填" /></td></tr>
                                    	<tr><td><font color="red">${messageLogin }</font></td></tr>
                                    </table>
                                </form>
                            </td>
                            <td rowspan="5">&nbsp;</td>
                        </tr>
                        <tr><td colspan="3">&nbsp;</td></tr>
                    </table>
                </td>
            </tr>
            <!-- 底部部分 -->
            <tr id="login_bot"><td colspan="2"><p>Copyright © 房屋交易网站</p></td></tr>
        </table>
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
</html>