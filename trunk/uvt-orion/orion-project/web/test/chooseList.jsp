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
<html>
<head>
<title>Alegere Lista</title>
</head>
<body style="padding-top: 0px; margin-top: 0px;">
<FORM NAME="Forma" ACTION="addRecord.jsp" METHOD ="GET">
	<%@ include file="chooseMenu.jsp" %>
	<TABLE WIDTH=90% HEIGHT=25% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<COL WIDTH=40%>
		<COL WIDTH=50%>		
		<tr bgcolor="#8DA3B1" height="90">
			<td colspan=2 class="header_text" style="padding-left: 45px; padding-top: 50px;">
			Alegere Lista</td>
		</tr>			
	<TR>
		<TD class="field_name" COLSPAN=1  ALIGN=RIGHT BGCOLOR="#DFE8F0">
			Lista:
		<TD class="field_value" COLSPAN=1 BGCOLOR="#DFE8F0">
				<SELECT NAME="Lista" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
					<OPTION SELECTED>Lista 1								
					<OPTION>Lista 2</OPTION>	
					<OPTION>Lista 3</OPTION>							
					<OPTION>Lista 4</OPTION>	
					<OPTION>Lista 5</OPTION>	
					<OPTION>Lista 6</OPTION>							
					<OPTION>Lista 7</OPTION>							
					<OPTION>Lista 8</OPTION>							
					<OPTION>Lista 9</OPTION>	
					<OPTION>Lista 10</OPTION>
					
					<%
						Set<String> skeys = Tables.names.keySet();
						String [] keys = skeys.toArray(new String [] {});
						Arrays.sort(keys, new Comparator<String>() {
							public int compare(String s1, String s2) {
								return s1.compareTo(s2);
							}
						});

						for (String key : keys) {
							String name = Tables.names.get(key);

							out.println("<OPTION SELECTED value = \"" + key + "\">" + name
									+ "</OPTION>");
						}
					%>
						
				</SELECT>
		</TD>
	</TR>
	<TR>
		<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
		<P><BR></P>
		</TD>			
		<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
			<P><INPUT class="buton" TYPE=SUBMIT NAME="submit_btn" VALUE="Alege">
			</P>
		</TD>			
	</TR>
	<TR>
		<TABLE WIDTH=90% HEIGHT=65% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=2  ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>
		</TABLE>
	</TR>
	</TABLE>
	<jsp:include page="menus/statusBar.jsp" />	
</FORM>
</body>
</html>