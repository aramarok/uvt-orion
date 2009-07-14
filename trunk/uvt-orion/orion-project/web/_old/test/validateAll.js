//Generic functions
function isEmpty(field,txt) /*Verifica daca o casuta de text e vida*/
{
with (field)
{
	if (value==null||value=="")
	{
		alert(txt)
		return false
	}
		else 
		{
			return true
		}
}
}

function isANumber(field,txt) /*verifica daca un numar este valid*/
{
	var numExp = /^([0-9]+)$/;
	if((field.value.match(numExp)))
	{
		return true
	}
	else
		{
			alert(txt)
			return false
		}
}

function isFloatingNumber(field,txt) /*verifica daca un numar real este valid si intre 0 si 10*/
{
	var numExp = /^([0-9]+)\.*([0-9])*$/;
	if((field.value.match(numExp)))
	{
		if((field.value >= 0) && (field.value <= 10))
		{
			return true
		}
		else
		{ 
			alert(txt)
			return false
		}
	}
	else
		{
			alert(txt)
			return false
		}
}

function isFloatingNumber2(field,txt) /*verifica daca un numar real este valid*/
{
	var numExp = /^([0-9]+)\.*([0-9])*$/;
	if((field.value.match(numExp)))
	{
			return true
	}
	else
		{
			alert(txt)
			return false
		}
}

function isAValidYear(field,txt) /*verifica daca un an este valid*/
{
	var numExp = /^([0-9]+)$/;
	if((field.value.match(numExp)))
	{
		if((field.value > 1900) && (field.value < 2025))
		{
			return true
		}
		else
		{
		 	alert(txt)
			return false
		}
	}
	else
		{
			alert(txt)
			return false
		}
}

//Lista 1
function validateL1(form)
{
	with(form)
	{
		//Titlu Articol
		if (isEmpty(TitluArticol,"Introduceti titlul articolului!")==false)
		{
			TitluArticol.focus()
			return false
		}

		//Autori
		if (isEmpty(Autori,"Introduceti autorii!")==false)
		{
			Autori.focus()
			return false
		}

		//Revista
		if (isEmpty(Revista,"Introduceti denumirea revistei!")==false)
		{
			Revista.focus()
			return false
		}
		
		//Volum
		if (isEmpty(Volum,"Introduceti numarul volumului!")==false)
		{
			Volum.focus()
			return false
		}
		if (isANumber(Volum,"Introduceti un numar de volum valid!")==false)
		{
			Volum.focus()
			return false
		}
		
		//Numar
		if (isEmpty(Numar,"Introduceti numarul!")==false)
		{
			Numar.focus()
			return false
		}
		if (isANumber(Numar,"Introduceti un numar valid!")==false)
		{
			Numar.focus()
			return false
		}

		//Pagina de inceput
		if (isEmpty(PaginaInceput,"Introduceti pagina de inceput!")==false)
		{
			PaginaInceput.focus()
			return false
		}
		if (isANumber(PaginaInceput,"Introduceti un numar valid!")==false)
		{
			PaginaInceput.focus()
			return false
		}

		//Pagina de sfarsit
		if (isEmpty(PaginaSfarsit,"Introduceti pagina de sfarsit!")==false)
		{
			PaginaSfarsit.focus()
			return false
		}
		if (isANumber(PaginaSfarsit,"Introduceti un numar valid!")==false)
		{
			PaginaSfarsit.focus()
			return false
		}
		/*
		if (PaginaSfarsit.value < PaginaInceput.value)
		{
			alert("Pagina de sfarsit trebuie sa fie mai mre decat cea de inceput!");
			PaginaSfarsit.focus();
			return false;
		}
		*/
		
		//Anul
		if (isEmpty(Anul,"Introduceti anul!")==false)
		{
			Anul.focus()
			return false
		}
		if (isAValidYear(Anul,"Introduceti un an intre 1900-2025!")==false)
		{
			Anul.focus()
			return false
		}		
		
		//Factor impact		
		if (isEmpty(FactorImpact,"Introduceti factorul de impact!")==false)
		{
			FactorImpact.focus()
			return false
		}		
		if (isFloatingNumber(FactorImpact,"Introduceti un factorul de impact valid (numar real intre 0-10)!")==false)
		{
			FactorImpact.focus()
			return false
		}	
	}
		
}

