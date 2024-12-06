package org.example.team.vo;

import java.util.Date;

public class MyListVO {
    private int id;
    private String recipe_name;
    private String main_ingredient;
    private String ingredient;
    private String cooking_order;
    private int prep_time;
    private int difficulty_level;
    private String category;
    private String userid;
    private int cnt;
    private Date regdate;

    public MyListVO() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRecipe_name() {
        return recipe_name;
    }

    public void setRecipe_name(String recipe_name) {
        this.recipe_name = recipe_name;
    }

    public String getMain_ingredient() {
        return main_ingredient;
    }

    public void setMain_ingredient(String main_ingredient) {
        this.main_ingredient = main_ingredient;
    }

    public String getIngredient() {
        return ingredient;
    }

    public void setIngredient(String ingredient) {
        this.ingredient = ingredient;
    }

    public String getCooking_order() {
        return cooking_order;
    }

    public void setCooking_order(String cooking_order) {
        this.cooking_order = cooking_order;
    }

    public int getPrep_time() {
        return prep_time;
    }

    public void setPrep_time(int prep_time) {
        this.prep_time = prep_time;
    }

    public int getDifficulty_level() {
        return difficulty_level;
    }

    public void setDifficulty_level(int difficulty_level) {
        this.difficulty_level = difficulty_level;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }
}
