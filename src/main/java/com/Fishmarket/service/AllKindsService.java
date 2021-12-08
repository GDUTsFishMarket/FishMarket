package com.Fishmarket.service;

import com.Fishmarket.pojo.AllKinds;

import java.util.List;

/**
 * Created by mo_yu on 2021/11/7. */
public interface AllKindsService {
    int deleteByPrimaryKey(Integer id);

    int insert(AllKinds record);

    int insertSelective(AllKinds record);

    AllKinds selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AllKinds record);

    int updateByPrimaryKey(AllKinds record);

    List<AllKinds> selectAll();
}
