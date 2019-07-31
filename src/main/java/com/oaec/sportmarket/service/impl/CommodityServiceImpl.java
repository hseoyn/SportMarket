package com.oaec.sportmarket.service.impl;



import com.github.pagehelper.PageHelper;
import com.oaec.sportmarket.mapper.BrandMapper;
import com.oaec.sportmarket.mapper.ProductMapper;
import com.oaec.sportmarket.mapper.TypeMapper;
import com.oaec.sportmarket.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service("commodityService")
public class CommodityServiceImpl implements CommodityService {
    @Autowired
    private ProductMapper commodityMapper ;
    @Autowired
    private BrandMapper brandMapper;
    @Autowired
    private TypeMapper typeMapper;
//    private BrandDao brandDao = new BrandDaoImpl();
//    private TypeDao typeDao = new TypeDaoImpl();
    @Override
    public List<Map<String, Object>> query(String name,Integer typeId,Integer brandId,Integer page) {
        Map<String,Object> param = new HashMap<>();
        param.put("name",name);
        param.put("typeId",typeId);
        param.put("brandId",brandId);
//        开始分页
        PageHelper.startPage(page,3);
        List<Map<String, Object>> query = commodityMapper.query(param);
        return query;
    }

    @Override
    public List<Map<String, Object>> queryByTypeId(Integer typeId) {
        Map<String,Object> param = new HashMap<>();
        param.put("typeId",typeId);
        List<Map<String, Object>> types = commodityMapper.query(param);
        return types;
    }

    @Override
    public Map<String, Object> getCommodity(Integer commodityId) {
        Map<String, Object> commodity = commodityMapper.queryById(commodityId);
        //        查询品牌
        System.out.println(commodity);
        Integer brandId = Integer.parseInt(commodity.get("brand_id").toString());
        Integer typeId = Integer.parseInt(commodity.get("type_id").toString());
        Map<String, Object> brand = brandMapper.queryByBid(brandId);
        Map<String, Object> type = typeMapper.queryByTid(typeId);
        commodity.put("brand",brand);
        commodity.put("type",type);
//        查询分类
        return commodity;
    }
}
