package com.oaec.sportmarket.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ProductMapper {
    List<Map<String,Object>> query(Map<String,Object> param);
    List<Map<String,Object>> queryAll();
    //模糊查询
    List<Map<String,Object>> queryLike(String name);
    //根据分类查询
    List<Map<String,Object>> queryByTypeId(Integer typeId);
    //根据品牌查询
    List<Map<String,Object>> queryByBrandId(Integer brandId);
    //根据分类及品牌查询
    List<Map<String,Object>> queryByBidAndTid(Integer brandId,Integer typeId);
    //    根据编号查询
    Map<String,Object> queryById(Integer commodityId);
    //修改库存销量
    int UpdateStockAndSale(@Param("commodityId") Integer commodityId,@Param("num") Integer num);
}
