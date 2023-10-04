package com.little.noteproject.dao;


import com.little.noteproject.domain.SubjectInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.lang.reflect.Array;
import java.util.ArrayList;

@Repository
public interface SubjectInfoDao {
    @Insert("insert into SubjectInfo values(#{uid},#{subjectname})")
    public void insertNote(SubjectInfo note);

    @Select("SELECT * FROM SubjectInfo;")
    public ArrayList<SubjectInfo>getAllSubjectInfo();
}

