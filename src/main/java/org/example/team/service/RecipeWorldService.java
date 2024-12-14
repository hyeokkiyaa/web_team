package org.example.team.service;

import org.example.team.dao.MyListDAO;
import org.example.team.dao.WorldListDAO;
import org.example.team.vo.UserVO;
import org.example.team.vo.WorldListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class RecipeWorldService {
    @Autowired
    WorldListDAO worldListDAO;

    @Autowired
    MyListDAO myListDAO;

    public List<WorldListVO> getWorldList() {
        return worldListDAO.getWorldList();
    }

    public List<WorldListVO> getMyList(String userid) {
        return myListDAO.getMyList(userid);
    }

    public List<WorldListVO> getMyListSearch(String recipe_name, String userid) {
        return myListDAO.getSearchMyList(recipe_name,userid);
    }

    public int insertRecipe(WorldListVO worldListVO, HttpSession session){
        UserVO loginUser = (UserVO) session.getAttribute("login");
        worldListVO.setUserid(loginUser.getUserid());
        return myListDAO.addRecipe(worldListVO);
    }

    public int updateRecipe(WorldListVO worldListVO){
        return myListDAO.editRecipe(worldListVO);
    }

    public void incrementViewCount(int id) {
        worldListDAO.incrementViewCount(id);
    }

    public WorldListVO getRecipe(int id) {
        return myListDAO.getRecipe(id);
    }

    public int deleteRecipe(int id) {
        return myListDAO.deleteRecipe(id);
    }
    public List<WorldListVO> getSearchRecipeList(String recipe_name){
        return worldListDAO.getSearchList(recipe_name);
    }

    public List<WorldListVO> getSortedList(String sort) {
        return worldListDAO.getSortedList(sort);
    }


//
//    public void increaseView(int seq) {
//        boardDAO.increaseView(seq);
//    }
//
}
