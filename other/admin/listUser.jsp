<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title></title>
<link rel="stylesheet" href="css/adminStyle.css" type="text/css"></link>
<script>
	function getHref(){
		var pageNum = document.getElementById("pageNum").value;
		if(pageNum > ${page.totalPage} || pageNum < 1){
			alert("�����ڵ�"+pageNum+"ҳ");
			document.getElementById("pageNum").focus();
			return false;
		}
		document.getElementById("tiaozhuan").href = 'admin_listUser.action?currentPage='+pageNum;
	}
</script>

<script type="text/javascript" src="js/admin.js"></script>

</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                
                <td width="100%" valign="bottom"><span class="STYLE1">������Ա������Ϣ�б�</span></td>
              </tr>
            </table></td>
            <td></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce" onmouseover="changeto()"  onmouseout="changeback()">
      <tr>
        <td width="15%" height="30" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">ID</span></div></td>
        <td width="20%" height="30" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">�û���</span></div></td>
        <td width="20%" height="30" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">email</span></div></td>
        <td width="30%" height="30" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">�Ƿ����Ա</span></div></td>
      	<td width="15%" height="30" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">ɾ��</span></div></td>
      </tr>
      <s:iterator value="users">
      <tr>
        <td height="25" bgcolor="#FFFFFF" class="STYLE6"><div align="center"><span class="STYLE19">${id }</span></div></td>
        <td height="25" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${username }</div></td>
        <td height="25" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${email }</div></td>
        <td height="25" bgcolor="#FFFFFF" class="STYLE19"><div align="center" class="STYLE21"><s:if test="isAdmin==true">��</s:if><s:else>��</s:else></div></td>
        <td height="25" bgcolor="#FFFFFF" class="STYLE19"><div align="center" class="STYLE21"><s:if test="isAdmin==false"><s:a href="admin_delUser?userId=%{id}&currentPage=%{page.currentPage}" onclick="return confirm('ȷ��ɾ����')">ɾ��</s:a></s:if></div></td>
      </tr>
      </s:iterator>
    </table></td>
  </tr>
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="33%"><div align="left"><span class="STYLE22">&nbsp;&nbsp;&nbsp;&nbsp;��ǰ��<strong>${page.currentPage}</strong> ҳ���� <strong>${page.totalPage}</strong> ҳ��ÿҳ��ʾ<strong>${page.everyPage}</strong>����¼</span></div></td>
        <td width="67%"><table width="312" border="0" align="right" cellpadding="0" cellspacing="0">
          <tr>
          
            <td width="49"><div align="center"><a href="admin_listUser.action?currentPage=1"><img src="images/main_54.gif" width="40" height="15"/></a></div></td>
            <s:if test="page.hasPrePage">
            	<td width="49"><div align="center"><a href="admin_listUser.action?currentPage=${page.currentPage - 1 }"><img src="images/main_56.gif" width="45" height="15" /></a></div></td>
            </s:if>
            <s:else>
            	<td width="49"><div align="center"><img src="images/main_56.gif" width="45" height="15" /></div></td>
            </s:else>
            <s:if test="page.hasNextPage">
            	<td width="49"><div align="center"><a href="admin_listUser.action?currentPage=${page.currentPage + 1 }"><img src="images/main_58.gif" width="45" height="15"/></a></div></td>
            </s:if>
            <s:else>
            	<td width="49"><div align="center"><img src="images/main_58.gif" width="45" height="15" /></div></td>
            </s:else>
            <td width="49"><div align="center"><a href="admin_listUser.action?currentPage=${page.totalPage }"><img src="images/main_60.gif" width="40" height="15" /></a></div></td>
            <td width="37" class="STYLE22"><div align="center">ת��</div></td>
            <td width="22"><div align="center">
              <input type="text" name="pageNum" id="pageNum"  style="width:20px; height:12px; font-size:12px; border:solid 1px #7aaebd;" onkeyup="value=value.replace(/[^0-9]/g,'');"/>
            </div></td>
            <td width="22" class="STYLE22"><div align="center">ҳ</div></td>
            <td width="35"><a  onclick="getHref()" id="tiaozhuan"><img src="images/main_62.gif" width="26" height="15" /></a></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
  