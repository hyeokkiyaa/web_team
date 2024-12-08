package org.example.team.vo;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Setter
@Getter
public class UserVO {
    private int id;
    private String userid;
    private String username;
    private String password;
    private String email;
    private Date regdate;
    private String website; // 선택사항
    private String instagram; // 선택사항
    private String facebook; // 선택사항

    public UserVO() {
    }


}
