package com.uvt.team08.orion.domain.model.hibernatemap;

import com.uvt.team08.orion.domain.model.FunctieDidactica;

/** This class is used only in the hibernate XML configuration */
public class FunctieDidacticaHibernate extends IntEnumUserType<FunctieDidactica> { 
    public FunctieDidacticaHibernate() { 
        super(FunctieDidactica.class, FunctieDidactica.values()); 
    } 
}