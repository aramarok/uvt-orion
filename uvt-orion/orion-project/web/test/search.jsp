<html>

<head>
<title>Portocale si banane</title>
</head>
<body>

<%@ page import="com.uvt.team08.orion.domain.model.Metatable" %>
<%@ page import="com.uvt.team08.orion.domain.service.TableService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>

<%@ include file="chooseMenu.jsp" %>
<%!
int user=-1;
public TableService tService = WebUtil.getListsService();
public SearchService sService = WebUtil.getSearchService();
public List<Metatable> tabele;
public Metatable tabela;
public List<FieldFilter> listFieldFilter;
public ResultSet rezultatSearch;
%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>

<%
try
  {
	user=usr_id;
	
	/******************************/
	String numeTabela = request.getParameter("nume_tabela");
	/******************************/
	
	tabele = tService.getTable(numeTabela);
	
	for (Iterator<Metatable> tablei = tabele.Iterator(); tablei.hasNext();)
	{
		tabela = tablei.next();
		String numeC = tabela.getCampTabela();
		String tipC = tabela.getTip();
		
		if (tabela.getTip().toLowerCase().compareTo(Metatable.getTabelaTipIntreg()) == 0)
		{
			int v1 = Integer.parseInt(request.getParameter(numeC + "1"));
			int v2 = Integer.parseInt(request.getParameter(numeC + "2"));
			listFieldFilter.add(new FieldFilter(numeC, v1, v2, tipC);
		}  
		else if (tabela.getTip().toLowerCase().compareTo(Metatable.getTabelaTipDouble()) == 0)
		{
			double v1 = Double.parseDouble(request.getParameter(numeC + "1");
			double v2 = Double.parseDouble(request.getParameter(numeC + "2"));
			listFieldFilter.add(new FieldFilter(numeC, v1, v2, tipC);
		}
		else if (tabela.getTip().toLowerCase().compareTo(Metatable.getTabelaTipString()) == 0)
			listFieldFilter.add(new FieldFilter(numeC, request.getParameter(numeC),tipC); 
		else 
			listFieldFilter.add(new FieldFilter(numeC, request.getParameter(numeC),tipC);
	} 
	
	rezultatSearch = sService.searchTable(numeTabela, listFieldFilter);

	if (resultatSearch != null)
	 {
%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
				<P>
					<FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
						Esti un cacanar!
					</FONT>
				</P>
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
						Ai supt cacat !?
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
</TABLE>
		<jsp:include page="menus/statusBar.jsp" />
</body>
</html>