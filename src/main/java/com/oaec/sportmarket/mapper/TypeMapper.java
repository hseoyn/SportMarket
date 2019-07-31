package com.oaec.sportmarket.mapper;

import java.util.List;
import java.util.Map;

public interface TypeMapper {
    List<Map<String,Object>> queryNav();
    //    根据分类查询
    Map<String,Object> queryByTid(Integer typeId);
}
