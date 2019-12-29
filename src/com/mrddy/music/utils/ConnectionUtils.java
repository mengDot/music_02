package com.mrddy.music.utils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class ConnectionUtils {
    String jdbcDriver;
    String jdbcUrl;
    String username;
    String password;
    private static ConnectionUtils connectionUtils;
    public static ConnectionUtils getInstance(){
        return getInstance("db.properties");
    }
    public static ConnectionUtils getInstance(String url){
        if(connectionUtils==null){
            connectionUtils=new ConnectionUtils(url);
        }
        return connectionUtils;
    }

    /**
     *
     * @param url properties文件路径
     */
    private ConnectionUtils(String url){
        //调用类加载器加载properties文件
        InputStream inputStream = ConnectionUtils.class.getClassLoader().getResourceAsStream(url);
        //构建属性文件对象
        Properties properties=new Properties();
        try {
            properties.load(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        jdbcDriver=properties.getProperty("jdbcDriver");
        jdbcUrl=properties.getProperty("jdbcUrl");
        username=properties.getProperty("username");
        password=properties.getProperty("password");
    }
    public Connection getConnection(){
        Connection conn=null;
        try {
            conn= DriverManager.getConnection(jdbcUrl,username,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
    public static void close(Connection conn, Statement s, ResultSet rs){
        try {
            if(rs != null){
                rs.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            if(s != null) {
                s.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            if(conn != null){
                conn.close();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static void close(Connection conn){

        if(conn!= null ){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }


    }
    public static void close(Statement s){
        if(s != null){
            try {
                s.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    public static void close( ResultSet rs){
        if(rs != null){
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
