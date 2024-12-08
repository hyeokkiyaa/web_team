package org.example.team.controller;

import org.example.team.util.Sha2;
import org.example.team.util.UserServiceImpl;
import org.example.team.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

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
    public String loginCheck(HttpSession session, UserVO vo, Model model) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        String returnURL = "";
        String hex = Sha2.shaAndHex(vo.getPassword()).substring(0,25);
        vo.setPassword(hex);

        Object existingLogin = session.getAttribute("login");


        if (existingLogin != null) {
            session.removeAttribute("login");
        }

        UserVO loginvo = service.getUser(vo);


        if (loginvo != null) {
            session.setAttribute("login", loginvo);
            returnURL = "redirect:/world";
        } else {
            model.addAttribute("msg", "로그인에 실패했습니다. 다시 시도해주세요.");
            model.addAttribute("url", "/login/login");
            returnURL = "alert";
        }
        return returnURL;
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login/login";
    }
}


