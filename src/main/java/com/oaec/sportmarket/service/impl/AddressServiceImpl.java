package com.oaec.sportmarket.service.impl;

import com.oaec.sportmarket.mapper.AddressMapper;
import com.oaec.sportmarket.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service("addressService")
public class AddressServiceImpl implements AddressService {
    @Autowired
    private AddressMapper addressMapper;
    @Override
    public List<Map<String, Object>> queryAll(Integer userId) {
        List<Map<String, Object>> address = addressMapper.queryByUserId(userId);
        return address;
    }

    @Override
    public boolean delete(Integer addressId) {
        return addressMapper.doDelete(addressId) == 1;
    }

    @Override
    public boolean addAdderss(String name, String tel, String address, Integer userId) {
        Map<String, Object> param = new HashMap<>();
        param.put("name",name);
        param.put("tel",tel);
        param.put("address",address);
        param.put("userId",userId);
        int i = addressMapper.doInsert(param);
        return i==1;

    }

    @Override
    public boolean updateAddress(String name, String tel, String address, Integer addressId) {
        Map<String,Object> param = new HashMap<>();
        param.put("name",name);
        param.put("tel",tel);
        param.put("address",address);
        param.put("addressId",addressId);
        int i = addressMapper.doUpdate(param);
        return i == 1;
    }

    @Override
    public Map<String, Object> queryById(Integer addressId) {
        Map<String, Object> address = addressMapper.queryById(addressId);
        return address ;
    }
}
