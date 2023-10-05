package com.little.springboot.domain;

public class NoteContent {

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setSubjectid(String subjectid) {
        this.subjectid = subjectid;
    }

    public String getContent() {
        return content;
    }

    public String getSubjectid() {
        return subjectid;
    }

    public Integer getUid() {
        return uid;
    }

    @Override
    public String toString() {
        return "NoteContent{" +
                "uid=" + uid +
                ", content='" + content + '\'' +
                ", subjectuid='" + subjectid + '\'' +
                '}';
    }

    Integer uid;//唯一标识符
    String content;//笔记内容,实际上是 json 数据格式
    String subjectid;


}
