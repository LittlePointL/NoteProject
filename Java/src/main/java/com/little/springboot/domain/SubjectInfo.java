package com.little.springboot.domain;

public class SubjectInfo {
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public void setSubjectname(String subjectname) {
        this.subjectname = subjectname;
    }

    public Integer getUid() {
        return uid;
    }

    public String getSubjectname() {
        return subjectname;
    }

    private Integer uid;
    private String subjectname;
}