//Lista 2
function validateL2(form)
{
	with(form)
	{
		//Titlu Articol
		if (isEmpty(TitluArticol,"Introduceti titlul articolului!")==false)
		{
			TitluArticol.focus()
			return false
		}

		//Autori
		if (isEmpty(Autori,"Introduceti autorii!")==false)
		{
			Autori.focus()
			return false
		}

		//Denumire Revista
		if (isEmpty(Revista,"Introduceti denumirea revistei!")==false)
		{
			Revista.focus()
			return false
		}
		
		//Volum
		if (isEmpty(Volum,"Introduceti numarul volumului!")==false)
		{
			Volum.focus()
			return false
		}
		if (isANumber(Volum,"Introduceti un numar de volum valid!")==false)
		{
			Volum.focus()
			return false
		}
		
		//Numar
		if (isEmpty(Numar,"Introduceti numarul!")==false)
		{
			Numar.focus()
			return false
		}
		if (isANumber(Numar,"Introduceti un numar valid!")==false)
		{
			Numar.focus()
			return false
		}

		//Pagina de inceput
		if (isEmpty(PaginaInceput,"Introduceti pagina de inceput!")==false)
		{
			PaginaInceput.focus()
			return false
		}
		if (isANumber(PaginaInceput,"Introduceti un numar valid!")==false)
		{
			PaginaInceput.focus()
			return false
		}

		//Pagina de sfarsit
		if (isEmpty(PaginaSfarsit,"Introduceti pagina de sfarsit!")==false)
		{
			PaginaSfarsit.focus()
			return false
		}
		if (isANumber(PaginaSfarsit,"Introduceti un numar valid!")==false)
		{
			PaginaSfarsit.focus()
			return false
		}
		/*
		if (PaginaSfarsit.value < PaginaInceput.value)
		{
			alert("Pagina de sfarsit trebuie sa fie mai mre decat cea de inceput!");
			PaginaSfarsit.focus();
			return false;
		}
		*/
		
		//Anul
		if (isEmpty(Anul,"Introduceti anul!")==false)
		{
			Anul.focus()
			return false
		}
		if (isAValidYear(Anul,"Introduceti un an intre 1900-2025!")==false)
		{
			Anul.focus()
			return false
		}
	}
}

//Lista 3
function validateL3(form)
{
	with(form)
	{
		//Titlu Articol
		if (isEmpty(TitluArticol,"Introduceti titlul articolului!")==false)
		{
			TitluArticol.focus()
			return false
		}

		//Autori
		if (isEmpty(Autori,"Introduceti autorii!")==false)
		{
			Autori.focus()
			return false
		}

		//Denumire Revista
		if (isEmpty(Revista,"Introduceti denumirea revistei!")==false)
		{
			Revista.focus()
			return false
		}
		
		//Volum
		if (isEmpty(Volum,"Introduceti numarul volumului!")==false)
		{
			Volum.focus()
			return false
		}
		if (isANumber(Volum,"Introduceti un numar de volum valid!")==false)
		{
			Volum.focus()
			return false
		}
		
		//Numar
		if (isEmpty(Numar,"Introduceti numarul!")==false)
		{
			Numar.focus()
			return false
		}
		if (isANumber(Numar,"Introduceti un numar valid!")==false)
		{
			Numar.focus()
			return false
		}

		//Pagina de inceput
		if (isEmpty(PaginaInceput,"Introduceti pagina de inceput!")==false)
		{
			PaginaInceput.focus()
			return false
		}
		if (isANumber(PaginaInceput,"Introduceti un numar valid!")==false)
		{
			PaginaInceput.focus()
			return false
		}

		//Pagina de sfarsit
		if (isEmpty(PaginaSfarsit,"Introduceti pagina de sfarsit!")==false)
		{
			PaginaSfarsit.focus()
			return false
		}
		if (isANumber(PaginaSfarsit,"Introduceti un numar valid!")==false)
		{
			PaginaSfarsit.focus()
			return false
		}
		/*
		if (PaginaSfarsit.value < PaginaInceput.value)
		{
			alert("Pagina de sfarsit trebuie sa fie mai mre decat cea de inceput!");
			PaginaSfarsit.focus();
			return false;
		}
		*/
		
		//Anul
		if (isEmpty(Anul,"Introduceti anul!")==false)
		{
			Anul.focus()
			return false
		}
		if (isAValidYear(Anul,"Introduceti un an intre 1900-2025!")==false)
		{
			Anul.focus()
			return false
		}
	}
}

