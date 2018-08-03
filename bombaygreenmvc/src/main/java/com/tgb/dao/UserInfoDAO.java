package com.tgb.dao;

import java.util.List;

import com.tgb.model.UserInfo;

public interface UserInfoDAO {
    
    public UserInfo findUserInfo(String userName);
     
    // [USER,AMIN,..]
    public List<String> getUserRoles(String userName);
     
}