package com.little.noteproject.controller;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.little.noteproject.dao.SubjectInfoDao;
import com.little.noteproject.domain.SubjectInfo;
import com.little.noteproject.service.SubjectInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

/*
学科信息的前端访问接口
 */
@RestController
public class SubjectInfoController {
    @Autowired
    private SubjectInfoService subjectInfoService;

    @GetMapping("/")
    public String getIndex(){

        ArrayList<SubjectInfo> vecSubjectInfo = new ArrayList<SubjectInfo>();
        subjectInfoService.getAllSubjectInfo(vecSubjectInfo);
        System.out.println(vecSubjectInfo);
        return "index";
    }

    /*
    * @brief : 获取所有学科信息
    * */
    @GetMapping("/allSubjectInfo")
    public String getAllSubjectInfo(){
        ArrayList<SubjectInfo> vecSubjectInfo = new ArrayList<SubjectInfo>();
        subjectInfoService.getAllSubjectInfo(vecSubjectInfo);

        ObjectMapper objectMapper = new ObjectMapper();
        try {
            // 将ArrayList转换为JSON字符串
            String json = objectMapper.writeValueAsString(vecSubjectInfo);
            return json;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "false";
    }
}


