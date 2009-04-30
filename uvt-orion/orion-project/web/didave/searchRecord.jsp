<%@page import="com.uvt.team08.orion.meta.Tables, com.uvt.team08.orion.view.WebUtil, com.uvt.team08.orion.domain.service.GUIService, java.util.Set" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%  
	response.setHeader("Cache-Control", "no-store, no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<%@page import="com.uvt.team08.orion.domain.service.TableService"%>

<html>
<head>
<title>Cauta Lucrare</title>
<link href="style.css" rel="stylesheet" type="text/css">

<jsp:include page="auth.jsp"></jsp:include>

</head>
<body style="padding-top: 0px; margin-top: 0px;">

	<jsp:include page="chooseMenu.jsp"></jsp:include>

<%!
public static final int CHOOSE_LIST = 1;
public static final int DISPLAY_LIST = 2;

public String nrlista = null;
public int action = CHOOSE_LIST;
%>

<%
	try 
	{ 
		nrlista=request.getParameter("nume_tabela");
		
		if (nrlista != null) {
			action = DISPLAY_LIST;
		} else {
			action = CHOOSE_LIST;
		}
	} 	
	catch (Exception e) 
	{
		action = CHOOSE_LIST;
	}
		
	if (action == CHOOSE_LIST) {
%>			
		<TABLE WIDTH="100%" HEIGHT="100%" ALIGN="CENTER" CELLSPACING="0" BORDER="0" class="contents">			
				<tr>
					<td colspan=3 class="content_header">
					Alegeti lista pentru cautare</td>
				</tr>	
			<TR height=100% class="contents">
			<td class="contents" COLSPAN=1 background="newStyle/images/graymidbottom.gif">
		
			<pre>
		
			<%
			String [] keys = Tables.getListIDsSortedByListsNames();

			out.println("<BR /><A href=\"searchRecord.jsp?nume_tabela=all" 
            						+ "\" class=\"text2\" STYLE=\"padding-left:56px;\"><B>Activitate pe perioada </B></A><br>");
			
			
			for (int i = 0; i < keys.length; i++) {
				String name = Tables.getTableNameByID(keys[i]);
				
				out.println("<br><A href=\"searchRecord.jsp?nume_tabela=" + keys[i]
						+ "\" STYLE=\"padding-left:56px;\" class=\"text2\"><B>" + name + "</B></A>");
			}
			%>			
			
			</pre>
			
			</td>
			</TR>			
			<tr>
				<TD COLSPAN=3 background="newStyle/images/graymidbottom.gif">
					<br/>
				</TD>
			</tr>
		</TABLE>
		
		<%
	}
	
	if (action == DISPLAY_LIST) {
%>
		<TABLE WIDTH="100%" HEIGHT="100%" ALIGN="CENTER" CELLSPACING="0" BORDER="0" background="newStyle/images/graymidbottom.gif">
				<COL WIDTH=38%>
				<COL WIDTH=2%>
				<COL WIDTH=50%>				
				<tr>
					<td colspan=3 class="content_header">
					Cautare Lucrare</td>
					<FORM NAME="Forma" ACTION="doSearchRecord.jsp" METHOD ="GET">
				</tr>	
				<tr height="40px">
				</tr>
<%
	 // OTHER LIST OR ERROR
	 String tableName = nrlista;
%>
	<input type="hidden" name="nume_tabela" value="<%= tableName %>" />
<%	 
	GUIService gui = WebUtil.getGUIService();
	
	Integer aidi =  session.getAttribute("aidi") == null ? -1 : Integer.parseInt(String.valueOf(session.getAttribute("aidi")));

	out.println(gui.getSearchForm(tableName, session.getAttribute("rol") == null ? "" : String.valueOf(session.getAttribute("rol")), aidi));

%>
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT class="contents">
				<P>
				<input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Cauta" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER class="contents">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT class="contents">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER class="contents">
			<P><BR></P>
			</TD>
			</FORM>
		</TR>
		</TABLE>		

<%

 }
%>

</td>
</tr>
<tr>
<td colspan=3>

<jsp:include page="menus/statusBar.jsp" />
</td>
</tr>
</table>

</body>
</html>
