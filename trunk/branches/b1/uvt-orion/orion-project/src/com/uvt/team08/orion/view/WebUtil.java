package com.uvt.team08.orion.view;

import com.uvt.team08.orion.domain.service.GUIService;
import com.uvt.team08.orion.domain.service.GUIServiceBean;
import com.uvt.team08.orion.domain.service.ListsService;
import com.uvt.team08.orion.domain.service.ListsServiceBean;
import com.uvt.team08.orion.domain.service.SearchService;
import com.uvt.team08.orion.domain.service.SearchServiceBean;
import com.uvt.team08.orion.domain.service.Service;
import com.uvt.team08.orion.domain.service.ServiceBean;
import com.uvt.team08.orion.domain.service.UserService;
import com.uvt.team08.orion.domain.service.UserServiceBean;
import com.uvt.team08.orion.domain.service.TableService;
import com.uvt.team08.orion.domain.service.TableServiceBean;
import com.uvt.team08.orion.domain.service.InsertService;
import com.uvt.team08.orion.domain.service.InsertServiceBean;
import com.uvt.team08.orion.domain.service.DeleteService;
import com.uvt.team08.orion.domain.service.DeleteServiceBean;
import com.uvt.team08.orion.domain.service.UpdateService;
import com.uvt.team08.orion.domain.service.UpdateServiceBean;
import com.uvt.team08.orion.domain.service.XSLService;
import com.uvt.team08.orion.domain.service.XSLServiceBean;

public class WebUtil {

	public static Service getService(){
		return new ServiceBean();
	}
	
	public static UserService getUserService(){
		return new UserServiceBean();
	}
	
	public static SearchService getSearchService(){
		return new SearchServiceBean();
	}
	
	public static ListsService getListsService(){
		return new ListsServiceBean();
	}
	
	public static TableService getTableService()
	{
		return new TableServiceBean();
	}
	
	public static InsertService getInsertService()
	{
		return new InsertServiceBean();
	}
	
	public static GUIService getGUIService() {
		return new GUIServiceBean();
	}
	
	public static DeleteService getDeleteService()
	{
		return new DeleteServiceBean();
	}
	
	public static UpdateService getUpdateService()
	{
		return new UpdateServiceBean();
	}
	
	public static XSLService getXSLService() {
		return new XSLServiceBean();
	}
}
