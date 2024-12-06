package org.example.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecipeController {
    @RequestMapping(value = "/add")
    public String add() {
        return "add";
    }

    @RequestMapping(value = "/edit")
    public String edit() {
        return "edit";
    }

    @RequestMapping(value = "mylist")
    public String mylist() {
        return "mylist";
    }

    @RequestMapping(value = "/world")
    public String world() {
        return "world";
    }

    @RequestMapping(value = "/profile")
    public String profile() {
        return "profile";
    }
}
