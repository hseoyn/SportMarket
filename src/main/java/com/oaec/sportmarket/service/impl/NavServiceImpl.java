package com.oaec.sportmarket.service.impl;


import com.oaec.sportmarket.mapper.TypeMapper;
import com.oaec.sportmarket.service.NavService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service("navService")
public class NavServiceImpl implements NavService {
    @Autowired
    private TypeMapper typeMapper;
    @Override
    public List<Map<String, Object>> getNav() {

        return typeMapper.queryNav();
    }
}
