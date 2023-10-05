package com.little.springboot.dao;

import com.little.springboot.domain.NoteContent;
import com.little.springboot.domain.SubjectInfo;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NoteContentDao {
    /*
    @brief : 通过科目 id 获取科目笔记内容
    @param : subjectID : 科目 uid
    @return :  获取到的科目 uid 和科目笔记内容
     */
    @Select("SELECT * FROM NoteContent WHERE subjectid=#{subjectid}")
    NoteContent findContentById(Integer subjectid);
}