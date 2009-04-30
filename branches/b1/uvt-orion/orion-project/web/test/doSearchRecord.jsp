<%@page import="com.uvt.team08.orion.domain.service.GUIService"%>
<html>

<head>
<title>Cautare avansata</title>
</head>
<body>

<%@ page import="com.uvt.team08.orion.domain.model.Metatable" %>
<%@ page import="com.uvt.team08.orion.domain.model.FieldFilter" %>
<%@ page import="com.uvt.team08.orion.domain.service.TableService" %>
<%@ page import="com.uvt.team08.orion.domain.service.SearchService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>
<%@ page import="java.sql.ResultSet" %>

<%@ include file="chooseMenu.jsp" %>
<%!
int user=-1;
public TableService tService = WebUtil.getTableService();
public SearchService sService = WebUtil.getSearchService();
public List<Metatable> tabele;
public Metatable tabela;
public ArrayList<FieldFilter> listFieldFilter;
public ResultSet rezultatSearch;
%>
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
	
	tabele = tService.getTable(numeTabela);
	listFieldFilter = new ArrayList<FieldFilter>();

	if (user >= 0) listFieldFilter.add(FieldFilter.newFieldFilter("id_user", "", "" + user, "" + user, "int"));
	
	for (Iterator<Metatable> tablei = tabele.iterator(); tablei.hasNext();)
	{
		tabela = tablei.next();
		String numeC = tabela.getCampTabela();
		String numeV = tabela.getCampVizual();
		String tipC = tabela.getTip().toLowerCase();
		
		if (tipC.compareTo(Metatable.getTabelaTipIntreg()) == 0)
		{			
			listFieldFilter.add(FieldFilter.newFieldFilter(numeC, numeV, request.getParameter(numeC + "1"), request.getParameter(numeC + "2"), tipC));
		}  
		else if (tipC.compareTo(Metatable.getTabelaTipDouble()) == 0)
		{
			listFieldFilter.add(FieldFilter.newFieldFilter(numeC, numeV, request.getParameter(numeC + "1"), request.getParameter(numeC + "2"), tipC));
		}
		else if (tipC.compareTo(Metatable.getTabelaTipString()) == 0)
			listFieldFilter.add(FieldFilter.newFieldFilter(numeC, numeV, request.getParameter(numeC), "", tipC));
		else 
			listFieldFilter.add(FieldFilter.newFieldFilter(numeC, numeV, request.getParameter(numeC), "", tipC));
	} 
	
	//out.println(sService.sqlSelect(numeTabela, listFieldFilter));
	rezultatSearch = sService.searchTable(numeTabela, listFieldFilter);

	if (rezultatSearch != null)
	 {
		
		GUIService gui = WebUtil.getGUIService();
		//out.println(gui.getTableFromResultSet(rezultatSearch));
%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD ALIGN=CENTER BGCOLOR="#DFE8F0">						
						<%out.println(gui.getTableFromResultSet(rezultatSearch, numeTabela)); %>
						
				<%
					String name_xls = request.getParameter("xls_file_name");
				
					if (name_xls.endsWith(".xls")) {
						name_xls = name_xls.substring(0, name_xls.length() - 5);
					}
				
					String path = WebUtil.getXSLService()
							.createXSLWorkbookFromResultSet(rezultatSearch,
							numeTabela, name_xls);
				%>
				
				<BR /><BR />
				<A href="<%= path %>">Download <%= name_xls + ".xls" %></A>
			</TD>
		</TR>
		<TR>
			<TD>
			</TD>
		</TR>
	</TABLE>	 
<%
	 }
	 else
	 {
%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
				<P>
					<FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
						Cautarea e esuata 
					</FONT>
				</P>
			</TD>
		</TR>
	</TABLE>
<%
     }
  }
catch(Exception e){
%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
				<P>
					<FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
						Exceptie: <%=e.getMessage()%>
					</FONT>
				</P>
			</TD>
		</TR>
	</TABLE>
<%
}
%>
		<jsp:include page="menus/statusBar.jsp" />
</body>
</html>