<%@ include file="menuList.jsp" %>  
<link href="style.css" rel="stylesheet" type="text/css">

<table width=100% height=100% CELLSPACING=0 BORDER=0>
	<tr height="300">
		<td background="newStyle/images/darkgraybg.gif" valign="top" height="300" width="200px">
		<TABLE width=100% height=100% CELLSPACING=0 BORDER=0>
			<%
				for (int i = 0; i < menuList.length; i++)
				{
					out.println("<TR background=\"newStyle/images/darkgraybg.gif\">");
				
					if (menuList[i][0] == null)
						out.println("<TD> </BR> </TD>");
					else if (menuList[i][1] == null)
						out.println("<TD class=\"menu_group\" width=\"200px\">" + menuList[i][0] + "</TD>");			
					else out.println("<TD class=\"field_name\" width=\"200px\"> <a class=\"aaction\" href=\"" + 
							menuList[i][1] + "\">" + menuList[i][0] + "</a></TD>");
					
					out.println("</TR>");
				}
			%>
		</TABLE>
		</td>
	</tr>
	<tr class="menu_back" height=60%>
		<td  background="newStyle/images/darkgraybg.gif">
		</td>
	</tr>
</table>