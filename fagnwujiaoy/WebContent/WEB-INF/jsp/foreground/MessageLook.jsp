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
<title>查看广告</title>
</head>
<body>
	广告内容&nbsp;&nbsp;发布人:<c:out value="${message['goodId'] }"></c:out><br/>
	<input type="hidden" name="goodId" value="${sessionScope['User']['account'] }">
	<textarea rows="20" cols="200"><c:out value="${message['userMessage'] }"></c:out></textarea>
	<form action="sys/type/typeAdd" method="post" onsubmit="return check();">
	你可以回复:<br/>
	<input type="hidden" name="name" value="${sessionScope['User']['account'] }">
	<input type="hidden" name="messageId" value="${message['id']}">
	<textarea rows="20" cols="200" name="typeName" id="typeName"></textarea>
	<input type="submit" value="回复">
	</form>
	<br/>
	留言区:<br/>
	<c:if test="${mess ne null}">
		${mess }
	</c:if>
	<c:forEach items="${pager.datas }" var="type">
		留言者:${type['name'] }<br/><br/>
		<textarea rows="20" cols="200"><c:out value="${type['typeName'] }"></c:out></textarea>
	</c:forEach>
</body>
<script type="text/javascript">
	function check(){
	var typeName = $("#typeName").val();
	if(typeName==null||typeName==''){
		alert("请输入回复内容!")
		return false();
	}
	alert("回复成功!");
	return true;
	}
</script>
</html> 