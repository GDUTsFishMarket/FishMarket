package com.Fishmarket.service;

import com.Fishmarket.pojo.Specific;

import java.util.List;

/**
 * Created by mo_yu on 2021/11/7. */
public interface SpecificeService {
    int deleteByPrimaryKey(Integer id);

    int insert(Specific record);

    int insertSelective(Specific record);

    Specific selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Specific record);

    int updateByPrimaryKey(Specific record);

    List<Specific> selectByCid(int cid);
}
