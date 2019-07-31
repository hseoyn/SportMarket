package com.oaec.sportmarket.mapper;

import java.util.List;
import java.util.Map;

public interface AddressMapper {
    Map<String,Object> queryById(Integer addressId);
    List<Map<String,Object>> queryByUserId(Integer userId);
    int doDelete(Integer addressId);
    int doInsert(Map<String,Object> param);
    int doUpdate(Map<String,Object> param);
}
