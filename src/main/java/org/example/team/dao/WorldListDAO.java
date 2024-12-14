    package org.example.team.dao;

    import org.apache.ibatis.session.SqlSession;
    import org.example.team.vo.WorldListVO;
    import org.springframework.beans.factory.annotation.Autowired;
    import org.springframework.stereotype.Repository;

    import java.util.List;

    @Repository
    public class WorldListDAO {
        @Autowired
        SqlSession sqlSession;

        public List<WorldListVO> getWorldList(){
            return sqlSession.selectList("Worldlist.getRecipeList");
        }

        public List<WorldListVO> getSearchList(String recipe_name){
            return sqlSession.selectList("Worldlist.searchRecipeByName",recipe_name);
        }

        public void incrementViewCount(int id) {
            sqlSession.update("Worldlist.incrementViewCount", id);
        }


    }
