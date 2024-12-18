package org.example.team.vo;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Setter
@Getter
public class WorldListVO {
    private int id;
    private String recipe_name;
    private String main_ingredient;
    private String ingredients;
    private String cooking_order;
    private int prep_time;
    private int difficulty_level;
    private String category;
    private String userid;
    private int cnt;
    private Date regdate;

    public WorldListVO() {
    }

}
