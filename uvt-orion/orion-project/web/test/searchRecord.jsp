<%@page import="com.uvt.team08.orion.meta.Tables, com.uvt.team08.orion.view.WebUtil, com.uvt.team08.orion.domain.service.GUIService, java.util.Set, java.util.Arrays, java.util.Comparator" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-store, no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<%@page import="com.uvt.team08.orion.domain.service.TableService"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Comparator"%>
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
		nrlista=request.getParameter("Lista");
		
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
		<form name = "frm" action = "searchRecord.jsp" method = "post">
		
		<TABLE WIDTH="90%" HEIGHT="80%" ALIGN="CENTER" CELLSPACING="0" BORDER="0">
			
			<TR height="80">
			<td class="field_value" COLSPAN=1 BGCOLOR="#DFE8F0">
		
			<SELECT NAME="Lista" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				<%
					Set<String> bkeys = Tables.baseNames.keySet();
					Set<String> skeys = Tables.names.keySet();
					String [] keys = skeys.toArray(new String[] {});
					String [] keys0 = bkeys.toArray(new String[] {});
					
					Arrays.sort(keys, new Comparator<String>() {
						public int compare(String s1, String s2) {
							return s1.compareTo(s2);
						}
					});
					Arrays.sort(keys0, new Comparator<String>() {
						public int compare(String s1, String s2) {
							return s1.compareTo(s2);
						}
					});
				
					
					for (String key : keys0) {
						String name = Tables.baseNames.get(key);
						
						out.println("<OPTION SELECTED value = \"" + key + "\">" + name
								+ "</OPTION>");
					}
					
					for (String key : keys) {
						String name = Tables.names.get(key);
						
						out.println("<OPTION SELECTED value = \"" + key + "\">" + name
								+ "</OPTION>");
					}
				%>
			</select>
			
			</td>
			</TR>
			
			<tr height="80">
			<td class="field_value" COLSPAN=1 BGCOLOR="#DFE8F0">
				<input type = "submit" value = "ALEGE">
			</td>
			</tr>
			
			<tr>
				<td class="field_value" COLSPAN=1 BGCOLOR="#DFE8F0"></td>
			</tr>
			
		</TABLE>
		
		</FORM>
		
		<%
	}
	
	if (action == DISPLAY_LIST) {
%>
		<FORM NAME="Forma" ACTION="doSearchRecord.jsp" METHOD ="GET">
			<TABLE WIDTH="90%" HEIGHT="80%" ALIGN="CENTER" CELLSPACING="0" BORDER="0">
				<COL WIDTH=38%>
				<COL WIDTH=2%>
				<COL WIDTH=50%>				
				<tr bgcolor="#8DA3B1" height="90">
					<td colspan=3 class="header_text" style="padding-left: 45px; padding-top: 50px;">
					Cautare Lucrare</td>
				</tr>	
<%
	 // OTHER LIST OR ERROR
	 String tableName = nrlista;
%>
	<input type="hidden" name="nume_tabela" value="<%= tableName %>" visible="false"/>
<%	 
	GUIService gui = WebUtil.getGUIService();
	
	out.println(gui.getSearchForm(tableName));

	 // if tableName is valid
	 
	// TableService mtservice = WebUtil.getTableService();
	 //List<Metatable> columns = mtservice.getTable(tableName);
	 
//	 if (columns != null) {
	//	 for (Metatable column : columns) {
//			 out.println("<TR><td>lokakamara</td></TR>");
		 //}
//	 }
%>
		<TR>
			<TD COLSPAN=1 ALIGN=RIGHT BGCOLOR="#DFE8F0">
				<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Cauta" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>
			</TD>
			<TD COLSPAN=1  ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>		
			<TD COLSPAN=1 ALIGN=LEFT BGCOLOR="#DFE8F0">
				<P>
				<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
				</P>			
			</TD>	
		</TR>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER BGCOLOR="#DFE8F0">
			<P><BR></P>
			</TD>
		</TR>
		
			</TABLE>
		
	</FORM>

<%

 }
%>

<jsp:include page="menus/statusBar.jsp" />

</body>
</html>
