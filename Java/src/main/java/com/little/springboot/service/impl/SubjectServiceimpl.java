package com.little.springboot.service.impl;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.little.springboot.dao.NoteContentDao;
import com.little.springboot.dao.SubjectInfoDao;
import com.little.springboot.domain.NoteContent;
import com.little.springboot.domain.SubjectInfo;
import com.little.springboot.service.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Map;

@Service
public class SubjectServiceimpl implements SubjectService {

    @Autowired
    private SubjectInfoDao subjectInfoDao;
    @Autowired
    private NoteContentDao noteContentDao;
    @Override
    public String getAllSubjectInfo() {
        ArrayList<SubjectInfo> subjectInfoList= (ArrayList<SubjectInfo>) subjectInfoDao.getAllSubject();
        Gson gson = new Gson();
        String json = gson.toJson(subjectInfoList);
        return json;
    }

    @Override
    public String getContentByID(Integer subjectid) {
        NoteContent noteContent = noteContentDao.findContentById(subjectid);
        Gson gson = new Gson();
        return gson.toJson(noteContent.getContent());
    }
}


