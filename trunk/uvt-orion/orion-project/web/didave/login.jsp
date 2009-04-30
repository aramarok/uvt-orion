<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
	pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-store, no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<%@ page import="com.uvt.team08.orion.domain.model.User" %>
<%@ page import="com.uvt.team08.orion.domain.model.Right" %>
<%@ page import="com.uvt.team08.orion.domain.service.UserService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Autentificare</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="newStyle/style.css" />
</head>
<body style="padding-top:0px; margin-top:200px;">

<%@ page language="java" import="java.util.*, java.sql.*"%>
<%
	int usr_id = 0;
	Right usr_role;
	boolean logged = false;
	boolean logerr = false;
	String username = request.getParameter("user_name");
	String logoff = request.getParameter("logoff");
	int user_id = -1;
	Right user_priv = Right.USER; // 0 admin, else = cadru

	if (username != null && username.length() > 0) {
		try {
			
			//out.println("user=" + username + ";pass=" +  request.getParameter("user_password"));
			UserService userService = WebUtil.getUserService();
			User u = userService.login(username, request.getParameter("user_password"));
			user_id = u.getUserId();
			
			//out.println(";id=" + user_id);
			user_priv = u.getUserRight();
			java.util.Date now = new java.util.Date();
			String timestamp = now.toString();
			Cookie cookie = new Cookie("t8usrdata", user_id + "|" + user_priv);
			cookie.setMaxAge(365 * 24 * 60 * 60);
			response.addCookie(cookie);
			logged = true;
		} catch (Exception x) {
			//out.println(";" + x.getMessage() + ";" + x.getClass().getName());
			logerr = true;
		}
	}

	Cookie cookies[] = request.getCookies();
	Cookie myCookie = null;
	if (cookies != null)
		for (int i = 0; i < cookies.length; i++)
			if (cookies[i].getName().equals("t8usrdata")) {
				myCookie = cookies[i];
				break;
			}
	if (myCookie != null)
	{
		StringTokenizer tok = new StringTokenizer(myCookie.getValue(), "|");
		usr_id = Integer.parseInt(tok.nextElement().toString());
		String prv = tok.nextElement().toString();
		if (prv.equals("ADMINISTRATOR"))
			usr_role = Right.ADMINISTRATOR;
		else
			usr_role = Right.USER;
		logged = true;
	}

	if (logoff != null && logoff.length() > 0) {
		Cookie killMyCookie = new Cookie("t8usrdata", null);
		killMyCookie.setMaxAge(0);
		response.addCookie(killMyCookie);
		logged = false;
	}

	if (logged == false)
	{
		%>
		  
		  
		  
		  
		  
		  
		  
		<%
	}
	else
	{
		if (user_priv == Right.ADMINISTRATOR) //admin
			response.sendRedirect("home.jsp");
		else // cadru
			response.sendRedirect("home.jsp");
	}
%>



		<form method="post" action="login.jsp">
		<table cellspacing="0" cellpadding="0" border="0" align="center">
			<tbody>
				<tr>
					<td>
						<table width="300px" cellspacing="0" cellpadding="0" border="0" ?="">
							<tbody>
								<tr>
									<td width="21" valign="top" background="newStyle/images/darkgraybg.gif"><img width="10" height="20" src="newStyle/images/darkgrayleft.gif"/></td>
									<td background="newStyle/images/darkgraybg.gif" align="left"><strong class="welcometext"><font color="#ffffff">Autentificare</font></strong></td>
									<td width="19" valign="top" background="newStyle/images/darkgraybg.gif"><img width="19" height="21" src="newStyle/images/darkgrayright.gif"/></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<a href="http://www.teamred.excel-west.com/"><img width="2" height="2" border="0" src="newStyle/images/trans.gif"/></a>
					</td>
				</tr>
				<tr>
					<td valign="top" background="newStyle/images/graymidbottom.gif"> 
						<table width="300px" cellspacing="5" cellpadding="5" border="0">
							<tbody>
								<tr>
									<td valign="top" class="text1">
											<table width="250px" align="left" border="0">
												<tr height="19"/>
												<tr height="40">
													<td class="text2" width="50">
														<b>E-mail: </b>
													</td>
													<td>
														<input class="field_value" type="text" name="user_name" size="32">
													</td>
												  </tr>
												  <tr height="40">
												  	<td class="text2">
												  		<b>Parola: </b>
												  	</td>
												  	<td>
												  		<input class="field_value" type="password" name="user_password" size="32">
												  	</td>
												  </tr>
												  <tr height="30">
												  	<td>&nbsp;</td>
													<td>
														<input class="buton" type="submit" value="Autentifica">
													</td>
												  </tr>
												  <% if (logerr)
													out.print("<tr><td class= \"err_field\" colspan = \"2\" style=\"padding-top:10\" height =\"20\" valign = \"middle\">Eroare ! Date invalide ! </td></tr>");%>
											</table>
										</p>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td>
						<table width="300px" cellspacing="0" cellpadding="0" border="0">
							<tbody>
								<tr>
									<td background="newStyle/images/graymidbottom.gif" width="11" valign="bottom" <img width="11" height="18" src="newStyle/images/grayleftbottom.gif"/></td>
									<td background="newStyle/images/graymidbottom.gif"> </td>
									<td background="newStyle/images/graymidbottom.gif" width="11" valign="bottom" align="right"><img width="10" height="18" src="newStyle/images/grayrightbottom.gif"/></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
</form>





</body>
</html>