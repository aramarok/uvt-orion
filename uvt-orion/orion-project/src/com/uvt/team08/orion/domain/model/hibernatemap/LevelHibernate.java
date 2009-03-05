package com.uvt.team08.orion.domain.model.hibernatemap;

import com.uvt.team08.orion.domain.model.Level;

/** This class is used only in the hibernate XML configuration */
public class LevelHibernate extends IntEnumUserType<Level> { 
    public LevelHibernate() { 
        super(Level.class, Level.values()); 
    } 
}