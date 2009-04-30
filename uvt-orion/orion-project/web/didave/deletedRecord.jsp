<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%  
	response.setHeader("Cache-Control", "no-store, no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<html>

<head>
<title>Stergere Lucrare</title>
</head>
<body style="padding-top: 0px; margin-top: 0px;">

<%@ page import="com.uvt.team08.orion.domain.model.TipGrant"%>
<%@ page import="com.uvt.team08.orion.domain.service.ListsService"%>
<%@ page import="com.uvt.team08.orion.view.WebUtil"%>

<%@ include file="chooseMenu.jsp"%>
<%! 
	public int nr=0;
	public int idrecord=0;
	boolean ret_value = true;
	String nume_tabela;
%>
<%
	try
	{
		idrecord = Integer.parseInt(request.getParameter("record_id"));
	}
	catch (Exception e)
	{
		idrecord = -1;
	}
	
	nume_tabela = request.getParameter("nume_tabela");
%>

<TABLE WIDTH=100% HEIGHT=100% ALIGN=CENTER CELLSPACING=0 BORDER=0>

		<TR>
			<TD class="contents" align="center">
			<P>
	<%	try	
		{
			if (idrecord >= 0) ret_value =  WebUtil.getDeleteService().deleteRecord(nume_tabela, idrecord);
			else ret_value = WebUtil.getDeleteService().deleteRecord(nume_tabela);
			if (ret_value)
			{
			%>				
				
				<a class="historylinksucces" href="javascript: history.go(-1)">Articolul a fost sters.</a>
	<% } else { throw new Exception("Nu s-a putut face stergerea.");
		}}
			catch (Exception e) {
	%>
			<a class="historylinkerror" href="javascript: history.go(-1)">Exceptie: <%=e.getMessage()%> </FONT></a></P>
	<%
		}		
	%>
		</P>
		</TD>
	</TR>
</TABLE>
</td>
</tr>
<tr>
<td colspan=3>
<jsp:include page="menus/statusBar.jsp" />
</td>
</tr>
</TABLE>
</body>
</html>