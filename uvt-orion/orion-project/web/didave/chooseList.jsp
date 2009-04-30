<%@ page import="com.uvt.team08.orion.meta.Tables" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Comparator" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<%  
	response.setHeader("Cache-Control", "no-store, no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<%@page import="com.uvt.team08.orion.other.KeyValuePair"%>
<html>
<head>
<title>Alegere Lista</title>
</head>
<body style="padding-top: 0px; margin-top: 0px;">



	<%@ include file="chooseMenu.jsp" %>
	<TABLE WIDTH=100% HEIGHT=100% CELLSPACING=0 BORDER=0>
	<FORM NAME="Forma" ACTION="addRecord.jsp" METHOD ="GET">
	
		<tr>
			<td class="content_header">
			Alegere Lista</td>
		</tr>			
		<TR>
			<TD class="contents" COLSPAN=1 background="newStyle/images/graymidbottom.gif" align = "left" colspan="2" height="100%">

			<PRE>

<%
			
			String [] keys = Tables.getListIDsSortedByListsNames();

			for (int i = 0; i < keys.length; i++) {
				String name = Tables.getTableNameByID(keys[i]);
				
				out.println("<BR />	<A href=\"addRecord.jsp?nume_tabela=" + keys[i]
						+ "\" class=\"text2\"><B>" + name + "</B></A>");
			}

%>
			
			</PRE>
			</TD>
		</TR>
		
	</TABLE>
	</FORM>
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
