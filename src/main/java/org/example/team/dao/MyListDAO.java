package org.example.team.dao;

import org.apache.ibatis.session.SqlSession;
import org.example.team.vo.WorldListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MyListDAO {
    @Autowired
    SqlSession sqlSession;

    public List<WorldListVO> getMyList(/*String userid*/) {
        String userid = "test";
        return sqlSession.selectList("Mylist.getRecipeList", userid);
    }
}
