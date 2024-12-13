package org.example.team.service;

import org.example.team.dao.MyListDAO;
import org.example.team.dao.WorldListDAO;
import org.example.team.vo.MyListVO;
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

    public List<MyListVO> getMyList(String userid) {
        return myListDAO.getMyList(userid);
    }

    public int insertRecipe(WorldListVO worldListVO, HttpSession session){
        UserVO loginUser = (UserVO) session.getAttribute("login");
        worldListVO.setUserid(loginUser.getUserid());
        return myListDAO.addRecipe(worldListVO);
    }
//    public int insertBoard(BoardVO boardVO) {
//        return boardDAO.insertBoard(boardVO);
//    }
//
//    public int updateBoard(BoardVO boardVO) {
//        return boardDAO.updateBoard(boardVO);
//    }
//
//    public BoardVO getBoard(int seq) {
//        return boardDAO.getBoard(seq);
//    }
//
//    public int deleteBoard(int seq) {
//        return boardDAO.deleteBoard(seq);
//    }
//
//    public void increaseView(int seq) {
//        boardDAO.increaseView(seq);
//    }
//
//    public List<BoardVO> getBoardListSearch(String title){
//        return boardDAO.getBoardListSearch(title);
//    }
}
