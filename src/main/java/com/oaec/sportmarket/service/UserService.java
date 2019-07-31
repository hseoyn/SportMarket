package com.oaec.sportmarket.service;

import java.util.Map;

public interface UserService {
    Map<String, Object> login(String username, String password);
    boolean register(String username, String password, String tel);
    Map<String,Object> findPassword(String username, String phone);
}
