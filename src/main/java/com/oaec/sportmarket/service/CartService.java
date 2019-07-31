package com.oaec.sportmarket.service;

import java.util.List;
import java.util.Map;

public interface CartService {
//    查询指定用户购物车
    List<Map<String,Object>> getCartCommodity(Integer userId);
//    添加商品到购物车
    boolean addCart(Integer userId, Integer commodityId, Integer num);

    boolean delete(Integer userId, Integer commodityId);

    /**
     *
     * @param action 要进行的动作
     * @param userId
     * @param commodityId
     * @return
     */
    boolean updateNum(String action, Integer userId, Integer commodityId);
    Map<String,Object> getTotal(Integer userId, Integer[] commodityIds);
    List<Map<String,Object>> gerCommodity4Checkout(Integer userId, Integer[] commodityIds);
}
