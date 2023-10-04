package com.little.noteproject;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


/*
* SpringBoot 启动入口类
* */
//SpringBoot 启动注解
//实际上包含以下的注解
/*
* @SpringBootConfiguration boot 启动配置属性
* @EnableAutoConfiguration 自动 pom 配置属性
* @ComponentScan 扫描指定包
* */
@SpringBootApplication
@MapperScan("com.little.noteproject.dao")
public class NoteProjectApplication {
    public static void main(String[] args) {
        SpringApplication.run(NoteProjectApplication.class, args);
    }

}
