package com.oaec.sportmarket.interceptors;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Component
public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        if (session.getAttribute("user") == null){
            //获取拦截地址
            String requestURI = request.getRequestURI();
            if (requestURI.contains("add2cart")){
                String commodityId = request.getParameter("commodityId");
                if (commodityId != null){
                    requestURI = requestURI.replace("add2cart", "commodity")+"?commodityId="+commodityId;
                }else{
                    requestURI = requestURI.replace("add2cart", "list");
                }

            }
            response.sendRedirect(request.getContextPath()+"/login?uri="+requestURI);
            return false;
        }else {
            return true;
        }
    }
}
