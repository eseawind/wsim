<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>wsim后台管理系统</title>

<link rel="stylesheet" href="/wsim/common/css/main.css" type="text/css"></link>

</head>
<body>
 <div class="content">

  <div id="header">
  
   <span id="main_title">
		wsim后台管理系统
   </span>
   <div id="personal"> 角色：管理员 | <a href="user!logout">退出</a></div>
  </div>

  <div id="nav">
   <ul>
    <li><a href="module/admin/mainLeft.jsp" target="leftFrame">菜单</a></li>
  	
   </ul>

  </div>

  <div id="main">
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
      <tr height="100%">
        <td align="left" id="left" height="520px">
          <iframe name="leftFrame" width="100%" height="100%" src="/wsim/module/admin/mainLeft.jsp" frameborder="0" scrolling="no"></iframe>
        </td>
        <td align="left" id="right" height="520px">
          <iframe name="mainFrame" width="100%" height="100%" src="/wsim/admin/admin_listUser" frameborder="0" scrolling="auto"></iframe>
        </td>
      </tr>
    </table>
  </div>
 </div>
<div></div>
</body>
</html>