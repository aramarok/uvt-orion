<%@page import="com.uvt.team08.orion.domain.service.GUIService"%>
<html>  

<head>
<title>Cautare avansata</title>
</head>
<body style="margin-top:0px;">

<%@ page import="com.uvt.team08.orion.domain.model.Metatable" %>
<%@ page import="com.uvt.team08.orion.domain.model.FieldFilter" %>
<%@ page import="com.uvt.team08.orion.domain.service.TableService" %>
<%@ page import="com.uvt.team08.orion.domain.service.SearchService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>
<%@ page import="com.uvt.team08.orion.other.DataTable" %>

<%@ include file="chooseMenu.jsp" %>
<%!
int user=-1;
public TableService tService = WebUtil.getTableService();
public SearchService sService = WebUtil.getSearchService();
public List<Metatable> tabele;
public Metatable tabela;
public ArrayList<FieldFilter> listFieldFilter;
public DataTable rezultatSearch;
%>
<TABLE class="contents" WIDTH=100% HEIGHT=100% ALIGN=CENTER CELLSPACING=0 BORDER=0>
<%
try
  {
	user=usr_id;
	
	/******************************/
	String numeTabela = request.getParameter("nume_tabela");
	String id_user = request.getParameter("id_user");
	
	//out.println("" + id_user);
	
	if (id_user != null && id_user.length() > 0)
		user = Integer.parseInt(id_user);
	else user = -1;
	
	/******************************/

	listFieldFilter = new ArrayList<FieldFilter>();
	
	if (numeTabela.equals("all"))
	try
	{
		listFieldFilter.add(FieldFilter.newFieldFilter("nume", "Nume", request.getParameter("nume"), request.getParameter("nume"), "varchar", null));
		listFieldFilter.add(FieldFilter.newFieldFilter("data", "Anul", request.getParameter("data1"), request.getParameter("data2"), "int", null));		
		
		if (user >= 0) listFieldFilter.add(FieldFilter.newFieldFilter("id_user", "", "" + user, "" + user, "int", null));
		
		Hashtable<String, DataTable> records = WebUtil.getSearchService().searchTable(listFieldFilter);
	 	Set<String> keys = records.keySet();
	 	if (records.isEmpty()) 
	 	{
	 		String mesaj = "Nu s-a gasit nici o lucrare";
	 		if (user >= 0) mesaj += " introdusa de utilizatorul ales";
	 		if (!numeTabela.equals("all")) mesaj += " in tabela aleasa";
	 		mesaj += ".";
	 		throw new Exception(mesaj); 
	 	}
	 	for (String key : keys) {
	 		DataTable table = records.get(key);
	 		
	 		if (table != null && table.getNumRows() > 0) {
	 			String theTable = WebUtil.getGUIService()
	 					.getTableWithEditAndDeleteFromDataTable(table, key);

	 			if (theTable != null && theTable.length() > 0) {
%>
		<TR>
			<TD class="contents">
 
				<%= theTable %>	
				<BR />
				
			</TD>
		</TR>
<%
				}
			}
		}
%>
		<TR>
			<TD class="contents" align="center">
			
<%

String name_xls1 = request.getParameter("xls_file_name");

if (name_xls1.endsWith(".xls")) {
	name_xls1 = name_xls1.substring(0, name_xls1.length() - 5);
}

ServletContext context=request.getSession().getServletContext();

ArrayList<DataTable> list = new ArrayList<DataTable>();

for (String key : records.keySet()) {
	DataTable table = records.get(key);
	
	if (table != null && table.getNumRows() > 0) {
		list.add(table);
	}
}

String path = WebUtil.getXSLService().createXSLWorkbookFromDataTable(
		context.getRealPath(""), "", list);

out.println("<A href = \"" + path + "\">Download XLS</A>");

%>

			</TD>
		</TR>
	</TABLE>	 
<%
	}
catch(Exception e)
{
	out.println("<tr> <td align=\"center\" class=\"contents\"> Exceptie: " + e.getMessage() + "</td> </tr></TABLE>");
}
else
try
{
	
	tabele = tService.getTable(numeTabela);
	if (user >= 0) listFieldFilter.add(FieldFilter.newFieldFilter("id_user", "", "" + user, "" + user, "int", null));
	
	for (Iterator<Metatable> tablei = tabele.iterator(); tablei.hasNext();)
	{
		tabela = tablei.next();
		String numeC = tabela.getCampTabela();
		String numeV = tabela.getCampVizual();
		String tipC = tabela.getTip().toLowerCase();
		
		if (tipC.compareTo(Metatable.getTabelaTipIntreg()) == 0 || tipC.compareTo(Metatable.getTabelaTipDouble()) == 0)
		{			
			listFieldFilter.add(FieldFilter.newFieldFilter(numeC, numeV, request.getParameter(numeC + "1"), request.getParameter(numeC + "2"), tipC, null));
		}  
		else  
			listFieldFilter.add(FieldFilter.newFieldFilter(numeC, numeV, request.getParameter(numeC), request.getParameter(numeC), tipC, null));
	} 
	
	rezultatSearch = sService.searchTable(numeTabela, listFieldFilter);
 	if (rezultatSearch.isEmpty()) 
 	{
 		String mesaj = "Nu s-a gasit nici o lucrare";
 		if (user >= 0) mesaj += " introdusa de utilizatorul ales";
 		if (!numeTabela.equals("all")) mesaj += " in tabela aleasa";
 		mesaj += ".";
 		throw new Exception(mesaj); 
 	}

 	GUIService gui = WebUtil.getGUIService();
%>
		<TR>
			<TD class="contents">
				<%
					out.println(gui.getTableWithEditAndDeleteFromDataTable(rezultatSearch, numeTabela));
					String name_xls = "";
					String path = "";
					
					if (rezultatSearch != null) {
						name_xls = request.getParameter("xls_file_name");
					
						if (name_xls.endsWith(".xls")) {
							name_xls = name_xls.substring(0, name_xls.length() - 5);
						}
					
						ServletContext context=request.getSession().getServletContext();
						
						ArrayList<DataTable> list = new ArrayList<DataTable>();
						list.add(rezultatSearch);
						
						path = WebUtil.getXSLService().createXSLWorkbookFromDataTable(
								context.getRealPath(""), name_xls, list);
						
					} else {
						out.println("Cautarea e esuata.");
					}
				%>
				<BR /><BR />
				<A href="<%= path %>">Download <%= name_xls + ".xls" %></A>

		</TD>
		</TR>
			</TABLE>	 
<%
  } catch(Exception e) {
		out.println("<tr> <td align=\"center\" class=\"contents\"> Exceptie: " + e.getMessage() + "</td> </tr></TABLE>");
	}
} catch (Exception e) {
	out.println("<tr> <td align=\"center\" class=\"contents\"> Exceptie: " + e.getMessage() + "</td> </tr></TABLE>");
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