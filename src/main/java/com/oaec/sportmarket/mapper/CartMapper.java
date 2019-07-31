package com.oaec.sportmarket.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CartMapper {
    List<Map<String,Object>> queryByUserId(Integer userId);

    /**.
     * 添加商品到购物车（数据层方法如果需要多个参数，一般准备包装类型）
     * @param param
     * @return
     */
    int doInsert(Map<String,Object> param);

    Map<String,Object> queryByUserIdAndCommodityId(@Param("userId")Integer userId,@Param("commodityId") Integer commodityId);

    int updateNum(Map<String,Object> param);

    int doDelete(@Param("userId")Integer userId,@Param("commodityId")Integer commodityId);
    //    加数量
    int addNum(@Param("userId")Integer userId,@Param("commodityId")Integer commodityId);
    //    减数量
    int subNum(@Param("userId")Integer userId,@Param("commodityId")Integer commodityId);
//    统计信息

    /**
     * 总数量总价钱
     * @param userId
     * @param commodityIds
     * @return
     */
    Map<String,Object> queryTotal(@Param("userId")Integer userId,@Param("commodityIds")Integer[] commodityIds);
    List<Map<String,Object>> queryCommodity4Checkout(@Param("userId")Integer userId,@Param("commodityIds")Integer[] commodityIds);
}
