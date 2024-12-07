package org.example.team.service;

import org.example.team.dao.WorldListDAO;
import org.example.team.vo.WorldListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecipeWorldService {
    @Autowired
    WorldListDAO worldListDAO;

    public List<WorldListVO> getWorldList() {
        return worldListDAO.getWorldList();
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
