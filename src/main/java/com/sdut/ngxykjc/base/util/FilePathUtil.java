package com.sdut.ngxykjc.base.util;

import org.apache.struts2.ServletActionContext;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by gcl on 2016/12/7.
 */
public class FilePathUtil {

    public static String getUploadFileBasePath(String patent) {
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/dd/MM");
        String datePath = dateFormat.format(date);
        return ServletActionContext.getServletContext().getRealPath("/WEB-INF/upload") + "/" + patent + "/" + datePath + "/";
    }
}
