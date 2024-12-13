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

    public int insertRecipe(WorldListVO worldListVO, HttpSession session){
        UserVO loginUser = (UserVO) session.getAttribute("login");
        worldListVO.setUserid(loginUser.getUserid());
        return myListDAO.addRecipe(worldListVO);
    }

    public int updateRecipe(WorldListVO worldListVO){
        return myListDAO.editRecipe(worldListVO);
    }

    public WorldListVO getBoard(int id) {
        return myListDAO.getRecipe(id);
    }

    public int deleteRecipe(int id) {
        return myListDAO.deleteRecipe(id);
    }
//
//    public void increaseView(int seq) {
//        boardDAO.increaseView(seq);
//    }
//
//    public List<BoardVO> getBoardListSearch(String title){
//        return boardDAO.getBoardListSearch(title);
//    }
}
