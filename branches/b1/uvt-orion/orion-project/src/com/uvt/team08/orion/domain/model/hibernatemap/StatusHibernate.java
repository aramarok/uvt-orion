package com.uvt.team08.orion.domain.model.hibernatemap;

import com.uvt.team08.orion.domain.model.Status;

/** This class is used only in the hibernate XML configuration */
public class StatusHibernate extends IntEnumUserType<Status> { 
    public StatusHibernate() { 
        super(Status.class, Status.values()); 
    } 
}