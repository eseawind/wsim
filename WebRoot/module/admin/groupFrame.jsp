<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>searchFrame</title>
	</head>
	<frameset rows="50,*" cols="*" frameborder="no" border="0"
		framespacing="0">
		<frame src="module/admin/searchGroup.jsp" name="groupSearchFrame" scrolling="no"
			noresize="noresize" id="groupSearchFrame" title="groupSearchFrame" />
		<frame src="admin/manager_listGroup" name="groupResultFrame" id="groupResultFrame"
			title="groupResultFrame" />
	</frameset>
	<noframes>
		<body>
		</body>
	</noframes>
</html>

