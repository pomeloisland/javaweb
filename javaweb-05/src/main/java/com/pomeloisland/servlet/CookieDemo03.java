package com.pomeloisland.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;

//保存用户上一次访问的时间
public class CookieDemo03 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Cookie[] cookies = req.getCookies();//cookie可能存在多个
        PrintWriter out = resp.getWriter();
        //判断cookie是否存在
        if(cookies != null){
            //如果存在怎么办
            out.write(URLDecoder.decode("你上一次访问的时间是:","utf-8"));
            for (int i = 0; i < cookies.length; i++) {
                Cookie cookie = cookies[i];
                //获取cookie的名字
                if(cookie.getName().equals("name")){
                    //获取cookie中的值
                    long lastLoginTime = Long.parseLong(cookie.getValue());
                    Date date = new Date(lastLoginTime);
                    out.write(date.toLocaleString());
                }
            }
        }else {
            out.write("这是您第一次访问本站");
        }

        Cookie cookie = new Cookie("name", URLEncoder.encode("柚屿","utf-8"));
        resp.addCookie(cookie);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