//Lista 4
function validateL4(form)
{
	with(form)
	{
		//Titlu Articol
		if (isEmpty(TitluArticol,"Introduceti titlul articolului!")==false)
		{
			TitluArticol.focus()
			return false
		}

		//Autori
		if (isEmpty(Autori,"Introduceti autorii!")==false)
		{
			Autori.focus()
			return false
		}

		//Denumirea volumului
		if (isEmpty(DenVolum,"Introduceti denumirea volumului!")==false)
		{
			DenVolum.focus()
			return false
		}		
		
		//Denumirea conferintei
		if (isEmpty(DenConferinta,"Introduceti denumirea conferintei!")==false)
		{
			DenConferinta.focus()
			return false
		}	
		
		//Locul desfasurarii
		if (isEmpty(Loc,"Introduceti localitatea!")==false)
		{
			Loc.focus()
			return false
		}				

		//Data desfasurarii
		if (document.getElementById("popup_container").value.length < 10)
		{
			alert("Data desfasurarii este invalida.")
		}

		//Pagina de inceput
		if (isEmpty(PaginaInceput,"Introduceti pagina de inceput!")==false)
		{
			PaginaInceput.focus()
			return false
		}
		if (isANumber(PaginaInceput,"Introduceti un numar valid!")==false)
		{
			PaginaInceput.focus()
			return false
		}

		//Pagina de sfarsit
		if (isEmpty(PaginaSfarsit,"Introduceti pagina de sfarsit!")==false)
		{
			PaginaSfarsit.focus()
			return false
		}
		if (isANumber(PaginaSfarsit,"Introduceti un numar valid!")==false)
		{
			PaginaSfarsit.focus()
			return false
		}
		/*
		if (PaginaSfarsit.value < PaginaInceput.value)
		{
			alert("Pagina de sfarsit trebuie sa fie mai mre decat cea de inceput!");
			PaginaSfarsit.focus();
			return false;
		}
		*/
		
		//Anul
		if (isEmpty(Anul,"Introduceti anul!")==false)
		{
			Anul.focus()
			return false
		}
		if (isAValidYear(Anul,"Introduceti un an intre 1900-2025!")==false)
		{
			Anul.focus()
			return false
		}
	}
}

