package com.little.noteproject.domain;

public class SubjectInfo {

    @Override
    public String toString() {
        return "Note{" +
                "uid=" + uid +
                ", subjectname='" + subjectname + '\'' +
                '}';
    }

    public Integer getUid() {
        return uid;
    }

    public String getSubjectname() {
        return subjectname;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public void setSubjectname(String subjectname) {
        this.subjectname = subjectname;
    }

    private Integer uid;
    private String subjectname;
}
