package com.oaec.sportmarket.mapper;

import java.util.List;
import java.util.Map;

public interface BrandMapper {
    List<Map<String,Object>> queryAll();
    //根据分类查询
    List<Map<String,Object>> queryByTypeId(Integer typeId);
    //    根据编号查询品质
    Map<String,Object> queryByBid(Integer brandId);
}
