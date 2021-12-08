package com.Fishmarket.service;

import com.Fishmarket.pojo.UserRelease;

import java.util.List;

/**
 * Created by mo_yu on 2021/11/7. */
public interface UserReleaseService {
    int deleteByPrimaryKey(Integer id);

    int insert(UserRelease record);

    int insertSelective(UserRelease record);

    UserRelease selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserRelease record);

    int updateByPrimaryKey(UserRelease record);

    int getCounts(int uid);

    List<UserRelease> selectByUid(int uid, int start);

    List<UserRelease> selectUserProductByUid(int uid);
}
