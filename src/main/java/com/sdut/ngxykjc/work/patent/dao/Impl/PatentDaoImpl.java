package com.sdut.ngxykjc.work.patent.dao.Impl;

import com.sdut.ngxykjc.base.dao.impl.BaseDaoImpl;
import com.sdut.ngxykjc.base.util.FilePathUtil;
import com.sdut.ngxykjc.work.patent.bean.Patent;
import com.sdut.ngxykjc.work.patent.bean.PatentSearch;
import com.sdut.ngxykjc.work.patent.dao.PatentDao;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.util.List;

/**
 * Created by gcl on 2016/11/21.
 */
@Repository("patentDao")
public class PatentDaoImpl extends BaseDaoImpl implements PatentDao {
    @Override
    public List<Patent> selectPage(Class glazz, Object search, int first, int count) {
        return (List<Patent>) getHibernateTemplate().executeWithNativeSession(session -> {
            PatentSearch ss = (PatentSearch) search;
            Criteria criteria = session.createCriteria(glazz);
            if (StringUtils.hasLength(ss.getPatentName())) {
                criteria.add(Restrictions.like("patentName", ss.getPatentName()));
            }
            if (StringUtils.hasLength(ss.getPatentHolder())) {
                criteria.add(Restrictions.like("patentHolder", ss.getPatentHolder()));
            }
            if (StringUtils.hasLength(ss.getState()) && !"所有".equals(ss.getState())) {
                criteria.add(Restrictions.eq("examineResult", ss.getState()));
            }
            if (StringUtils.hasLength(ss.getYear())) {
                // 津贴发放年度
                criteria.add(Restrictions.like("grantYear", ss.getYear()));
            }
            if (StringUtils.hasLength(ss.getPatentNumber())) {
                criteria.add(Restrictions.like("patentNumber", ss.getPatentNumber()));
            }
            return criteria.setFirstResult(first).setMaxResults(count).list();
        });
    }

    @Override
    public void saveFile(File file, String fileName, String oldName) throws Exception {
        System.out.println("file name:" + fileName);
        System.out.println("file length:" + file.length());
        FileInputStream fis = new FileInputStream(file);
        FileChannel fileChannel = fis.getChannel();

        String realPath = FilePathUtil.getUploadFileBasePath("patent");
        File dir = new File(realPath);
        if (!dir.exists()) {
            dir.mkdirs();
        }
        String filePath = realPath + fileName;
        File outFile = new File(filePath);
        if (!outFile.exists()) {
            outFile.createNewFile();
        }
        FileChannel outChannel = new FileOutputStream(outFile).getChannel();
        outChannel.transferFrom(fileChannel, 0, fileChannel.size());
        outChannel.close();
        fileChannel.close();

        // 删除源文件（如果有）
        if (oldName != null) {
            file = new File(realPath + oldName);
            if (file.exists()) {
                file.delete();
            }
        }
    }
}
