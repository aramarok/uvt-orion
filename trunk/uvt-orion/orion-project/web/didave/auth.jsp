<!-- 
 *  
 * Includeti acest fisier in headerul fiecarui jsp;
 * controlul se va face utilizand urmatoarele varibile:
 *		usr_id 		id-ul utilizatorului logat
 *		usr_role	rolul utilizatorului logat (user/admin)
 *
-->

<%@ page language="java" import="java.util.*"%>
<%@ page import="com.uvt.team08.orion.domain.model.Right" %>

<%
int usr_id = -1;
Right usr_role = Right.USER;

Cookie cookies[] = request.getCookies();
Cookie myCookie = null;
if (cookies != null)
	for (int i = 0; i < cookies.length; i++)
		if (cookies[i].getName().equals("t8usrdata")) {
			myCookie = cookies[i];
			break;
		}
if (myCookie == null)
{
	%><jsp:forward page="login.jsp" /><%
}
else
{
	StringTokenizer tok = new StringTokenizer(myCookie.getValue(), "|");
	usr_id = Integer.parseInt(tok.nextElement().toString());
	String prv = tok.nextElement().toString();
	if (prv.equals("ADMINISTRATOR"))
		usr_role = Right.ADMINISTRATOR;
	else
		usr_role = Right.USER;
	
	session.setAttribute("rol", usr_role);
	session.setAttribute("aidi", usr_id);
}
%>

<link rel="stylesheet" type="text/css" href="newStyle/style.css" />