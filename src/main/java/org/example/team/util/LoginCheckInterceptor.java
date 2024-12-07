package org.example.team.util;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheckInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        HttpSession session = request.getSession();
        Object obj = session.getAttribute("login");

        // 디버깅: 현재 세션에 저장된 "login" 속성 확인
        System.out.println("현재 세션 login 속성: " + obj);

        if (obj == null) {
            System.out.println("로그인되지 않은 사용자 - 리다이렉트 처리");
            response.sendRedirect(request.getContextPath() + "/login/login");
            return false;
        }
        System.out.println("로그인된 사용자 - 요청 처리 진행");
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
        System.out.println("postHandle 호출 - 요청 처리 완료");
        HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
    }
}