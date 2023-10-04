package com.little.noteproject.service.impl;

import com.little.noteproject.dao.SubjectInfoDao;
import com.little.noteproject.domain.SubjectInfo;
import com.little.noteproject.service.SubjectInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Array;
import java.util.ArrayList;

/*
学科信息业务处理实现类型
 */
@Service
public class SubjectInfoServiceImpl implements SubjectInfoService {
    @Autowired
    private SubjectInfoDao subjectInfoDao;

    @Override
    public boolean getAllSubjectInfo(ArrayList<SubjectInfo> vecSubjectInfo){
        vecSubjectInfo.clear();
        vecSubjectInfo.addAll(subjectInfoDao.getAllSubjectInfo());
        return true;
    }
}
