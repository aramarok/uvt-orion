package com.uvt.team08.orion.domain.service;

import com.uvt.team08.orion.domain.service.UserService;
import com.uvt.team08.orion.view.WebUtil;
import java.io.*;
import java.util.List;
import java.util.Iterator;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.servlet.*;
import org.apache.commons.fileupload.disk.*;

public class UploadBean {
	
	public int doUpload(HttpServletRequest request) throws IOException {
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		List items = null;
		try
		{
			items = upload.parseRequest(request);
		} catch(Exception d) {}
		Iterator iter = items.iterator();
		
		String v1 = null, v2 = null ;
		
		while (iter.hasNext()) 
		{
		    FileItem item = (FileItem) iter.next();
		    
		    if (item.isFormField()) 
		    {
		    	if (v1 == null)
		    		v1 = item.getString();
		    	else
		    		v2 = item.getString();
		    }
		    
		    if (!item.isFormField()) 
		    {
		    	if (item.getSize() > 0)
		    	{
		    		String sname = item.getName().substring(item.getName().lastIndexOf("\\") , item.getName().length());
		    		File uploadedFile = new File(System.getProperty("user.dir") + "\\..\\webapps\\orion\\uploads\\" + System.currentTimeMillis() + "_" + sname.substring(1, sname.length()));
		    		try	
		    		{
		    			java.util.Date abcdef = new java.util.Date (); 
		    			UserService userService = WebUtil.getUserService();
		    			userService.setCVLocation(Integer.parseInt(v1), Integer.parseInt(v2), /*request.getLocalName() +*/ "orion/"+"/../../../uploads/" + System.currentTimeMillis() + "_" + sname.substring(1, sname.length()));
		    			item.write(uploadedFile);
		    			return 0;
		    			
		    		} catch(Exception d)
		    		{
		    			d.printStackTrace();
		    		}
		    	}
		    }
		}
		return -1;
	}
}