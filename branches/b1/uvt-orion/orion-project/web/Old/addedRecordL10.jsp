<%@page import="com.uvt.team08.orion.domain.model.TipGrant"%>
<html>

<head>
<title>Adaugare Lucrare</title>
</head>
<body>

<%@ page import="com.uvt.team08.orion.domain.model.Lista10" %>
<%@ page import="com.uvt.team08.orion.domain.service.ListsService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>

<%!
int user=1;
public ListsService lService = WebUtil.getListsService();
public Lista10 lista10=new Lista10();
%>
	<jsp:include page="menus/menuUser.jsp" />
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>

<%
try
  {
	
	String tipG = request.getParameter("TipGrant");
	int perioada = Integer.parseInt(request.getParameter("Perioada"));
	double suma = Double.parseDouble(request.getParameter("Suma"));
	String director = request.getParameter("DirectorProg");
	
	
	lista10.setTipGrant(TipGrant.getTipGrantByName(tipG));
	lista10.setPerioada(perioada);
	lista10.setSuma(suma);
	lista10.setDirectorProgram(director);
	
	if (lService.addRecordToList(user, lista10) != null)
	 {
%>
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>
		<TR>
			<TD COLSPAN=7 ALIGN=CENTER BGCOLOR="#DFE8F0">
				<P>
					<FONT FACE="Arial, sans-serif" SIZE=2 COLOR= #C2DFFF>
						Adaugat cu success!
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
						Eroare la adaugare!
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