package com.Fishmarket.service;

import com.Fishmarket.pojo.ShopInformation;

import java.util.List;
import java.util.Map;

/**
 * Created by mo_yu on 2021/11/7. */
public interface ShopInformationService {
    int deleteByPrimaryKey(Integer id);

    int insert(ShopInformation record);

    int insertSelective(ShopInformation record);

    ShopInformation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShopInformation record);

    int updateByPrimaryKey(ShopInformation record);

    List<ShopInformation> selectTen(Map map);

    List<ShopInformation> selectOffShelf(int uid, int start);

    int getCountsOffShelf(int uid);

    int getCounts();

    int selectIdByImage(String image);

    List<ShopInformation> selectByName(String name);

    List<ShopInformation> selectBySort(int sort);

    List<ShopInformation> selectUserReleaseByUid(int uid);
}
