package com.Fishmarket.service.Impl;

import com.Fishmarket.dao.ShopPictureMapper;
import com.Fishmarket.pojo.ShopPicture;
import com.Fishmarket.service.ShopPictureService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by mo_yu on 2021/11/7. */
@Service
public class ShopPictureServiceImpl implements ShopPictureService {
    @Resource
    private ShopPictureMapper shopPictureMapper;
    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(ShopPicture record) {
        return shopPictureMapper.insert(record);
    }

    @Override
    public int insertSelective(ShopPicture record) {
        return shopPictureMapper.insertSelective(record);
    }

    @Override
    public ShopPicture selectByPrimaryKey(Integer id) {
        return shopPictureMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(ShopPicture record) {
        return shopPictureMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(ShopPicture record) {
        return shopPictureMapper.updateByPrimaryKey(record);
    }

    @Override
    public ShopPicture selectBySidOnlyOne(Integer sid) {
        return shopPictureMapper.selectBySidOnlyOne(sid);
    }

    @Override
    public List<ShopPicture> selectBySid(Integer sid) {
        return null;
    }
}
