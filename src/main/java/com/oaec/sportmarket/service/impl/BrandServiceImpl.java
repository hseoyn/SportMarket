package com.oaec.sportmarket.service.impl;

import com.oaec.sportmarket.mapper.BrandMapper;
import com.oaec.sportmarket.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("brandService")
public class BrandServiceImpl implements BrandService {
    @Autowired
    private BrandMapper brandMapper ;
    @Override
    public List<Map<String, Object>> query(Integer typeId) {
        if(typeId == null){
            return brandMapper.queryAll();
        }else {
            return brandMapper.queryByTypeId(typeId);
        }
    }
}
