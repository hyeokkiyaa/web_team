package org.example.team.controller;

import org.example.team.util.UserServiceImpl;
import org.example.team.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

    @Autowired
    UserServiceImpl service;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/loginOk", method = RequestMethod.POST)
    public String loginCheck(HttpSession session, UserVO vo) {
        String returnURL = "";
        System.out.println("입력된 UserVO: " + vo.getUserid() + ", " + vo.getUsername());

        Object existingLogin = session.getAttribute("login");
        System.out.println("기존 세션 값: " + existingLogin);

        if (existingLogin != null) {
            session.removeAttribute("login");
            System.out.println("기존 세션 제거 완료.");
        }
        UserVO loginvo = service.getUser(vo);
        System.out.println("DB에서 가져온 UserVO: " + loginvo);

        if (loginvo != null) {
            session.setAttribute("login", loginvo);
            System.out.println("로그인 성공");
            System.out.println("세션에 저장된 로그인 정보: " + session.getAttribute("login"));
            returnURL = "redirect:/world";
        } else {
            System.out.println("로그인 실패");
            returnURL = "redirect:/login/login";
        }
        return returnURL;
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login/login";
    }
}


