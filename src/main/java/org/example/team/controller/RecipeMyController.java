package org.example.team.controller;

import org.example.team.service.RecipeMyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RecipeMyController {
    @Autowired
    RecipeMyService recipeMyService;

    @RequestMapping(value = "/mylist", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("list", recipeMyService.getMyList());
        return "mylist";
    }
}
