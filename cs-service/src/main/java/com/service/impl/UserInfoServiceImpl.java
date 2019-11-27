package com.service.impl;

import com.dao.UserInfoDao;
import com.entity.UserInfo;
import com.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserInfoServiceImpl implements UserInfoService {
    @Autowired
    private UserInfoDao userInfoDao;


    @Override
    public List<UserInfo> getAll(int pageNum, int pageSize) {
        return userInfoDao.getAll(pageNum,pageSize);
    }


    @Transactional
    @Override
    public void deleteInsert() {
        userInfoDao.delete();
        userInfoDao.insert();
    }
}