//Lista 5
function validateL5(form)
{
	with(form)
	{
		//Titlul conferintei
		if (isEmpty(TitluConferinta,"Introduceti titlul conferintei!")==false)
		{
			TitluConferinta.focus()
			return false
		}		

		//Autori
		if (isEmpty(Autori,"Introduceti autorii!")==false)
		{
			Autori.focus()
			return false
		}

		//Denumirea volumului
		if (isEmpty(DenVolum,"Introduceti denumirea volumului!")==false)
		{
			DenVolum.focus()
			return false
		}		
		
		//Denumirea manifestarii
		if (isEmpty(DenManifestarii,"Introduceti denumirea manifestarii!")==false)
		{
			DenManifestarii.focus()
			return false
		}		
		
		//Locul desfasurarii
		if (isEmpty(Loc,"Introduceti localitatea!")==false)
		{
			Loc.focus()
			return false
		}				

		//Data desfasurarii
		if (document.getElementById("popup_container").value.length < 10)
		{
			alert("\nData desfasurarii este invalida.")
		}

		//Pagina de inceput
		if (isEmpty(PaginaInceput,"Introduceti pagina de inceput!")==false)
		{
			PaginaInceput.focus()
			return false
		}
		if (isANumber(PaginaInceput,"Introduceti un numar valid!")==false)
		{
			PaginaInceput.focus()
			return false
		}

		//Pagina de sfarsit
		if (isEmpty(PaginaSfarsit,"Introduceti pagina de sfarsit!")==false)
		{
			PaginaSfarsit.focus()
			return false
		}
		if (isANumber(PaginaSfarsit,"Introduceti un numar valid!")==false)
		{
			PaginaSfarsit.focus()
			return false
		}
		/*
		if (PaginaSfarsit.value < PaginaInceput.value)
		{
			alert("Pagina de sfarsit trebuie sa fie mai mre decat cea de inceput!");
			PaginaSfarsit.focus();
			return false;
		}
		*/
		
		//Anul
		if (isEmpty(Anul,"Introduceti anul!")==false)
		{
			Anul.focus()
			return false
		}
		if (isAValidYear(Anul,"Introduceti un an intre 1900-2025!")==false)
		{
			Anul.focus()
			return false
		}
	}
}

//Lista 6
function validateL6(form)
{
	with(form)
	{
		//Titlul monografie
		if (isEmpty(TitluMonografie,"Introduceti titlul monografiei!")==false)
		{
			TitluMonografie.focus()
			return false
		}			

		//Autori
		if (isEmpty(Autori,"Introduceti autorii!")==false)
		{
			Autori.focus()
			return false
		}

		//Editura
		if (isEmpty(Editura,"Introduceti editura!")==false)
		{
			Editura.focus()
			return false
		}	

		
		//Locul desfasurarii
		if (isEmpty(Loc,"Introduceti localitatea!")==false)
		{
			Loc.focus()
			return false
		}				

		//Anul aparitiei
		if (isEmpty(An,"Introduceti anul aparitiei!")==false)
		{
			An.focus()
			return false
		}
		if (isAValidYear(An,"Introduceti un an intre 1900-2025!")==false)
		{
			An.focus()
			return false
		}

		//Nr de pagini
		if (isEmpty(NrPagini,"Introduceti numarul de pagini!")==false)
		{
			NrPagini.focus()
			return false
		}
		if (isANumber(NrPagini,"Introduceti un numar valid!")==false)
		{
			NrPagini.focus()
			return false
		}
	}
}


//Lista 7
function validateL7(form)
{
	with(form)
	{
		//Titlu
		if (isEmpty(Titlu,"Introduceti titlul!")==false)
		{
			Titlu.focus()
			return false
		}		

		//Autori
		if (isEmpty(Autori,"Introduceti autorii!")==false)
		{
			Autori.focus()
			return false
		}

		//Editura
		if (isEmpty(Editura,"Introduceti editura!")==false)
		{
			Editura.focus()
			return false
		}	

		
		//Locul desfasurarii
		if (isEmpty(Loc,"Introduceti localitatea!")==false)
		{
			Loc.focus()
			return false
		}				

		//Anul aparitiei
		if (isEmpty(An,"Introduceti anul aparitiei!")==false)
		{
			An.focus()
			return false
		}
		if (isAValidYear(An,"Introduceti un an intre 1900-2025!")==false)
		{
			An.focus()
			return false
		}

		//Nr de pagini
		if (isEmpty(NrPagini,"Introduceti numarul de pagini!")==false)
		{
			NrPagini.focus()
			return false
		}
		if (isANumber(NrPagini,"Introduceti un numar valid!")==false)
		{
			NrPagini.focus()
			return false
		}
	}
}

