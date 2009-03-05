package com.uvt.team08.orion.domain.model.hibernatemap;

import com.uvt.team08.orion.domain.model.TipGrant;

public class TipGrantHibernate extends IntEnumUserType<TipGrant> { 
    public TipGrantHibernate() { 
        super(TipGrant.class, TipGrant.values()); 
    } 
}