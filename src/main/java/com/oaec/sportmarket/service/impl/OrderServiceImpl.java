package com.oaec.sportmarket.service.impl;

import com.alibaba.fastjson.JSON;
import com.oaec.sportmarket.mapper.AddressMapper;
import com.oaec.sportmarket.mapper.CartMapper;
import com.oaec.sportmarket.mapper.OderMapper;
import com.oaec.sportmarket.mapper.ProductMapper;
import com.oaec.sportmarket.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service("orderService")
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OderMapper orderMapper;
    @Autowired
    private AddressMapper addressMapper;
    @Autowired
    private CartMapper cartMapper;
    @Autowired
    private ProductMapper productMapper;
    @Override
    public List<Map<String, Object>> getOrders(Integer userId) {
       //1.根据用户编号查询用户所有订单
        List<Map<String, Object>> orderlist = orderMapper.queryByUserId(userId);

        //2.查询订单对应的地址
        for (Map<String, Object> map : orderlist) {
            //获取地址
            int address_id = Integer.parseInt(map.get("address_id").toString());
            Map<String, Object> address = addressMapper.queryById(address_id);
            map.put("address",address);
            //3.查询订单总金额
            int orders_id = Integer.parseInt(map.get("orders_id").toString());
            Double totalPrice = orderMapper.getTotalPrice(orders_id);
            map.put("totalPrice",totalPrice);
            //4.查询订单商品
            List<Map<String, Object>> commodity = orderMapper.queryCommodityByOrdersId(orders_id);
            map.put("commodity",commodity);
        }

        System.out.println(JSON.toJSONString(orderlist));
        return orderlist;
    }

    @Override
    public boolean submit(Integer userId,Integer addressId, Integer[] commodityIds) {
        int result = 0;
        //1.向订单主表插入数据
        Map<String,Object> param = new HashMap<>();
        param.put("orderId",null);
        param.put("userId",userId);
        param.put("addressId",addressId);
        System.out.println("param = " + param);
        orderMapper.doInsert(param);
        System.out.println("param = " + param);
        for (Integer commodityId : commodityIds) {
            //查询当前编号的商品信息
            Map<String, Object> commodity = cartMapper.queryByUserIdAndCommodityId(userId, commodityId);
            System.out.println("-*****************************************************");
            System.out.println("commodity = " + commodity);
            //2.向订单明细表插入数据
            commodity.put("orders_id",param.get("orderId"));
            result += orderMapper.doInsertInfo(commodity);
            //3.在购物车中删除此商品
            result += cartMapper.doDelete(userId,commodityId);
            //4.修改库存和销量
            int num = Integer.parseInt(commodity.get("num").toString());
            result += productMapper.UpdateStockAndSale(commodityId,num);
            System.out.println("****------------------*************-------------");
            System.out.println("commodityId = " + commodityId);
        }
        if (result > 0){
            return true;
        }else {
            return false;
        }
    }
}
