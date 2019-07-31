package com.oaec.sportmarket.service.impl;


import com.oaec.sportmarket.mapper.CartMapper;
import com.oaec.sportmarket.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service("cartService")
public class CartServiceImpl implements CartService {
    @Autowired
    private CartMapper cartMapper;
    @Override
    public List<Map<String, Object>> getCartCommodity(Integer userId) {
        return cartMapper.queryByUserId(userId);
    }

    @Override
    public boolean addCart(Integer userId, Integer commodityId, Integer num) {
        Map<String, Object> cart = cartMapper.queryByUserIdAndCommodityId(userId, commodityId);
        Map<String,Object> param = new HashMap<>();
        param.put("userId",userId);
        param.put("commodityId",commodityId);
        param.put("num",num);
        System.out.println("param = " + param);
        int result = 0;
        if(cart == null){
//            添加
            result = cartMapper.doInsert(param);
        }else{
//            修改
            result = cartMapper.updateNum(param);
        }
        return result == 1;
    }

    @Override
    public boolean delete(Integer userId, Integer commodityId) {
        return cartMapper.doDelete(userId,commodityId) == 1;
    }

    @Override
    public boolean updateNum(String action,Integer userId, Integer commodityId) {
        int result = 0;
        if("add".equals(action)){
            result = cartMapper.addNum(userId,commodityId);
        }else{
           result = cartMapper.subNum(userId,commodityId);
        }
        return result == 1;
    }

    @Override
    public Map<String, Object> getTotal(Integer userId, Integer[] commodityIds) {

        return cartMapper.queryTotal(userId,commodityIds);
    }

    @Override
    public List<Map<String, Object>> gerCommodity4Checkout(Integer userId, Integer[] commodityIds) {
        List<Map<String, Object>> list = cartMapper.queryCommodity4Checkout(userId, commodityIds);
        return list;
    }
}
