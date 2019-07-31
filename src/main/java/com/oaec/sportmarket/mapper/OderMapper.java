package com.oaec.sportmarket.mapper;

import java.util.List;
import java.util.Map;

public interface OderMapper {
    List<Map<String,Object>> queryByUserId(Integer userId);
    //查询订单中的商品
    List<Map<String,Object>> queryCommodityByOrdersId( Integer orderId);
    //查询订单总金额
    Double getTotalPrice(Integer orderId);
    //点单主表插入数据
    int doInsert(Map<String,Object> param);
    //订单明细表插入数据
    int doInsertInfo(Map<String,Object> param);
}
