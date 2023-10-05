package com.little.springboot.dao;

import com.little.springboot.domain.NoteContent;
import com.little.springboot.domain.SubjectInfo;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public interface SubjectInfoDao {
    @Select("SELECT * FROM SubjectInfo;")
    public List<SubjectInfo> getAllSubject();
}
