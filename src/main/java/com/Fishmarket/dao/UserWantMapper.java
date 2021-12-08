package com.Fishmarket.dao;

import com.Fishmarket.pojo.UserWant;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserWantMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserWant record);

    int insertSelective(UserWant record);

    UserWant selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserWant record);

    int updateByPrimaryKey(UserWant record);

    int getCounts(int uid);

    List<UserWant> selectByUid(int uid, int start);

    @Select("select * from userwant where uid=#{id} and display=1 order by id desc limit 12")
    List<UserWant> selectMineByUid(int id);

    List<UserWant> selectAll();
}