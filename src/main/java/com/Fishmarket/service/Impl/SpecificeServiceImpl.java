package com.Fishmarket.service.Impl;

import com.Fishmarket.dao.SpecificMapper;
import com.Fishmarket.pojo.Specific;
import com.Fishmarket.service.SpecificeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by mo_yu on 2021/11/7. */
@Service
public class SpecificeServiceImpl implements SpecificeService {
    @Resource
    private SpecificMapper specificMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Specific record) {
        return specificMapper.insert(record);
    }

    @Override
    public int insertSelective(Specific record) {
        return specificMapper.insertSelective(record);
    }

    @Override
    public Specific selectByPrimaryKey(Integer id) {
        return specificMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Specific record) {
        return specificMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Specific record) {
        return specificMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Specific> selectByCid(int cid) {
        return specificMapper.selectByCid(cid);
    }
}
