package com.uvt.team08.orion.domain.model.hibernatemap;

import com.uvt.team08.orion.domain.model.Right;

/** This class is used only in the hibernate XML configuration */
public class RightHibernate extends IntEnumUserType<Right> { 
    public RightHibernate() { 
        super(Right.class, Right.values()); 
    } 
}