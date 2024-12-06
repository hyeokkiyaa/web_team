package org.example.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller //어노테이션 등록
public class HomeController {
    @RequestMapping("/")
    public String home() {
        return "index";
    }
}