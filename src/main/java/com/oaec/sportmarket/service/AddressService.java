package com.oaec.sportmarket.service;

import java.util.List;
import java.util.Map;

public interface AddressService {
    List<Map<String,Object>> queryAll(Integer userId);
    boolean delete(Integer addressId);
    boolean addAdderss(String name, String tel, String address, Integer userId);
    boolean updateAddress(String name, String tel, String address, Integer addressId);
    Map<String,Object> queryById(Integer addressId);

}
