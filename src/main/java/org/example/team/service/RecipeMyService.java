package org.example.team.service;

import org.example.team.dao.MyListDAO;
import org.example.team.vo.WorldListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecipeMyService {
    @Autowired
    MyListDAO myListDAO;

    public List<WorldListVO> getMyList() {
        return myListDAO.getMyList();
    }
}
