package org.example.team.dao;

import org.apache.ibatis.session.SqlSession;
import org.example.team.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {

    @Autowired
    SqlSession sqlSession;

    public UserVO getUser(UserVO vo) {
        UserVO result = sqlSession.selectOne("User.getUser", vo);
        System.out.println("DAO 조회 결과: " + result);
        return result;
    }
}
