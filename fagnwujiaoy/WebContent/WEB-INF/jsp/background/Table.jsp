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
                        <!-- 商品分类开始 -->
                        <tr>
                            <td width="2%">&nbsp;</td>
                            <td width="96%">
                                <table width="100%">
                                    <tr>
                                        <td colspan="2">
                                            <form action="" method="">
                                                <table width="100%"  class="cont tr_color">
                                                    <tr>
                                                        <th>排序</th>
                                                        <th>分类名称</th>
                                                        <th>显示/隐藏</th>
                                                        <th>操作</th>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td>1</td>
                                                        <td>公司首页</td>
                                                        <td>显示</td>
                                                        <td>编辑 删除</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td>2</td>
                                                        <td>公司首页</td>
                                                        <td>显示</td>
                                                        <td>编辑 删除</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td>3</td>
                                                        <td>公司首页</td>
                                                        <td>显示</td>
                                                        <td>编辑 删除</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td>4</td>
                                                        <td>公司首页</td>
                                                        <td>显示</td>
                                                        <td>编辑 删除</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td>5</td>
                                                        <td>公司首页</td>
                                                        <td>显示</td>
                                                        <td>编辑 删除</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td>2</td>
                                                        <td>公司首页</td>
                                                        <td>显示</td>
                                                        <td>编辑 删除</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td>3</td>
                                                        <td>公司首页</td>
                                                        <td>显示</td>
                                                        <td>编辑 删除</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td>6</td>
                                                        <td>公司首页</td>
                                                        <td>显示</td>
                                                        <td>编辑 删除</td>
                                                    </tr>
                                                    <tr align="center" class="d">
                                                        <td>7</td>
                                                        <td>公司首页</td>
                                                        <td>显示</td>
                                                        <td>编辑 删除</td>
                                                    </tr>
                                                </table>
                                            </form>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="2%">&nbsp;</td>
                        </tr>
                        <!-- 商品分类结束 -->
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
                                <img src="image/image/background/icon_mail.gif" width="16" height="11"> 客户服务邮箱：rainman@foxmail.com<br />
                                <img src="image/image/background/icon_phone.gif" width="17" height="14"> 官方网站：<a href="http://h2design.taobao.com/" target="_blank">氢设计</a>
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
</html>