<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%  
	response.setHeader("Cache-Control", "no-store, no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<%@ page import="com.uvt.team08.orion.domain.model.Metatable" %>
<%@ page import="com.uvt.team08.orion.domain.model.FieldFilter" %>
<%@ page import="com.uvt.team08.orion.domain.service.TableService" %>
<%@ page import="com.uvt.team08.orion.domain.service.UpdateService" %>
<%@ page import="com.uvt.team08.orion.domain.exceptions.EditException1" %>
<%@ page import="com.uvt.team08.orion.domain.exceptions.EditException2" %>
<%@ page import="com.uvt.team08.orion.view.WebUtil" %>
<%@ page import="com.uvt.team08.orion.domain.service.GUIService" %>
<%@ page import="com.uvt.team08.orion.meta.Tables" %>

<html>
<head>
<title>Editare Inregistrare</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="calendar.js">
</script>

<script type="text/javascript" src=validateAll.js>
</script>

<%!
   public String nrlista=null;
	int user=-1;
	int id_record = -1;
	public TableService tService = WebUtil.getTableService();
	public UpdateService uService = WebUtil.getUpdateService();
	public List<Metatable> tabele;
	public Metatable tabela;
	public ArrayList<FieldFilter> listFieldFilter;
	String tableID, rowID;
%>
<script type="text/javascript">
var bas_cal,dp_cal,ms_cal;      
window.onload = function () 
{
	dp_cal  = new Epoch('epoch_popup','popup',document.getElementById('popup_container'))
};
</script>
</head>
<body style="padding-top: 0px; margin-top: 0px;">	
		
<%@ include file="chooseMenu.jsp" %>		
<%
try 
{ 
	nrlista=request.getParameter("nume_tabela");		
} 	
catch (Exception e) 
{ 
			e.printStackTrace();
}


try
{
	id_record = Integer.parseInt(request.getParameter("record_id"));
	user=usr_id;
	
	/******************************/
	String numeTabela = nrlista;
	tableID = nrlista;
	rowID = request.getParameter("record_id");
	//String id_user = request.getParameter("id_user");
	/******************************/

	//out.println("nume=" + numeTabela + ";rid=" + id_record);
	
	tabele = tService.getTable(numeTabela);
	listFieldFilter = new ArrayList<FieldFilter>();
	//if (user >= 0) listFieldFilter.add(FieldFilter.newFieldFilter("id_user", "" + user, "" + user, "int"));

	for (Iterator<Metatable> tablei = tabele.iterator(); tablei.hasNext();)
	{
		tabela = tablei.next();
		String numeC = tabela.getCampTabela();
		String numeV = tabela.getCampVizual();
		String tipC = tabela.getTip().toLowerCase();
		String extraStuff = tabela.getExtraStuf();
		
		FieldFilter ff = FieldFilter.newFieldFilter(numeC, numeV, request.getParameter(numeC), request.getParameter(numeC), tipC, extraStuff);		
		listFieldFilter.add(ff);
		ff.container(listFieldFilter);
	}

	String err;
	//out.println(iService.sqlInsert(numeTabela, listFieldFilter));
	if (request.getParameter("inserare") != null)
	{
		err = uService.updateRecord(numeTabela, id_record, listFieldFilter);										
		if (err.substring(0, 6).equals("Eroare"))
		{			
			throw new EditException1(err);
		}
	}
	else throw new EditException2("");

	%>
	<TABLE WIDTH=100% HEIGHT=100% ALIGN=CENTER CELLSPACING=0 BORDER=0 class="contents">
		<TR>
			<TD class="contents" align="center">
				<%out.println(uService.updateRecord(numeTabela, id_record, listFieldFilter)); %>
			</TD>
		</TR>
	</TABLE>	 
<%	
	
}
catch (EditException2 e)
	{
		String mesaj_eronat = e.getMessage();
				
		 %>	 
						
					<TABLE WIDTH="100%" HEIGHT="100%" ALIGN="CENTER" CELLSPACING="0" BORDER="0" class="contents">
						<FORM NAME="Forma" ACTION="editRecord.jsp" METHOD ="POST">
						<COL WIDTH=38%>
						<COL WIDTH=2%>
						<COL WIDTH=60%>
					 	<input type="hidden" name="nume_tabela" value=<%= tableID %> />
					 	<input type="hidden" name="record_id" value=<%= rowID %> />
						
						<tr>
							<td colspan=3 class="content_header">
								Alterare pe Lucrare : <%= Tables.getTableNameByID(tableID) %>
							</td>
						</tr>
						<tr height="40px">
						</tr>
		<%
			 // OTHER LIST OR ERROR
			 
	if (mesaj_eronat.length() > 0)
	{
%>
	<tr>
	<td class="contents_important_message" colspan=3 align="center">
<%
	out.println(mesaj_eronat);
%> 
	</td></tr>
<%
	}
		out.println(WebUtil.getGUIService().getEditForm(tableID, rowID));
		
		%>

				<TR class="contents">
					<TD COLSPAN=1 ALIGN=RIGHT class="contents">
						<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
						</P>
					</TD>
					<TD COLSPAN=1  ALIGN=CENTER class="contents">
					<P><BR></P>
					</TD>		
					<TD COLSPAN=1 ALIGN=LEFT class="contents">
						<P>
						<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
						</P>			
					</TD>	
				</TR>
				<TR>
					<TD COLSPAN=3 ALIGN=CENTER class="contents">
					<P><BR></P>
					</TD>
				</TR>
				<input type="hidden" name="inserare" value="é" />
				</FORM>
			</TABLE>			
		<%

	}
catch (EditException1 e)
	{
	String mesaj_eronat = e.getMessage();
	if (mesaj_eronat == null) mesaj_eronat = "";
	%>
						
		<TABLE WIDTH="100%" HEIGHT="100%" ALIGN="CENTER" CELLSPACING="0" BORDER="0" class="contents">
			<FORM NAME="Forma" ACTION="editRecord.jsp" METHOD ="GET">
			
			<COL WIDTH=40%>
			<COL WIDTH=5%>
			<COL WIDTH=50%>
			
			<tr height=20px>
				<td colspan=3 class="content_header">
					Adaugare Lucrare : <%= Tables.getTableNameByID(tableID) %>
				</td>
			</tr>
<%
 // OTHER LIST OR ERROR
 
GUIService gui = WebUtil.getGUIService();

if (mesaj_eronat.length() > 0)
{
%>
<tr>
<td colspan=3 align="center" class="contents_important_message">
<%
out.println(mesaj_eronat);
%> 
</td></tr>
<%
}
%>
	<tr>
	<td class="contents">
	<table width=100% height=100% class="contents">
<%
out.println(gui.getInsertForm(listFieldFilter, tableID));
%>

	<TR class="contents">
		<TD COLSPAN=1 ALIGN=RIGHT class="contents">
			<P><input class="field_value"  TYPE=SUBMIT NAME="submit_btn" VALUE="Adauga" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
			</P>
		</TD>
		<TD COLSPAN=1  ALIGN=CENTER class="contents">
		<P><BR></P>
		</TD>		
		<TD COLSPAN=1 ALIGN=LEFT class="contents">
			<P>
			<input class="field_value"  TYPE=RESET NAME="reset_btn" VALUE="Reset" STYLE="font-family: 'Arial', sans-serif; font-size: 11pt">
			</P>			
		</TD>	
	</TR>
	<TR class="contents">
		<TD COLSPAN=3 ALIGN=CENTER class="contents">
		<P><BR></P>
		</TD>
	</TR>
	<input type="hidden" name="inserare" value="é" />
	<input type="hidden" name="nume_tabela" value="<%= tableID %>" />
	<input type="hidden" name="record_id" value="<%= rowID %>" />
	</table>
	</td>
	</tr>
			
	</FORM>
</TABLE>

		<%
	}
	%>
	</td></tr>
	<tr>
	<td colspan=3>	
	
	<jsp:include page="menus/statusBar.jsp" />
	</td>
	</tr>
	</table>

</body>
</html>