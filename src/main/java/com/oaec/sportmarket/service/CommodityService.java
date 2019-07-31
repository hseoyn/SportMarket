package com.oaec.sportmarket.service;

import java.util.List;
import java.util.Map;

public interface CommodityService {

    List<Map<String,Object>> query(String name, Integer typeId, Integer brandId,Integer page);
    List<Map<String,Object>> queryByTypeId(Integer typeId);
//    根据编号获取一条数据
    Map<String,Object> getCommodity(Integer commodityId);
}
