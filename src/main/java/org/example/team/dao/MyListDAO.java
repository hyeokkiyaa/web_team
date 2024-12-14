package org.example.team.dao;

import org.apache.ibatis.session.SqlSession;
import org.example.team.vo.WorldListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class MyListDAO {
    @Autowired
    SqlSession sqlSession;

    public List<WorldListVO> getMyListSort(String userid, String sort) {
        Map<String, Object> params = new HashMap<>();
        params.put("userid", userid);
        params.put("sort", sort);

        return sqlSession.selectList("Mylist.getMyListSort", params);
    }



    public WorldListVO getRecipe(int id) {
        return sqlSession.selectOne("getRecipe", id);
    }

    public List<WorldListVO> getMyList(String userid) {
        return sqlSession.selectList("Mylist.getRecipeList", userid);
    }

    public int addRecipe(WorldListVO recipe) {
        return sqlSession.insert("Mylist.addRecipe", recipe);
    }

    public int editRecipe(WorldListVO recipe) {
        return sqlSession.update("Mylist.editRecipe", recipe);
    }



    public int deleteRecipe(int id) {
        return sqlSession.delete("Mylist.deleteRecipe", id);
    }

    public List<WorldListVO> getSearchMyList(String recipe_name, String userid) {
        Map<String, Object> params = new HashMap<>();
        params.put("recipe_name", recipe_name);
        params.put("userid", userid);
        return sqlSession.selectList("Mylist.searchRecipeByName", params);
    }

}
