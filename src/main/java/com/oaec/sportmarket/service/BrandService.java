package com.oaec.sportmarket.service;

import java.util.List;
import java.util.Map;

public interface BrandService {
    List<Map<String,Object>> query(Integer typeId);
}
