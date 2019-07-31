package com.oaec.sportmarket.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.Map;

public interface UserMapper {
    Map<String,Object> queryByUsername(String username);
    int doInsert(@Param("username") String username, @Param("password") String password,@Param("tel")String tel);
    Map<String,Object> queryPassword(String username,String phone);
    Map<String,Object> query(@Param("username") String username, @Param("password") String password, @Param("tel") String tel);
}
