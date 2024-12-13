package org.example.team.controller;

import org.example.team.service.RecipeWorldService;
import org.example.team.vo.UserVO;
import org.example.team.vo.WorldListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class RecipeController {
    @Autowired
    RecipeWorldService recipeWorldService;

    @RequestMapping("/")
    public String home() {return "index";}

    @RequestMapping(value = "/add")
    public String add(HttpSession session, Model model) {
        UserVO loginuser = (UserVO) session.getAttribute("login"); // loginuser로 프린트 해서 확인가능 그리고 UserVO로 형변환 하는 이유는 session자체가 Object로 받기 때문
        return "add";
    }

    @RequestMapping(value = "/addok", method = RequestMethod.POST)
    public String addok(HttpSession session, WorldListVO worldListVO) {
        int i = recipeWorldService.insertRecipe(worldListVO, session);
        if(i == 0)
            System.out.println("데이터 추가 실패...");
        else
            System.out.println("데이터 추가 성공!!");
        return "redirect:mylist";
    }

    @RequestMapping(value = "/edit")
    public String edit() {
        return "edit";
    }

    @RequestMapping(value = "/mylist", method = RequestMethod.GET)
    public String mlist(Model model, HttpSession session) {
        UserVO loginuser = (UserVO) session.getAttribute("login");
        String userid = loginuser.getUserid();
        model.addAttribute("list", recipeWorldService.getMyList(userid));
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

    @RequestMapping(value = "/world", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("list", recipeWorldService.getWorldList());
        return "world";
    }
//
//    @RequestMapping(value = "/board/listSearch", method = RequestMethod.GET)
//    public String listSearch(@RequestParam("title") String title, Model model) {
//        model.addAttribute("list", boardService.getBoardListSearch(title));
//        return "board/list";
//    }
//
//    @RequestMapping(value = "/board/add", method = RequestMethod.GET)
//    public String addPost(){
//        return "board/add";
//    }
//
//    @RequestMapping(value = "/board/addok", method = RequestMethod.POST)
//    public String addPostOK(BoardVO vo){
//        int i = boardService.insertBoard(vo);
//        if (i == 0)
//            System.out.println("데이터 추가 실패..");
//        else
//            System.out.println("데이터 추가 성공!!");
//        return "redirect:list";
//    }
//
//    @RequestMapping(value = "/board/edit/{seq}", method = RequestMethod.GET)
//    public String editPost(@PathVariable("seq") int seq, Model model){
//        BoardVO boardVO = boardService.getBoard(seq);
//        model.addAttribute("boardVO", boardVO);
//        return "board/edit";
//    }
//
//    @RequestMapping(value = "/board/editok", method = RequestMethod.POST)
//    public String editPostOK(BoardVO vo){
//        int i = boardService.updateBoard(vo);
//        if(i == 0)
//            System.out.println("데이터 수정 실패..");
//        else
//            System.out.println("데이터 수정 성공!!");
//        return "redirect:list";
//    }
//
//    @RequestMapping(value = "/board/deleteok/{seq}", method = RequestMethod.GET)
//    public String deletePost(@PathVariable("seq") int seq){
//        int i = boardService.deleteBoard(seq);
//        if(i == 0)
//            System.out.println("데이터 삭제 실패..");
//        else
//            System.out.println("데이터 삭제 성공!!");
//        return "redirect:../list";
//    }
//
//    @RequestMapping(value = "/board/view/{seq}", method = RequestMethod.GET)
//    public String viewPost(@PathVariable("seq") int seq, Model model) {
//        // 조회수 증가
//        boardService.increaseView(seq);
//        // 게시글 정보 가져오기
//        BoardVO boardVO = boardService.getBoard(seq);
//        model.addAttribute("boardVO", boardVO);
//        // view.jsp로 이동
//        return "board/view";
//    }
}
