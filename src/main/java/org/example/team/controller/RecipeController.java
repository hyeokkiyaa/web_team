package org.example.team.controller;

import org.example.team.service.RecipeWorldService;
import org.example.team.vo.UserVO;
import org.example.team.vo.WorldListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable int id, Model model) {
        WorldListVO worldListVO = recipeWorldService.getRecipe(id);
        model.addAttribute("world", worldListVO);
        return "edit";
    }

    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editok(WorldListVO worldListVO) {
        int i = recipeWorldService.updateRecipe(worldListVO);
        if(i == 0)
            System.out.println("데이터 수정 실패...");
        else
            System.out.println("데이터 수정 성공!!");
        return "redirect:mylist";
    }

    @RequestMapping(value = "/mylist", method = RequestMethod.GET)
    public String mlist(@RequestParam(value = "sort", required = false) String sort,Model model, HttpSession session) {
        UserVO loginuser = (UserVO) session.getAttribute("login");
        String userid = loginuser.getUserid();
        model.addAttribute("list", recipeWorldService.getMyListSort(userid, sort));
        return "mylist";
    }

    @RequestMapping(value = "/profile")
    public String profile() {
        return "profile";
    }

    @RequestMapping(value = "/world", method = RequestMethod.GET)
    public String list(@RequestParam(value = "sort", required = false) String sort,
            @RequestParam(value = "page", defaultValue = "1") int page,
            Model model) {

        int pageSize = 5;
        int offset = (page - 1) * pageSize;

        List<WorldListVO> sortRecipe = recipeWorldService.getSortedAndPaginatedList(sort, offset, pageSize);

        int totalRecipes = recipeWorldService.getTotalRecipeCount();
        int totalPages = (int) Math.ceil((double) totalRecipes / pageSize);

        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("list", sortRecipe);
        return "world";
    }

    @RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id){
        System.out.println("id?? >> "+ id);
        int i = recipeWorldService.deleteRecipe(id);
        if(i == 0)
            System.out.println("데이터 삭제 실패..");
        else
            System.out.println("데이터 삭제 성공!!");
        return "redirect:../mylist";
    }

    @RequestMapping(value = "/listSearch", method = RequestMethod.GET)
    public String listSearch(@RequestParam("recipe_name") String recipe_name, Model model) {
        model.addAttribute("list", recipeWorldService.getSearchRecipeList(recipe_name));
        return "world";
    }

    @RequestMapping(value = "/myListSearch", method = RequestMethod.GET)
    public String myListSearch(@RequestParam("recipe_name") String recipe_name, HttpSession session, Model model) {
        UserVO loginuser = (UserVO) session.getAttribute("login");
        model.addAttribute("list", recipeWorldService.getMyListSearch(recipe_name,loginuser.getUserid()));
        return "mylist";
    }


    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public String view(@PathVariable int id, Model model) {
        WorldListVO worldListVO = recipeWorldService.getRecipe(id);
        recipeWorldService.incrementViewCount(id);
        model.addAttribute("world", worldListVO);
        SimpleDateFormat cformat = new SimpleDateFormat("yyyy/MM/dd");
        String changeDate = cformat.format(worldListVO.getRegdate());
        model.addAttribute("date", changeDate);
        return "view";
    }



//
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
