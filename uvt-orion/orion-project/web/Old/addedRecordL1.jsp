<html>

<head>
<title>Adaugare Lucrare</title>
</head>
<body>

<%@ page import="com.uvt.team08.orion.domain.model.Lista1" %>
<%@ page import="com.uvt.team08.orion.domain.service.ListsService" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>

<%!
int user=1;
public ListsService lService = WebUtil.getListsService();
public Lista1 lista1=new Lista1();
%>
	<jsp:include page="menus/menuUser.jsp" />
	<TABLE WIDTH=90% HEIGHT=80% ALIGN=CENTER CELLSPACING=0 BORDER=0>

<%
try
  {
	String titluArticol = request.getParameter("TitluArticol");
	String autori = request.getParameter("Autori");
	String revista = request.getParameter("Revista");
	int volum = Integer.parseInt(request.getParameter("Volum"));
	int numar = Integer.parseInt(request.getParameter("Numar"));
	int paginaInceput = Integer.parseInt(request.getParameter("PaginaInceput"));
	int paginaSfarsit = Integer.parseInt(request.getParameter("PaginaSfarsit"));
	int anul = Integer.parseInt(request.getParameter("Anul"));
	double factorImpact = Double.parseDouble(request.getParameter("FactorImpact"));
	
	lista1.setTitluArticol(titluArticol);
	lista1.setAutorii(autori);
	lista1.setDenumireaRevistei(revista);
	lista1.setVol(volum);
	lista1.setNr(numar);
	lista1.setPaginaDeInceput(paginaInceput);
	lista1.setPaginaDeSfarsit(paginaSfarsit);
	lista1.setAnul(anul);
	lista1.setFactorImpact(factorImpact);

	if (lService.addRecordToList(user, lista1) != null)
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