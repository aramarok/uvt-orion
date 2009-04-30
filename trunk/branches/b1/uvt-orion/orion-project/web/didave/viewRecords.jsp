<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-store, no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<html>

<HEAD>

<title>Vizualizare Lucrari</title>

<link href="style.css" rel="stylesheet" type="text/css">

<%@ page import="com.uvt.team08.orion.domain.service.ListsService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>
<%@ page import="com.uvt.team08.orion.other.DataTable" %>
<%@ page import="java.util.Hashtable" %>
<%@ page import="java.util.Set" %>

<%!
	public ListsService lService = WebUtil.getListsService();
	public boolean anyrecords;
%>

<script type="text/javascript">
<!--
function selectItemsToErase() {
	result = document.f1_frm.nume_tabela;
	result.value = "";

	tables = document.f1_frm.table;

	for (i = 0; i < tables.length; i++) {

		if (tables[i].value != "aux_chump") {
			temp = "" + tables[i].value + ":";
			count = 0;
			
			eval("var items = document.forms[0]." + tables[i].value + ";");
			
			for (j = 0; j < items.length; j++) {
			
				if (items[j].checked) {
					temp += items[j].value;
					
					if (j < items.length - 1) {
						temp += ",";
						count++;
					}
				}
			}
			
			if (count > 0) {
				result.value += (temp + ";");
			}
		}
	}

	document.f1_frm.submit();
}
//-->
</script>

</HEAD>

<BODY style="padding-top: 0px; margin-top: 0px;">

<%@ include file="chooseMenu.jsp" %>
	
	<TABLE WIDTH=100% height=100% ALIGN=CENTER CELLSPACING=0 BORDER=0>			
		<FORM name="f1_frm" method="post" action="deletedRecord.jsp">
			<INPUT type="hidden" name="nume_tabela" value="" />
			<INPUT type="hidden" name="table" value="aux_chump" />
	
		<tr height="40">
			<td class="content_header" style="padding-left: 45px; padding-top: 5px;">
				Vizualizare Lucrari
			</td>
		</tr>

		<TR ALIGN=CENTER>
	 		<TD class="contents">
				<BR>
			</TD>
		</TR>
	 
<%
	//Initial presupunem ca nu sunt lucrari.
	anyrecords = false;
	
	ArrayList<DataTable> xslExportList = new ArrayList<DataTable>();
	 		
	try {
	 	Hashtable<String, DataTable> records = WebUtil.getSearchService().getAllRecords(usr_id);
	 	Set<String> keys = records.keySet();

	 	for (String key : keys) {
		 	DataTable table = records.get(key);
		 	
		 	if (table != null && table.getNumRows() > 0) {
		 		anyrecords = true;
		 			
		 		String theTable = WebUtil.getGUIService().getTableWithEditAndDeleteFromDataTable(table, key);

		 		if (theTable != null && theTable.length() > 0) {
		 			
		 			xslExportList.add(table);
%>

		<TR>
			<TD class="contents">
	 			
	 			<input type="hidden" name="table" value="<%= key %>" />
	 			
				<%= theTable %>
	
				<BR />
				
			</TD>
		</TR>
	<%
		 		}
			}
		}
	if (anyrecords)
	{
%>
		<tr>
		<td colspan=3 class="contents" align=middle>
			<input type="button" value="STERGE" onclick="selectItemsToErase()" />
		</td>
		</tr>
<% } %>
		<TR>
			<td colspan=3 class="contents" align=middle>
		
<%
	if (!anyrecords) {	
		out.println("Nu exista lucrari adaugate de catre utlizatorul logat!");
	} else {
		
		String action = request.getParameter("action");
		
		if (action == null || !action.equals("export")) {
%>
			<A href = "viewRecords.jsp?action=export"> EXPORTA in XLS </A>
<%
		} else {
			
			ServletContext context=request.getSession().getServletContext();
			
			String path = WebUtil.getXSLService().createXSLWorkbookFromDataTable(
					context.getRealPath(""), "", xslExportList);
			
			out.println("<a href=\"" + path + "\">Download fisier XSL</A>");
			
		}
	}

%>
	</TD>
		</TR>
<%
	}
	catch(Exception e) {
		out.println(e.getMessage());
	}
%>	

		</FORM>
	</TABLE>
	
		
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
