package com.little.springboot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.little.springboot.dao")
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);

        //printCodeInfo();
    }
    public static void printCodeInfo() {
        StackTraceElement[] stackTraceElements = Thread.currentThread().getStackTrace();

        if (stackTraceElements.length >= 2) {
            StackTraceElement caller = stackTraceElements[1];
            //Java 文件名
            String fileName = caller.getFileName();
            //Java 方法名
            String methodName = caller.getMethodName();
            //所在代码行数
            int lineNumber = caller.getLineNumber();

            System.out.println("File: " + fileName);
            System.out.println("Method: " + methodName);
            System.out.println("Line: " + lineNumber);
        }
    }


}


