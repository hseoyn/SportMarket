package com.oaec.sportmarket.service;

import java.util.List;
import java.util.Map;

public interface OrderService {
    //查询用户订单
    List<Map<String,Object>> getOrders(Integer userId);
    boolean submit(Integer userId, Integer addressId, Integer[] commodityIds);
}
