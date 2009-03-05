<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*,java.util.*" errorPage=""%>

<%@ page import="com.uvt.team08.orion.domain.model.Right"%>
<%@ page import="com.uvt.team08.orion.domain.service.UserService"%>
<%@ page import="com.uvt.team08.orion.domain.service.ListsService"%>
<%@ page import="com.uvt.team08.orion.view.WebUtil"%>
<%@ page import="com.uvt.team08.orion.domain.model.User"%>
<%@ page import="com.uvt.team08.orion.domain.model.Status"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Date"%>
<%@ page import="com.uvt.team08.orion.domain.model.FunctieDidactica"%>
<%@ page import="com.uvt.team08.orion.domain.model.Level"%>

<%
	UserService userService = WebUtil.getUserService();
%>

	<%@ include file="auth.jsp" %>

<%
	response.setHeader("Cache-Control", "no-store, no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<%
	int usage = -1; // 0 = admin add, 1 = edit

	if (request.getParameter("uid") == null)
	{
		if(response.isCommitted() == false) {
		%><jsp:forward page="login.jsp" /><%
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
	}
	
	if (usr_role == Right.ADMINISTRATOR) {
		try {
			if (request.getParameter("uid") != null
					&& request.getParameter("uid").equals("0")) // add user 
			{
				usage = 0;
			} else {
				if (request.getParameter("uid") != null
						&& Integer
								.parseInt(request.getParameter("uid")) > 0) {
					usage = 1;
				}
			}
		} catch (Exception x) {
		}
	}

	else {
		usage = 1;
	}
%>

<%
	if (request.getParameter("val_nume") != null
			&& request.getParameter("val_prenume") != null
			&& request.getParameter("val_data_nasterii") != null) {
		int edited_id = 0;
		if (request.getParameter("uid") != null && usage == 1)
			edited_id = Integer.parseInt(request.getParameter("uid"));
		String nume = request.getParameter("val_nume");
		String prenume = request.getParameter("val_prenume");
		String email = request.getParameter("val_email");
		String parola = request.getParameter("val_parola");
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(
				"dd/MM/yyyy");
		java.util.Date data_nasterii = new java.util.Date();
		data_nasterii = sdf.parse(request
				.getParameter("val_data_nasterii"));

		FunctieDidactica functie = null;

		if (request.getParameter("val_functie").toUpperCase().equals(
				FunctieDidactica.PREPARATOR.toString().toUpperCase()))
			functie = FunctieDidactica.PREPARATOR;
		else if (request.getParameter("val_functie").toUpperCase()
				.equals(
						FunctieDidactica.ASISTENT.toString()
								.toUpperCase()))
			functie = FunctieDidactica.ASISTENT;
		else if (request.getParameter("val_functie").toUpperCase()
				.equals(
						FunctieDidactica.LECTOR.toString()
								.toUpperCase()))
			functie = FunctieDidactica.LECTOR;
		else if (request.getParameter("val_functie").toUpperCase()
				.equals(
						FunctieDidactica.CONFERENTIAR.toString()
								.toUpperCase()))
			functie = FunctieDidactica.CONFERENTIAR;
		else if (request.getParameter("val_functie").toUpperCase()
				.equals(
						FunctieDidactica.PROFESOR.toString()
								.toUpperCase()))
			functie = FunctieDidactica.PROFESOR;
		Level level = null;
		if (request.getParameter("val_level").toUpperCase().equals(
				Level.ASOCIAT.toString().toUpperCase()))
			level = Level.ASOCIAT;
		else if (request.getParameter("val_level").toUpperCase()
				.equals(Level.SUPLINITOR.toString().toUpperCase()))
			level = Level.SUPLINITOR;
		else if (request.getParameter("val_level").toUpperCase()
				.equals(Level.TITULAR.toString().toUpperCase()))
			level = Level.TITULAR;

		boolean doctor = false;
		if (request.getParameter("val_doctor") != null
				&& request.getParameter("val_doctor").equals("1"))
			doctor = true;
		int doctor_din_anul = 0;
		boolean conducator_doctorat = false;
		boolean consultant = false;
		
		if (request.getParameter("val_consultant") != null
				&& request.getParameter("val_consultant").equals("1"))
			consultant = true;
		
		int val_doctoranzi_zi = 0;
		int val_doctoranzi_ff = 0;

		Right rol = Right.USER;
		if (request.getParameter("val_rol") != null
				&& request.getParameter("val_rol").equals(
						"Administrator"))
			rol = Right.ADMINISTRATOR;
		else if (request.getParameter("val_rol") != null
				&& request.getParameter("val_rol").equals("Cadru"))
			rol = Right.USER;

		if (doctor) {
			doctor_din_anul = Integer.parseInt(request
					.getParameter("doctor_din_anul"));
			if (request.getParameter("val_conducator_doctorat") != null
					&& request.getParameter("val_conducator_doctorat")
							.equals("1"))
				conducator_doctorat = true;
			if (conducator_doctorat) {
				val_doctoranzi_zi = Integer.parseInt(request
						.getParameter("val_doctoranzi_zi"));
				val_doctoranzi_ff = Integer.parseInt(request
						.getParameter("val_doctoranzi_ff"));
			}
		}

		User add_user = new User(email, parola, rol);
		add_user.setFirstName(nume);
		add_user.setLastName(prenume);
		add_user.setBirthDate(data_nasterii);
		add_user.setFunctieDidactica(functie);
		add_user.setLevel(level);
		add_user.setDoctor(doctor);
		add_user.setDoctorDin(doctor_din_anul);
		add_user.setConducatorDoctorat(conducator_doctorat);
		add_user.setDoctoranziStagiuZi(val_doctoranzi_zi);
		add_user.setDoctoranziStagiuFrecventaRedusa(val_doctoranzi_ff);
		add_user.setConsultant(consultant);

		if (usr_role == Right.ADMINISTRATOR) {
			if (request.getParameter("usage").equals("0")) {
				try {
					userService.register(usr_id, add_user);
				} catch (Exception ex) {
					%><jsp:forward page="login.jsp" /><%
				}

			} else if (request.getParameter("usage").equals("1")) {
				User newUser = userService.getUser(edited_id);
				newUser.setFirstName(nume);
				newUser.setLastName(prenume);
				newUser.setEmailAddress(email);
				newUser.setBirthDate(data_nasterii);
				if (parola != null && parola.length() > 0)
					newUser.setPassword(parola);				
				newUser.setFunctieDidactica(functie);
				newUser.setLevel(level);
				newUser.setDoctor(doctor);
				newUser.setDoctorDin(doctor_din_anul);
				newUser.setConducatorDoctorat(conducator_doctorat);
				newUser.setDoctoranziStagiuZi(val_doctoranzi_zi);
				newUser.setDoctoranziStagiuFrecventaRedusa(val_doctoranzi_ff);
				newUser.setUserRight(rol);
				newUser.setConsultant(consultant);

				try {
					userService.modify(usr_id, edited_id, newUser,
							(parola != null && parola.length() > 0) ? true : false);
				} catch (Exception c) {
				}
			}
		} else // edit profil de catre cadru
		{
			User newUser = userService.getUser(usr_id);
			newUser.setFirstName(nume);
			newUser.setLastName(prenume);
			newUser.setEmailAddress(email);
			newUser.setBirthDate(data_nasterii);
			if (parola != null && parola.length() > 0)
				newUser.setPassword(parola);
			newUser.setFunctieDidactica(functie);
			newUser.setLevel(level);
			newUser.setDoctor(doctor);
			newUser.setDoctorDin(doctor_din_anul);
			newUser.setConducatorDoctorat(conducator_doctorat);
			newUser.setDoctoranziStagiuZi(val_doctoranzi_zi);
			newUser.setDoctoranziStagiuFrecventaRedusa(val_doctoranzi_ff);
			newUser.setConsultant(consultant);
			
			try {
				userService.modify(usr_id, usr_id, newUser, 
						(parola != null && parola.length() > 0) ? true : false);
			} catch (Exception c) {
			}
		}
	}

	if (request.getParameter("val_nume") != null
			&& response.isCommitted() == false) {
%><jsp:forward page="users_list.jsp?msg=2" />
<%
	}
%>

<script type="text/javascript">

function checkemail()
{
	var str=document.getElementById("field_email").value;
	var filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
	if (filter.test(str))
		return true
	else
		return false
}

function fct_selected()
{
	document.getElementById("hv1").value = "";
	if (document.register_form.id_fctie.selectedIndex > 2)
	{
		document.getElementById("cond_dr").checked = false;
		expand_1();
		document.getElementById("field_doctor_chk").checked = true;
		document.getElementById("cond_dr").disabled = false;
	}
	else
	{
		document.getElementById("field_doctor_chk").checked = false;
		check_is_doctor();
		document.getElementById("cond_dr").checked = false;
		document.getElementById("cond_dr").disabled = true;
	}
	
	if (document.register_form.id_fctie.selectedIndex == 4)
		document.getElementById("field_consultant").disabled = false;
		else
		{
			document.getElementById("field_consultant").disabled = true;
			document.getElementById("field_consultant").checked = false;
		}
	expand_2();
}

function expand_1()
{
	if (document.getElementById("field_doctor_din").checked == 'undefined')
   	{
		document.getElementById("field_doctor_din").checked = true;
	}
	
	if (document.register_form.id_fctie.selectedIndex > 2) // void uncheck for index > 2 
	{
		document.getElementById("field_doctor_chk").checked = true;
	}
	check_is_doctor();
}

function check_is_doctor()
{
	if (document.getElementById("field_doctor_chk").checked == true)
	{
		document.getElementById("hv1").disabled = false;
	}
	else
	{
		document.getElementById("hv1").disabled = true;
		document.getElementById("hv1").value = "";
	}
}

function expand_2()
{
	if (document.getElementById("cond_dr").checked == true)
	{
		document.getElementById("hv2").disabled = false;
		document.getElementById("hv3").disabled = false;
	}
	else
	{
		document.getElementById("hv2").disabled = true;
		document.getElementById("hv2").value = "";
		document.getElementById("hv3").disabled = true;
		document.getElementById("hv3").value = "";
	}
}

function valideaza_form()
{
	err = "";
	if (document.getElementById("field_nume").value.length < 3)
		err += "Nume invalid";
	if (document.getElementById("field_prenume").value.length < 3)
		err += "\nPrenume invalid";
	if (checkemail() == false)
		err += "\nAdresa de e-mail invalida.";
	if ((document.getElementById("field_parola").value.length < 3
		&& document.getElementById("usage").value == 0)
		||
		(document.getElementById("field_parola").value.length != 0
		&& document.getElementById("usage").value == 1
		&& document.getElementById("field_parola").value.length < 3)
		)
		{
			err += "\nParola este prea scurta.";
		}
	if (document.getElementById("popup_container").value.length < 10)
		err += "\nData nasterii este invalida.";
		
	
	if (document.getElementById("field_doctor_chk").checked == true)
	{
		var nowd = new Date;
		yval = document.getElementById("hv1").value;
		
		if (yval.length != 4 || yval > nowd.getFullYear() || yval < (nowd.getFullYear() - 70))
			err += "\nAnul setat pentru campul \"doctor din\" este invalid.";
	}
	

	
	if (document.getElementById("field_doctoranzi_stagiu").checked == true)
		if (document.getElementById("hv2").value + document.getElementById("hv3").value < 1)
			err += "\nNumarul studentilor la doctorat trebuie sa fie mai mare ca 0.";
	if (err != "")
		alert(err);
		else
			document.register_form.submit();
}

</script>

<script type="text/javascript">
function Epoch(name,mode,targetelement,multiselect)
{
	this.state = 0;
	this.name = name;
	this.curDate = new Date();
	this.mode = mode;
	this.selectMultiple = (multiselect == true);
	this.selectedDates = new Array();
	this.calendar;
	this.calHeading;
	this.calCells;
	this.rows;
	this.cols;
	this.cells = new Array();
	this.monthSelect;
	this.yearSelect;
	this.mousein = false;
	this.calConfig();
	this.setDays();
	this.displayYear = this.displayYearInitial;
	this.displayMonth = this.displayMonthInitial;
	
	this.createCalendar();
	
	if(this.mode == 'popup' && targetelement && targetelement.type == 'text')
	{
		this.tgt = targetelement;
		this.calendar.style.position = 'absolute';
		this.topOffset = this.tgt.offsetHeight;
		this.leftOffset = 138;
		this.calendar.style.top = this.getTop(targetelement) + this.topOffset - 19 + 'px';
		this.calendar.style.left = this.getLeft(targetelement) + this.leftOffset + 'px';
		document.body.appendChild(this.calendar);
		this.tgt.calendar = this;
		this.tgt.onfocus = function () {this.calendar.show();};
		this.tgt.onblur = function () {if(!this.calendar.mousein){this.calendar.hide();}};
	}
	else
	{
		this.container = targetelement;
		this.container.appendChild(this.calendar);
	}
	
	this.state = 2;
	this.visible ? this.show() : this.hide();
}

Epoch.prototype.calConfig = function ()
{
	var today_d = new Date;
	this.displayYearInitial = today_d.getFullYear() - 70;
	this.displayMonthInitial = this.curDate.getMonth();
	this.rangeYearLower = today_d.getFullYear() - 70;
	this.rangeYearUpper = today_d.getFullYear() - 18;
	this.minDate = today_d.getFullYear() - 70;
	this.maxDate = today_d.getFullYear() - 18;
	this.startDay = 1;
	this.showWeeks = false;
	this.selCurMonthOnly = false;
	this.clearSelectedOnChange = true;
	switch(this.mode)
	{
		case 'popup':
			this.visible = false;
			break;
		case 'flat':
			this.visible = true;
			
			break;
	}
	this.setLang();
};

Epoch.prototype.setLang = function()
{
	this.daylist = new Array('D','L','Ma','Mi','J','V','S','D','Mo','Tu','We','Th','Fr','Sa'); /*<lang:en>*/
	this.months_sh = new Array('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	this.monthup_title = 'Luna urmatoare';
	this.monthdn_title = 'Luna precedenta';
	this.clearbtn_caption = 'Sterge data';
	this.clearbtn_title = '';
	this.maxrange_caption = 'Nu este permisa o valoare mai mare';
};
Epoch.prototype.getTop = function (element)
{
    var oNode = element;
    var iTop = 0;
    
    while(oNode.tagName != 'BODY') {
        iTop += oNode.offsetTop;
        oNode = oNode.offsetParent;
    }
    
    return iTop;
};
Epoch.prototype.getLeft = function (element)
{
    var oNode = element;
    var iLeft = 0;
    
    while(oNode.tagName != 'BODY') {
        iLeft += oNode.offsetLeft;
        oNode = oNode.offsetParent;        
    }
    
    return iLeft;
};
Epoch.prototype.show = function () 
{
	this.calendar.style.display = 'block';
	this.visible = true;
};
Epoch.prototype.hide = function ()
{
	this.calendar.style.display = 'none';
	this.visible = false;
};
Epoch.prototype.toggle = function ()
{
	if(this.visible) {
		this.hide();
	}
	else {
		this.show();
	}
};
Epoch.prototype.setDays = function ()
{
	this.daynames = new Array();
	var j=0;
	for(var i=this.startDay; i< this.startDay + 7;i++) {
		this.daynames[j++] = this.daylist[i];
	}
		
	this.monthDayCount = new Array(31,((this.curDate.getFullYear() - 2000) % 4 ? 28 : 29),31,30,31,30,31,31,30,31,30,31);
};
Epoch.prototype.setClass = function (element,className)
{
	element.setAttribute('class',className);
	element.setAttribute('className',className);
};

Epoch.prototype.createCalendar = function ()
{
	var tbody, tr, td;
	this.calendar = document.createElement('table');
	this.calendar.setAttribute('id',this.name+'_calendar');
	this.setClass(this.calendar,'calendar');
	this.calendar.onselectstart = function() {return false;};
	this.calendar.ondrag = function() {return false;};
	tbody = document.createElement('tbody');
	tr = document.createElement('tr');
	td = document.createElement('td');
	td.appendChild(this.createMainHeading());
	tr.appendChild(td);
	tbody.appendChild(tr);
	tr = document.createElement('tr');
	td = document.createElement('td');
	td.appendChild(this.createDayHeading());
	tr.appendChild(td);
	tbody.appendChild(tr);
	tr = document.createElement('tr');
	td = document.createElement('td');
	td.setAttribute('id',this.name+'_cell_td');
	this.calCellContainer = td;
	td.appendChild(this.createCalCells());
	tr.appendChild(td);
	tbody.appendChild(tr);
	tr = document.createElement('tr');
	td = document.createElement('td');
	td.appendChild(this.createFooter());
	tr.appendChild(td);
	tbody.appendChild(tr);
	this.calendar.appendChild(tbody);
	this.calendar.owner = this;
	this.calendar.onmouseover = function() {this.owner.mousein = true;};
	this.calendar.onmouseout = function() {this.owner.mousein = false;};
};
Epoch.prototype.createMainHeading = function ()
{
	var container = document.createElement('div');
	container.setAttribute('id',this.name+'_mainheading');
	this.setClass(container,'mainheading');
	this.monthSelect = document.createElement('select');
	this.yearSelect = document.createElement('select');
	var monthDn = document.createElement('input'), monthUp = document.createElement('input');
	var opt, i;
	for(i=0;i<12;i++)
	{
		opt = document.createElement('option');
		opt.setAttribute('value',i);
		if(this.state == 0 && this.displayMonth == i) {
			opt.setAttribute('selected','selected');
		}
		opt.appendChild(document.createTextNode(this.months_sh[i]));
		this.monthSelect.appendChild(opt);
	}
	for(i=this.rangeYearLower;i<=this.rangeYearUpper;i++)
	{
		opt = document.createElement('option');
		opt.setAttribute('value',i);
		if(this.state == 0 && this.displayYear == i) {
			opt.setAttribute('selected','selected');
		}
		opt.appendChild(document.createTextNode(i));
		this.yearSelect.appendChild(opt);		
	}
	monthUp.setAttribute('type','button');
	monthUp.setAttribute('value','>');
	monthUp.setAttribute('title',this.monthup_title);
	monthDn.setAttribute('type','button');
	monthDn.setAttribute('value','<');
	monthDn.setAttribute('title',this.monthdn_title);
	this.monthSelect.owner = this.yearSelect.owner = monthUp.owner = monthDn.owner = this;
	monthUp.onmouseup = function () {this.owner.nextMonth();};
	monthDn.onmouseup = function () {this.owner.prevMonth();};
	this.monthSelect.onchange = function() {
		this.owner.displayMonth = this.value;
		this.owner.displayYear = this.owner.yearSelect.value; 
		this.owner.goToMonth(this.owner.displayYear,this.owner.displayMonth);
	};
	this.yearSelect.onchange = function() {
		this.owner.displayMonth = this.owner.monthSelect.value;
		this.owner.displayYear = this.value; 
		this.owner.goToMonth(this.owner.displayYear,this.owner.displayMonth);
	};
	container.appendChild(monthDn);
	container.appendChild(this.monthSelect);
	container.appendChild(this.yearSelect);
	container.appendChild(monthUp);
	return container;
};

Epoch.prototype.createFooter = function ()
{
	var container = document.createElement('div');
	var clearSelected = document.createElement('input');
	clearSelected.setAttribute('type','button');
	clearSelected.setAttribute('value',this.clearbtn_caption);
	clearSelected.setAttribute('title',this.clearbtn_title);
	clearSelected.owner = this;
	clearSelected.onclick = function() { this.owner.resetSelections(false);};
	container.appendChild(clearSelected);
	return container;
};
Epoch.prototype.resetSelections = function (returnToDefaultMonth)
{
	this.selectedDates = new Array();
	this.rows = new Array(false,false,false,false,false,false,false);
	this.cols = new Array(false,false,false,false,false,false,false);
	if(this.tgt)
	{
		this.tgt.value = '';
		if(this.mode == 'popup') {
			this.hide();
		}
	}
		
	if(returnToDefaultMonth == true) {
		this.goToMonth(this.displayYearInitial,this.displayMonthInitial);
	}
	else {
		this.reDraw();
	}
};

Epoch.prototype.createDayHeading = function ()
{
	this.calHeading = document.createElement('table');
	this.calHeading.setAttribute('id',this.name+'_caldayheading');
	this.setClass(this.calHeading,'caldayheading');
	var tbody,tr,td;
	tbody = document.createElement('tbody');
	tr = document.createElement('tr');
	this.cols = new Array(false,false,false,false,false,false,false);
	if(this.showWeeks)
	{
		td = document.createElement('td');
		td.setAttribute('class','wkhead');
		td.setAttribute('className','wkhead'); //<iehack>
		tr.appendChild(td);
	}
	for(var dow=0;dow<7;dow++)
	{
		td = document.createElement('td');
		td.appendChild(document.createTextNode(this.daynames[dow]));
		if(this.selectMultiple) {
			td.headObj = new CalHeading(this,td,(dow + this.startDay < 7 ? dow + this.startDay : dow + this.startDay - 7));
		}
		tr.appendChild(td);
	}
	tbody.appendChild(tr);
	this.calHeading.appendChild(tbody);
	return this.calHeading;	
};
Epoch.prototype.createCalCells = function ()
{
	this.rows = new Array(false,false,false,false,false,false);
	this.cells = new Array();
	var row = -1, totalCells = (this.showWeeks ? 48 : 42);
	var beginDate = new Date(this.displayYear,this.displayMonth,1);
	var endDate = new Date(this.displayYear,this.displayMonth,this.monthDayCount[this.displayMonth]);
	var sdt = new Date(beginDate);
	sdt.setDate(sdt.getDate() + (this.startDay - beginDate.getDay()) - (this.startDay - beginDate.getDay() > 0 ? 7 : 0) );
	this.calCells = document.createElement('table');
	this.calCells.setAttribute('id',this.name+'_calcells');
	this.setClass(this.calCells,'calcells');
	var tbody,tr,td;
	tbody = document.createElement('tbody');
	for(var i=0;i<totalCells;i++)
	{
		if(this.showWeeks)
		{
			if(i % 8 == 0)
			{
				row++;
				tr = document.createElement('tr');
				td = document.createElement('td');
				if(this.selectMultiple) {
					td.weekObj = new WeekHeading(this,td,sdt.getWeek(),row)
				}
				else
				{
					td.setAttribute('class','wkhead');
					td.setAttribute('className','wkhead');
				}
				td.appendChild(document.createTextNode(sdt.getWeek()));			
				tr.appendChild(td);
				i++;
			}
		}
		else if(i % 7 == 0)
		{
			row++;
			tr = document.createElement('tr');
		}
		td = document.createElement('td');
		td.appendChild(document.createTextNode(sdt.getDate()));
		var cell = new CalCell(this,td,sdt,row);
		this.cells.push(cell);
		td.cellObj = cell;
		sdt.setDate(sdt.getDate() + 1);
		tr.appendChild(td);
		tbody.appendChild(tr);
	}
	this.calCells.appendChild(tbody);
	this.reDraw();
	return this.calCells;
};

Epoch.prototype.reDraw = function ()
{
	this.state = 1;
	var i,j;
	for(i=0;i<this.cells.length;i++) {
		this.cells[i].selected = false;
	}
	for(i=0;i<this.cells.length;i++)
	{
		for(j=0;j<this.selectedDates.length;j++) {
			if(this.cells[i].date.getUeDay() == this.selectedDates[j].getUeDay() ) {
				this.cells[i].selected = true;
			}
		}

		this.cells[i].setClass();
	}
	this.state = 2;
};

Epoch.prototype.deleteCells = function () 
{
	this.calCellContainer.removeChild(this.calCellContainer.firstChild); 
	this.cells = new Array();
};

Epoch.prototype.goToMonth = function (year,month)
{
	this.monthSelect.value = this.displayMonth = month;
	this.yearSelect.value = this.displayYear = year;
	this.deleteCells();
	this.calCellContainer.appendChild(this.createCalCells());
};

Epoch.prototype.nextMonth = function ()
{
	if(this.monthSelect.value < 11) {
		this.monthSelect.value++;
	}
	else
	{
		if(this.yearSelect.value < this.rangeYearUpper)
		{
			this.monthSelect.value = 0;
			this.yearSelect.value++;
		}
		else {
			alert(this.maxrange_caption);
		}
	}

	this.displayMonth = this.monthSelect.value;
	this.displayYear = this.yearSelect.value;
	

	this.deleteCells();
	this.calCellContainer.appendChild(this.createCalCells());
};

Epoch.prototype.prevMonth = function ()
{

	if(this.monthSelect.value > 0)
		this.monthSelect.value--;
	else
	{
		if(this.yearSelect.value > this.rangeYearLower)
		{
			this.monthSelect.value = 11;
			this.yearSelect.value--;
		}
		else {
			alert(this.maxrange_caption);
		}
	}
	
	this.displayMonth = this.monthSelect.value;
	this.displayYear = this.yearSelect.value;
	
	
	this.deleteCells();
	this.calCellContainer.appendChild(this.createCalCells());
};

Epoch.prototype.addZero = function (vNumber)
{
	return ((vNumber < 10) ? '0' : '') + vNumber;
};

Epoch.prototype.addDates = function (dates,redraw)
{
	var j,in_sd;
	for(var i=0;i<dates.length;i++)
	{	
		in_sd = false;
		for(j=0;j<this.selectedDates.length;j++)
		{
			if(dates[i].getUeDay() == this.selectedDates[j].getUeDay())
			{
				in_sd = true;
				break;
			}
		}
		if(!in_sd) {
			this.selectedDates.push(dates[i]);
		}
	}
	if(redraw != false) {
		this.reDraw();
	}
};

Epoch.prototype.removeDates = function (dates,redraw)
{
	var j;
	for(var i=0;i<dates.length;i++)
	{
		for(j=0;j<this.selectedDates.length;j++)
		{
			if(dates[i].getUeDay() == this.selectedDates[j].getUeDay()) {
				this.selectedDates.splice(j,1);
			}
		}
	}
	if(redraw != false) {
		this.reDraw();
	}
};

Epoch.prototype.outputDate = function (vDate, vFormat)
{
	var vDay			= this.addZero(vDate.getDate()); 
	var vMonth			= this.addZero(vDate.getMonth() + 1); 
	var vYearLong		= this.addZero(vDate.getFullYear()); 
	var vYearShort		= this.addZero(vDate.getFullYear().toString().substring(3,4)); 
	var vYear			= (vFormat.indexOf('yyyy') > -1 ? vYearLong : vYearShort);
	var vHour			= this.addZero(vDate.getHours()); 
	var vMinute			= this.addZero(vDate.getMinutes()); 
	var vSecond			= this.addZero(vDate.getSeconds()); 
	return vFormat.replace(/dd/g, vDay).replace(/mm/g, vMonth).replace(/y{1,4}/g, vYear).replace(/hh/g, vHour).replace(/nn/g, vMinute).replace(/ss/g, vSecond);
};

Epoch.prototype.updatePos = function (target)
{
	this.calendar.style.top = this.getTop(target) + this.topOffset + 'px'
	this.calendar.style.left = this.getLeft(target) + this.leftOffset + 'px'
}

function CalHeading(owner,tableCell,dow)
{
	this.owner = owner;
	this.tableCell = tableCell;
	this.dayOfWeek = dow;
	this.tableCell.onclick = this.onclick;
}
CalHeading.prototype.onclick = function ()
{
	var owner = this.headObj.owner;
	var sdates = owner.selectedDates;
	var cells = owner.cells;
	
	owner.cols[this.headObj.dayOfWeek] = !owner.cols[this.headObj.dayOfWeek];
	for(var i=0;i<cells.length;i++)
	{
		if(cells[i].dayOfWeek == this.headObj.dayOfWeek && (!owner.selCurMonthOnly || cells[i].date.getMonth() == owner.displayMonth && cells[i].date.getFullYear() == owner.displayYear)) //if the cell's DoW matches, with other conditions
		{
			if(owner.cols[this.headObj.dayOfWeek])
			{
				if(owner.selectedDates.arrayIndex(cells[i].date) == -1) {
					sdates.push(cells[i].date);
				}
			}
			else
			{
				for(var j=0;j<sdates.length;j++) 
				{
					if(cells[i].dayOfWeek == sdates[j].getDay())
					{
						sdates.splice(j,1);
						break;
					}
				}
			}
			cells[i].selected = owner.cols[this.headObj.dayOfWeek];
		}
	}
	owner.reDraw();
};

function WeekHeading(owner,tableCell,week,row)
{
	this.owner = owner;
	this.tableCell = tableCell;
	this.week = week;
	this.tableRow = row;
	this.tableCell.setAttribute('class','wkhead');
	this.tableCell.setAttribute('className','wkhead');
	this.tableCell.onclick = this.onclick;
}

WeekHeading.prototype.onclick = function ()
{

	var owner = this.weekObj.owner;
	var cells = owner.cells;
	var sdates = owner.selectedDates;
	var i,j;
	owner.rows[this.weekObj.tableRow] = !owner.rows[this.weekObj.tableRow];
	for(i=0;i<cells.length;i++)
	{
		if(cells[i].tableRow == this.weekObj.tableRow)
		{
			if(owner.rows[this.weekObj.tableRow] && (!owner.selCurMonthOnly || cells[i].date.getMonth() == owner.displayMonth && cells[i].date.getFullYear() == owner.displayYear))
			{
				if(owner.selectedDates.arrayIndex(cells[i].date) == -1) {
					sdates.push(cells[i].date);
				}
			}
			else
			{
				for(j=0;j<sdates.length;j++)
				{
					if(sdates[j].getTime() == cells[i].date.getTime())
					{
						sdates.splice(j,1);
						break;
					}
				}
			}
		}
	}
	owner.reDraw();
};
function CalCell(owner,tableCell,dateObj,row)
{
	this.owner = owner;
	this.tableCell = tableCell; 
	this.cellClass;
	this.selected = false;
	this.date = new Date(dateObj);
	this.dayOfWeek = this.date.getDay();
	this.week = this.date.getWeek();
	this.tableRow = row;
	this.tableCell.onclick = this.onclick;
	this.tableCell.onmouseover = this.onmouseover;
	this.tableCell.onmouseout = this.onmouseout;
	this.setClass();
}

CalCell.prototype.onmouseover = function ()
{
	this.setAttribute('class',this.cellClass + ' hover');
	this.setAttribute('className',this.cellClass + ' hover');
};

CalCell.prototype.onmouseout = function ()
{
	this.cellObj.setClass();
};

CalCell.prototype.onclick = function () 
{
	var cell = this.cellObj;
	var owner = cell.owner;
	if(!owner.selCurMonthOnly || cell.date.getMonth() == owner.displayMonth && cell.date.getFullYear() == owner.displayYear)
	{
		if(owner.selectMultiple == true)
		{
			if(!cell.selected)
			{
				if(owner.selectedDates.arrayIndex(cell.date) == -1) {
					owner.selectedDates.push(cell.date);
				}
			}
			else		
			{
				var tmp = owner.selectedDates;
				for(var i=0;i<tmp.length;i++)
				{
					if(tmp[i].getUeDay() == cell.date.getUeDay()) {
						tmp.splice(i,1);
					}
				}
			}
		}
		else
		{
			owner.selectedDates = new Array(cell.date);
			if(owner.tgt)
			{
				owner.tgt.value = owner.selectedDates[0].dateFormat();
				if(owner.mode == 'popup') {
					owner.hide();
				}
			}
		}
		owner.reDraw();
	}
};

CalCell.prototype.setClass = function ()
{
	if(this.selected) {
		this.cellClass = 'cell_selected';
	}
	else if(this.owner.displayMonth != this.date.getMonth() ) {
		this.cellClass = 'notmnth';	
	}
	else if(this.date.getDay() > 0 && this.date.getDay() < 6) {
		this.cellClass = 'wkday';
	}
	else {
		this.cellClass = 'wkend';
	}
	
	if(this.date.getFullYear() == this.owner.curDate.getFullYear() && this.date.getMonth() == this.owner.curDate.getMonth() && this.date.getDate() == this.owner.curDate.getDate()) {
		this.cellClass = this.cellClass + ' curdate';
	}

	this.tableCell.setAttribute('class',this.cellClass);
	this.tableCell.setAttribute('className',this.cellClass);
};

Date.prototype.getDayOfYear = function ()
{
	return parseInt((this.getTime() - new Date(this.getFullYear(),0,1).getTime())/86400000 + 1);
};

Date.prototype.getWeek = function ()
{
	return parseInt((this.getTime() - new Date(this.getFullYear(),0,1).getTime())/604800000 + 1);
};
Date.prototype.getUeDay = function () //returns the number of DAYS since the UNIX Epoch - good for comparing the date portion
{
	return parseInt(Math.floor((this.getTime() - this.getTimezoneOffset() * 60000)/86400000)); //must take into account the local timezone
};

Date.prototype.dateFormat = function(format)
{
	if(!format) {
		format = 'd/m/Y';
	}
	LZ = function(x) {return(x < 0 || x > 9 ? '' : '0') + x};
	var MONTH_NAMES = new Array('January','February','March','April','May','June','July','August','September','October','November','December','Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	var DAY_NAMES = new Array('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sun','Mon','Tue','Wed','Thu','Fri','Sat');
	format = format + "";
	var result="";
	var i_format=0;
	var c="";
	var token="";
	var y=this.getFullYear().toString();
	var M=this.getMonth()+1;
	var d=this.getDate();
	var E=this.getDay();
	var H=this.getHours();
	var m=this.getMinutes();
	var s=this.getSeconds();
	var yyyy,yy,MMM,MM,dd,hh,h,mm,ss,ampm,HH,H,KK,K,kk,k;
	var value = new Object();
	value['Y'] = y.toString();
	value['y'] = y.substring(2);
	value['n'] = M;
	value['m'] = LZ(M);
	value['F'] = MONTH_NAMES[M-1];
	value['M'] = MONTH_NAMES[M+11];
	value['j'] = d;
	value['d'] = LZ(d);
	value['D'] = DAY_NAMES[E+7];
	value['l'] = DAY_NAMES[E];
	value['G'] = H;
	value['H'] = LZ(H);
	if (H==0) {value['g']=12;}
	else if (H>12){value['g']=H-12;}
	else {value['g']=H;}
	value['h']=LZ(value['g']);
	if (H > 11) {value['a']='pm'; value['A'] = 'PM';}
	else { value['a']='am'; value['A'] = 'AM';}
	value['i']=LZ(m);
	value['s']=LZ(s);
	while (i_format < format.length) {
		c=format.charAt(i_format);
		token="";
		while ((format.charAt(i_format)==c) && (i_format < format.length)) {
			token += format.charAt(i_format++);
			}
		if (value[token] != null) { result=result + value[token]; }
		else { result=result + token; }
		}
	return result;
};

Array.prototype.arrayIndex = function(searchVal,startIndex)
{
	startIndex = (startIndex != null ? startIndex : 0);
	for(var i=startIndex;i<this.length;i++)
	{
		if(searchVal == this[i]) {
			return i;
		}
	}
	return -1;
};

</script>
<script type="text/javascript">
var bas_cal,dp_cal,ms_cal;      
window.onload = function () {
	dp_cal  = new Epoch('epoch_popup','popup',document.getElementById('popup_container'));
};
</script>

<%
	User editu = null;
	if (usage == 1) // edit
	{
		int euid = -1;
		if (usr_role == Right.ADMINISTRATOR)
			try {
				if (request.getParameter("uid") != null) {
					euid = Integer
							.parseInt(request.getParameter("uid"));
				} else
					response.sendRedirect("users_list.jsp");
			} catch (Exception ex) {
			}
		else if (usr_role == Right.USER) {
			euid = usr_id;
		}
		try {
			editu = userService.getUser(euid); // parca as vrea o exceptie aici ;)
			if (editu == null)
				response.sendRedirect("users_list.jsp");
		} catch (Exception ex) {
			%><jsp:forward page="login.jsp" /><%
		}
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Administrare useri</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="calendar.css" />
</head>

<body style="padding-top: 0px; margin-top: 0px;">
<%
if (usr_role == Right.ADMINISTRATOR) 
	{
%>
	<jsp:include page="menus/menuAdmin.jsp" />
<%	
	}
else if (usr_role == Right.USER)
	{
%>
	<jsp:include page="menus/menuUser.jsp" />
<%		
	}
%>	
<table width=90% border="0" cellspacing="0" cellpadding="3" align="center">
	<tr bgcolor="#8DA3B1" height="90">
		<td class="header_text" style="padding-left: 45px; padding-top: 50px;">
		Editare cont</td>
	</tr>
	<tr bgcolor="#DFE8F0" height="450">
		<td class="field_name" valign="top" style="padding-top:40px; padding-bottom:40px;">
		<form action="edit_user.jsp" method="post"
			enctype="application/x-www-form-urlencoded" name="register_form"
			target="_self">

		<table width="382" border="0" align="center" cellpadding="5"
			cellspacing="0" style="padding-bottom:20px;">
			<tr>
				<td width="172" class="field_name">Nume</td>
				<td colspan="3" class="field_value"><input id="field_nume"
					name="val_nume" type="text" class="field_value"
					value="<%if (usage == 1) out.print(editu.getFirstName()); %>"></td>
			</tr>
			<tr>
				<td class="field_name">Prenume</td>
				<td colspan="2" class="field_value"><input id="field_prenume"
					name="val_prenume" type="text" class="field_value"
					value="<%if (usage == 1) out.print(editu.getLastName()); %>"></td>
			</tr>
			<tr>
				<td class="field_name">E-mail</td>
				<td colspan="2" class="field_value"><input id="field_email"
					name="val_email" type="text" class="field_value"
					value="<%if (usage == 1) out.print(editu.getEmailAddress()); %>"></td>
			</tr>
			<tr>
				<td class="field_name">Parola</td>
				<td colspan="2" class="field_value"><input id="field_parola"
					name="val_parola" type="password" class="field_value"
					<%if (usage == 1) out.print("title=\"Editati aici doar pentru a schimba parola !\""); %>></td>
			</tr>
			<tr>
				<td class="field_name">Data nasterii</td>
				<td colspan="2" class="field_value"><input id="popup_container"
					name="val_data_nasterii" type="text" class="field_value"
					value="<% if (usage == 1) { java.text.SimpleDateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy"); out.print(df.format(editu.getBirthDate())); }%>"></td>
			</tr>
			<tr>
				<td class="field_name">Functie didactica</td>
				<td colspan="2" class="field_value"><select name="val_functie"
					class="field_value" onChange="javascript:fct_selected()" id="id_fctie">
					<%
						int fctid = 0;
						java.util.List fct = FunctieDidactica.getFunctieDidacticaAsList();
						Iterator fcti = fct.iterator();
						while (fcti.hasNext()) {
							out.println("<option");
							if (usage == 1
									&& fctid == editu.getFunctieDidactica().ordinal())
								out.println(" selected");
							out.println(">" + fcti.next().toString().toLowerCase()
									+ "</option>");
							fctid++;
						}
					%>
				</select></td>
			</tr>

			<tr>
				<td class="field_name">Level</td>
				<td colspan="2" class="field_value"><select name="val_level"
					class="field_value">
					<%
						int levelid = 0;
						java.util.List level = Level.getLevelAsList();
						Iterator leveli = level.iterator();
						while (leveli.hasNext()) {
							out.println("<option");
							if (usage == 1 && levelid == editu.getLevel().ordinal())
								out.println(" selected");
							out.println(">" + leveli.next().toString().toLowerCase()
									+ "</option>");
							levelid++;
						}
					%>
				</select></td>
			</tr>

			<tr>
				<td valign="top" class="field_name"
					style="height: 23px; padding-top: 8px">Doctor</td>
				<td valign="top" class="field_value" id="field_doctor"><input
					name="val_doctor" id="field_doctor_chk" type="checkbox"
					class="field_value" onClick="javascript:expand_1()" value="1"
					<% if (usage == 1 && editu.isDoctor()) out.print("checked"); %>></td>
				<td width="247" height="0" valign="top" class="field_value" id="field_doctor_din">din anul&nbsp;<input name=doctor_din_anul id ="hv1" type="text" class="field_value" size="7" MaxLength="4"
					<% 
					if (usage == 1 && editu.isDoctor()) 
						out.print("value=\"" + editu.getDoctorDin() + "\"");
					else
						 out.print("disabled=\"true\"");
					%>
					></td>
			</tr>
			<tr>
				<td valign="top" class="field_name" style="padding-top: 8px;">Conducator
				doctorat</td>
				<td valign="top" class="field_value" id="field_conducator_doctorat"><input
					 id="cond_dr" name="val_conducator_doctorat" type="checkbox" class="field_value"
					onClick="javascript:expand_2()" value="1"
					<% if (usage == 1 && editu.isConducatorDoctorat()) out.print("checked"); 
					else
						if (usage == 0 || (usage == 1 && editu.getFunctieDidactica() != FunctieDidactica.CONFERENTIAR &&
								editu.getFunctieDidactica() != FunctieDidactica.PROFESOR))
							out.print("disabled=\"true\"");
					%>></td>
				<td valign="top" class="field_value" id="field_doctoranzi_stagiu"><table><tr><td class="field_name">La zi</td><td><input id="hv2" name="val_doctoranzi_zi" type="text" class="field_value" size="8" maxlength="2" 
				<% if (usage == 1 && editu.isConducatorDoctorat()) 
					out.print("value=\"" + editu.getDoctoranziStagiuZi() + "\""); 
					else out.print("disabled=\"true\"");
				%>
				></td></tr><tr><td class="field_name">La FF</td><td><input id="hv3" name="val_doctoranzi_ff" type="text" class="field_value" size="8" maxlength="2" 
				<% if (usage == 1 && editu.isConducatorDoctorat()) 
					out.print("value=\"" + editu.getDoctoranziStagiuFrecventaRedusa() + "\""); 
					else out.print("disabled=\"true\"");
				%>
				></td></tr></table></td>
			</tr>


			<tr>
				<td valign="top" class="field_name" style="padding-top: 8px;">Consultant</td>
				<td valign="top" class="field_value"><input id="field_consultant" 
					name="val_consultant" type="checkbox" class="field_value" value="1" 
					<% 
					if (usage == 0 || (usage == 1 && editu.getFunctieDidactica() != FunctieDidactica.PROFESOR))
						out.print("disabled=\"true\"");
					if (usage == 1 && editu.isConsultant())
						out.print("checked=\"true\"");
					%>></td>

			</tr>

			<tr>
				<td class="field_name">Rol</td>
				<td colspan="2" class="field_value" id="field_rol"><select
					name="val_rol" class="field_value"
					<% if (usr_role == Right.USER) out.println(" disabled = \"disabled\" ");%>>
					<option selected="selected">Cadru</option>
					<option
						<% if (usage == 1 && editu.getUserRight() == Right.ADMINISTRATOR) out.print("selected=\"selected\""); %>>Administrator</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="3">&nbsp;</td>
			</tr>
			<tr>
				<td></td>
				<td colspan="2" class="field_value"><input name="adauga"
					type="button" class="buton" value="Salveaza"
					onClick="valideaza_form()"></td>
			</tr>
		</table>
		<input type="hidden" id="uid" name="uid"
			value="<% if (usage == 1) out.print(editu.getUserId()); %>">
		<input type="hidden" id="role" name="role"
			value="<% if (usage == 1) out.print(editu.getUserRight()); %>">
		<input type="hidden" id="usage" name="usage" value="<%= usage %>">
		</form>
		</td>
	</tr>
	<tr bgcolor="#B8CCDB" height="30">
		<td>
		</td>
	</tr>
</table>

</body>
</html>

