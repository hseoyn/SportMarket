package com.oaec.sportmarket.service.impl;


import com.oaec.sportmarket.mapper.UserMapper;
import com.oaec.sportmarket.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
@Service("userServiceImpl")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public Map<String, Object> login(String username, String password) {
        Map<String, Object> map = userMapper.query(username, password, null);
        System.out.println("-------------------");
        System.out.println("map = " + map);
        if(map == null){
            map = new HashMap<>();
            map.put("error","用户名不存在");
        }else{
            if(map.get("password").equals(password)){
                return map;
            }else {
                map.clear();
                map.put("error","密码错误");
            }
        }
        return map;
    }

    @Override
    public boolean register(String username, String password, String tel) {
        System.out.println("username = [" + username + "], password = [" + password + "], tel = [" + tel + "]");
        Map<String, Object> map = userMapper.query(username, null, null);
//        int i = userMapper.doInsert(username, password, tel);
        if(map != null){
            return false;
        }else{
            if(username!=null&&password!=null&&tel!=null){
                System.out.println("username = [" + username + "], password = [" + password + "], tel = [" + tel + "]");
                int i = userMapper.doInsert(username, password, tel);
                return i==1;
            }else{
                return false;
            }
        }
    }

    @Override
    public Map<String, Object> findPassword(String username, String phone) {
//        Map<String, Object> password = userDao.queryPassword(username, phone);
        return null;
    }


}
