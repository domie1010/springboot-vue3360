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
                        <tr><td height="31"><div class="title">欢迎界面</div></td></tr>
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
                        <!--**********这里是内容**********-->
                        <!--**********这里是内容**********-->
                        <!--**********这里是内容**********-->
                        <!--**********这里是内容**********-->
                        <tr>
                            <!--左边内容-->
                            <td colspan="2" valign="top">
                                <h3 style="margin:0 0 10px 10px;">感谢您使用房屋交易网站管理系统程序</h3>
                            </td>
                            <!--间隔-->
                            <td width="7%">&nbsp;</td>
                            <!--右边内容-->
                            <td width="40%" valign="top">
                                <table width="100%" height="150" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #CCCCCC;">
                                    <tr>
                                        <td width="7%" height="27" background="image/image/background/news_title_bg.gif">
                                            <img src="image/image/background/news_title_bg.gif" width="2" height="27">
                                        </td>
                                        <td width="93%" background="image/image/background/news_title_bg.gif" class="left_bt">最新动态</td>
                                    </tr>
                                    <tr><td height="5" colspan="2">&nbsp;</td></tr>
                                    <tr>
                                        <td height="100" valign="top" colspan="2" id="news">
                                            <marquee direction="up" scrollamount="2" vspace="30px" width="400px" height="100px" onmouseout="this.start()" onmouseover="this.stop()">
                                                <ul>
                                                    <li>感谢您使用房屋交易网站管理系统程序</li>
                                                    <li>感谢您使用房屋交易网站管理系统程序</li>
                                                    <li>感谢您使用房屋交易网站管理系统程序</li>
                                                    <li>感谢您使用房屋交易网站管理系统程序</li>
                                                </ul>
                                            </marquee>
                                        </td>
                                    </tr>
                                    <tr><td height="5" colspan="2">&nbsp;</td></tr>
                                </table>
                            </td>
                        </tr>
                        <tr height="20"><td colspan="2" valign="top">&nbsp;</td><td>&nbsp;</td><td valign="top">&nbsp;</td></tr>
                        <!--第二行-->
                        <tr>
                            <td colspan="2" valign="top">
                                <table width="100%" height="230" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #CCCCCC;">
                                    <tr>
                                        <td width="7%" background="image/image/background/news_title_bg.gif">
                                            <img src="image/image/background/news_title_bg.gif" width="2" height="27">
                                        </td>
                                        <td width="93%" background="image/image/background/news_title_bg.gif" class="left_bt">最新动态</td>
                                    </tr>
                                    <tr>
                                        <td height="186" valign="top" colspan="2"></td>
                                    </tr>
                                    <tr><td height="5" colspan="2">&nbsp;</td></tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                            <td valign="top">
                                <table width="100%" height="230" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #CCCCCC;">
                                    <tr>
                                        <td width="7%" background="image/image/background/news_title_bg.gif">
                                            <img src="./Images/news_title_bg.gif" width="2" height="27">
                                        </td>
                                        <td width="93%" height="27" background="image/image/background/news_title_bg.gif" class="left_bt">最新动态</td>
                                    </tr>
                                    <tr><td height="186" valign="top">&nbsp;</td><td height="102" valign="top"></td></tr>
                                    <tr><td height="5" colspan="2">&nbsp;</td></tr>
                                </table>
                            </td>
                        </tr>
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
</html>