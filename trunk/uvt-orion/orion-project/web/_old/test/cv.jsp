<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*,java.util.*, com.uvt.team08.orion.domain.service.UploadBean" errorPage=""%>

<%
	response.setHeader("Cache-Control", "no-store, no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>


<%@ page import="com.uvt.team08.orion.domain.model.Right" %>

<%@ include file="auth.jsp" %>
	
<%


int commid = -1;
if (usr_role == Right.ADMINISTRATOR) 
	{
		commid = 0;
		if (request.getParameter("cvid") != null)
			try
			{
				commid = Integer.parseInt(request.getParameter("cvid"));
			}
			catch (Exception e) {}
	}
else if (usr_role == Right.USER)
	{
		commid = usr_id;
	}


%>
<jsp:useBean id="TheBean" scope="page" class="com.uvt.team08.orion.domain.service.UploadBean" />

<%
int succes = -1;
try
{
if (TheBean.doUpload(request) == 0)
{
	succes = 1;
}
else
	succes = 0;
}
catch(Exception g){	}
%>	


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.uvt.team08.orion.domain.service.UserService;"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrare CV</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body style="margin-top:0px;margin-left:0px;margin-right:0px;margin-bottom:0px;">


<form method="post" action="cv.jsp" enctype="multipart/form-data">
		<table width="401" border="0" cellspacing="0" cellpadding="3" align="center">
		  <tr bgcolor="#8DA3B1" height="40">
		  	<td class="header_text" colspan="2" style="padding-left:15px;">CV
			</td>
		  </tr>
		  <%
		  if (succes < 0)
		  {
		  %>
		  <tr bgcolor="#DFE8F0" height="40">
			<td class="field_name" colspan="2" align="center">
				<b>Selectarea unui CV va duce automat la stergerea vechiului CV (daca exista).</b>
			</td>
		  </tr>
		  <tr bgcolor="#DFE8F0" height="40">
		  	<td colspan="2"> &nbsp;
		  		<input type="hidden" name="lid" value="<%= usr_id %>">
		  		<input type="hidden" name="uid" value="<%= commid %>">
		  		<input type="file" name="filename" size = "47">
		  	</td>
		  </tr>
		  <tr bgcolor="#8DA3B1" height="30">
		  	<td>&nbsp;</td>
			<td align="right">
				<input class="buton" type="submit" value="Salveaza CV">
			</td>
		  </tr>
		  <%
		  }
		  else
			  if (succes == 1)
		  {
		  %>
			  <tr bgcolor="#8DA3B1">
				<td align="right" class="field_value" colspan="2"  height="110">
					CV-ul a fost update-at.
				</td>
			  </tr>
		  <%
		  }
			  else
				  if (succes == 0)
			  {
					  %>
					  
					  <tr bgcolor="#8DA3B1">
						<td align="right" class = "err_field" colspan="2" height="110">
						Eroare ! Incercati inca o data !
						</td>
			  		</tr>
					  
					  <%
			  }
		  %>
		</table>
		</form>
</body>