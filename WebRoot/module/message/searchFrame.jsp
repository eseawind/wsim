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
	<frameset rows="150,*" cols="*" frameborder="no" border="0"
		framespacing="0">
		<frame src="module/message/searchMessage.jsp" name="searchFrame" scrolling="no"
			noresize="noresize" id="searchFrame" title="searchFrame" />
		<frame src="module/message/empty.jsp" name="resultFrame" id="resultFrame"
			title="resultFrame" />
	</frameset>
	<noframes>
		<body>
		</body>
	</noframes>
</html>

