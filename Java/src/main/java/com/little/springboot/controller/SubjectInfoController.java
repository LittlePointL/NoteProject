package com.little.springboot.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.little.springboot.domain.SubjectInfo;
import com.little.springboot.service.SubjectService;
import com.little.springboot.service.impl.SubjectServiceimpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.relational.core.sql.In;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

@RestController
public class SubjectInfoController {

    @Autowired
    private SubjectService subjectService;
    /*
    * @brief : 首页
    * */
    @RequestMapping("/getAllSubjectName")
    String getIndex(){
        return subjectService.getAllSubjectInfo();
    }

    @RequestMapping("/getSubjectContentByid")
    String getContentById(
            @RequestParam Integer subjectid){
        return subjectService.getContentByID(subjectid);
    }
}