//Lista 8
function validateL8(form)
{
	with(form)
	{
		//Autorul care citeaza
		if (isEmpty(Autor,"Introduceti autorii!")==false)
		{
			Autor.focus()
			return false
		}

		//Denumire Revista
		if (isEmpty(DenRevista,"Introduceti denumirea revistei!")==false)
		{
			DenRevista.focus()
			return false
		}
			
		//Volum
		if (isEmpty(Volum,"Introduceti numarul volumului!")==false)
		{
			Volum.focus()
			return false
		}
		if (isANumber(Volum,"Introduceti un numar de volum valid!")==false)
		{
			Volum.focus()
			return false
		}
		
		//Nr de pagini
		if (isEmpty(NrPagini,"Introduceti numarul de pagini!")==false)
		{
			NrPagini.focus()
			return false
		}
		if (isANumber(NrPagini,"Introduceti un numar valid!")==false)
		{
			NrPagini.focus()
			return false
		}
		
		//Anul aparitiei
		if (isEmpty(An,"Introduceti anul aparitiei!")==false)
		{
			An.focus()
			return false
		}
		if (isAValidYear(An,"Introduceti un an intre 1900-2025!")==false)
		{
			An.focus()
			return false
		}		
	}
}

//Lista 9
function validateL9(form)
{
	with(form)
	{
		//Titlu Articol
		if (isEmpty(TitluArticol,"Introduceti titlul articolului!")==false)
		{
			TitluArticol.focus()
			return false
		}

		//Autori
		if (isEmpty(Autori,"Introduceti autorii!")==false)
		{
			Autori.focus()
			return false
		}

		//Denumirea volumului
		if (isEmpty(DenVolum,"Introduceti denumirea volumului!")==false)
		{
			DenVolum.focus()
			return false
		}		
		
		//Denumirea conferintei
		if (isEmpty(DenConferinta,"Introduceti denumirea conferintei!")==false)
		{
			DenConferinta.focus()
			return false
		}	
		
		//Locul desfasurarii
		if (isEmpty(Loc,"Introduceti localitatea!")==false)
		{
			Loc.focus()
			return false
		}				

		//Data desfasurarii
		if (document.getElementById("popup_container").value.length < 10)
		{
			alert("Data desfasurarii este invalida.")
		}

		//Pagina de inceput
		if (isEmpty(PaginaInceput,"Introduceti pagina de inceput!")==false)
		{
			PaginaInceput.focus()
			return false
		}
		if (isANumber(PaginaInceput,"Introduceti un numar valid!")==false)
		{
			PaginaInceput.focus()
			return false
		}

		//Pagina de sfarsit
		if (isEmpty(PaginaSfarsit,"Introduceti pagina de sfarsit!")==false)
		{
			PaginaSfarsit.focus()
			return false
		}
		if (isANumber(PaginaSfarsit,"Introduceti un numar valid!")==false)
		{
			PaginaSfarsit.focus()
			return false
		}
		/*
		if (PaginaSfarsit.value < PaginaInceput.value)
		{
			alert("Pagina de sfarsit trebuie sa fie mai mre decat cea de inceput!");
			PaginaSfarsit.focus();
			return false;
		}
		*/
		
		//Anul
		if (isEmpty(Anul,"Introduceti anul!")==false)
		{
			Anul.focus()
			return false
		}
		if (isAValidYear(Anul,"Introduceti un an intre 1900-2025!")==false)
		{
			Anul.focus()
			return false
		}
	}
}

//Lista 10
function validateL10(form)
{
	with(form)
	{
		//Perioada
		if (isEmpty(Perioada,"Introduceti perioada!")==false)
		{
			Perioada.focus()
			return false
		}
		if (isANumber(Perioada,"Introduceti o perioada valida (nr intreg)!")==false)
		{
			Perioada.focus()
			return false
		}

		//Suma	
		if (isEmpty(Suma,"Introduceti suma!")==false)
		{
			Suma.focus()
			return false
		}		
		if (isFloatingNumber2(Suma,"Introduceti o suma valida!")==false)
		{
			Suma.focus()
			return false
		}	
		
		//Director program
		if (isEmpty(DirectorProg,"Introduceti directorul programului!")==false)
		{
			DirectorProg.focus()
			return false
		}	
	}
}