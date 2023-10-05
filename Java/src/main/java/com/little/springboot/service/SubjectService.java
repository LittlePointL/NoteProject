package com.little.springboot.service;

import java.util.Map;

public interface SubjectService {

    /*
    @brief : 获取所有科目基本信息
     */
    public String getAllSubjectInfo();

    /*
    * @brief : 根据科目 id 获取科目实际 json 格式内容
    * */
    public String getContentByID(Integer subjectid);
}
