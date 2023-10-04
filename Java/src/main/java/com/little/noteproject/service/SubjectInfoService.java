package com.little.noteproject.service;


import com.little.noteproject.domain.SubjectInfo;

import java.util.ArrayList;

/*
学科信息业务处理接口类
 */
public interface SubjectInfoService {

    /*
    @brief : 查询所有学科
    @param : vecSubjectInfo : 输出的所有学科列表
    @return : 是否查询成功
    */
    boolean getAllSubjectInfo(ArrayList<SubjectInfo>vecSubjectInfo);
}
