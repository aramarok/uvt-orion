<html>

<head>
<title>Alterarea campurilor gata introduse</title>
</head>
<body>

<%@ page import="com.uvt.team08.orion.domain.model.Metatable" %>
<%@ page import="com.uvt.team08.orion.domain.model.FieldFilter" %>
<%@ page import="com.uvt.team08.orion.domain.service.TableService" %>
<%@ page import="com.uvt.team08.orion.domain.service.UpdateService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>
<%@ page import="java.sql.ResultSet" %>

<%@ include file="chooseMenu.jsp" %>

<%!
int user=-1;
public TableService tService = WebUtil.getTableService();
public UpdateService uService = WebUtil.getUpdateService();
public List<Metatable> tabele;
public Metatable tabela;
public ArrayList<FieldFilter> listFieldFilter;

%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>

<%
try
  {
	user=usr_id;
	
	/******************************/
	String numeTabela = request.getParameter("nume_tabela");
	String id_user = request.getParameter("id_user");
	/******************************/
	
	tabele = tService.getTable(numeTabela);
	listFieldFilter = new ArrayList<FieldFilter>();
	//if (user >= 0) listFieldFilter.add(FieldFilter.newFieldFilter("id_user", "" + user, "" + user, "int"));

	for (Iterator<Metatable> tablei = tabele.iterator(); tablei.hasNext();)
	{
		tabela = tablei.next();
		String numeC = tabela.getCampTabela();
		String tipC = tabela.getTip().toLowerCase();
		
		if (tipC.compareTo(Metatable.getTabelaTipIntreg()) == 0)
		{			
			listFieldFilter.add(FieldFilter.newFieldFilter(numeC, request.getParameter(numeC), request.getParameter(numeC), tipC));
		}  
		else if (tipC.compareTo(Metatable.getTabelaTipDouble()) == 0)
		{
			listFieldFilter.add(FieldFilter.newFieldFilter(numeC, request.getParameter(numeC), request.getParameter(numeC), tipC));
		}
		else if (tipC.compareTo(Metatable.getTabelaTipString()) == 0)
			listFieldFilter.add(FieldFilter.newFieldFilter(numeC, request.getParameter(numeC), request.getParameter(numeC), tipC));
		else 
			listFieldFilter.add(FieldFilter.newFieldFilter(numeC, request.getParameter(numeC), request.getParameter(numeC), tipC));
	} 
	
	//out.println(uService.sqlUpdate(numeTabela, listFieldFilter))
	
	if (uService.updateRecord(numeTabela, listFieldFilter))
	 {		
%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
				<P>
					<FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
						Alterare realizata cu succes  .
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
						Alterare esuata						
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