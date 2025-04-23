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
<script type=text/javascript src="js/js/foreground/jquery.min.js"></script>
<title>发布广告</title>
</head>
<body>
	<form action="sys/message/messageAdd" method="post">
	请发布广告<br/>
	<input type="hidden" name="goodId" value="${sessionScope['User']['account'] }">
	<textarea rows="20" cols="200" name="userMessage" id="userMessage"></textarea>
	<input type="submit" value="提交">
	</form>
</body>
<script type="text/javascript">
	function check(){
	var userMessage = $("userMessage").val();
	if(userMessage==null||userMessage==''){
		alert("请输入广告内容!")
		return false();
	}
	return true;
	}
</script>
</html> 