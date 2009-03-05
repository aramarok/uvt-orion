<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-store, no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<%@ page import="com.uvt.team08.orion.domain.model.Right"%>
<%@ page import="com.uvt.team08.orion.domain.service.UserService"%>
<%@ page import="com.uvt.team08.orion.view.WebUtil"%>
<%@ page import="com.uvt.team08.orion.domain.model.User"%>
<%@ page import="com.uvt.team08.orion.domain.model.Status"%>

<link href="style.css" rel="stylesheet" type="text/css">

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Utilizatori sistem</title>
</head>
<%@ include file="chooseMenu.jsp" %>
<%
	int infomsg = -1;

	try {
		if (usr_role != Right.ADMINISTRATOR)
			response.sendRedirect("edit_user.jsp");
	} catch (Exception x) {
	}

	UserService userService = WebUtil.getUserService();
	int rid = 0;
	User newUser;

	if (request.getParameter("msg") != null)
		infomsg = Integer.parseInt(request.getParameter("msg"));

	if (request.getParameter("enable_id") != null)
		try {
			rid = Integer.parseInt(request.getParameter("enable_id"));
			newUser = userService.getUser(rid);
			newUser.setUserStatus(Status.ACTIVE);
			try {
				userService.modify(usr_id, rid, newUser, false);
			} catch (Exception c) {
			}
		} catch (Exception x) {
		}

	if (request.getParameter("disable_id") != null)
		try {
			rid = Integer.parseInt(request.getParameter("disable_id"));
			newUser = userService.getUser(rid);
			newUser.setUserStatus(Status.DISABLED);
			try {
				userService.modify(usr_id, rid, newUser, false);
			} catch (Exception c) {
			}
		} catch (Exception x) {
		}
%>

<body style="padding-top: 0px; margin-top: 0px;">

<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="3"
	align="center">
	<tr height="40">
		<td class="content_header" style="padding-left: 45px; padding-top: 5px;">
		Utilizatori sistem</td>
	</tr>

	<tr height="450">
		<td class="contents" valign="top" style="padding-top:40px; padding-bottom:40px;">
			<table align="center" border="0" cellspacing="1" cellpadding="1" width="720">
			<%
			/*
			if (infomsg > -1) {
				out.print("<tr><td class=\"err_field\" colspan=\"3\">info: ["
						+ infomsg + "]");
				if (infomsg == 1)
					out.print(" [duplicare adresa de email]");
				if (infomsg == 2)
					out.print(" [ursusul a fost creat]");
				out.print("<td></tr>");
			}
			*/
			%>
				<tr class="table_header">
					<td width="340">Utilizator</td>
					<td width="340">Email</td>
					<td width="40">Status</td>
				</tr>
				<%
					User x = new User();
					int place = 0;
					UserService us = WebUtil.getUserService();
					List<User> all_users = us.getAllUsers();
					java.util.Iterator it = all_users.iterator();
					while (it.hasNext()) {
						User curr = (User) it.next();
						out.println("<tr class=\"");
						String class_name = null; 
						if (place % 2 == 0)
							class_name = "odd";
						else
							class_name = "even";
						out.println(class_name);
						place++;
						out
								.print("\" onMouseOver=\"this.className='trhover'\" onMouseOut=\"this.className='" + class_name +"'\"><td><a class=\"bold_link\" href=\"edit_user.jsp?uid="
										+ curr.getUserId()
										+ "\">"
										+ curr.getFirstName()
										+ " "
										+ curr.getLastName()
										+ "</a></td><td><a class=\"normal_link\" href=\"mailto:"
										+ curr.getEmailAddress()
										+ "\">"
										+ curr.getEmailAddress()
										+ "</a></td><td><a class=\"normal_link\" href=\"users_list.jsp?");
						if (curr.getUserStatus() == Status.DISABLED)
							out.print("enable_id=" + curr.getUserId()
									+ "\">ENABLE</a></td></tr>");
						else
							out.print("disable_id=" + curr.getUserId()
									+ "\">DISABLE</a></td></tr>");
					}
				%>
			</table>
		</td>
	</tr>
	<tr height="20">
		<td class="contents"><b>&nbsp;</b></td>
	</tr>
</table>
</td>
</tr>
<tr>
<td colspan=2>
<jsp:include page="menus/statusBar.jsp" />
</td>
</tr>
</table>
</body>
</html>
