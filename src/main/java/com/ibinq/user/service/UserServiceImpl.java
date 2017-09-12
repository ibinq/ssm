package com.ibinq.user.service;

import com.ibinq.user.dao.UserDao;
import com.ibinq.user.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/9/1.
 */
@Service
public class UserServiceImpl implements UserService {

   @Autowired
    private UserDao userDao;

    public boolean addUser(User user) {
        return userDao.addUser(user);
    }

    public boolean updateUser(User user) {
        return false;
    }

    public User findUserById(int id) {
        return userDao.findUserById(id);
    }

    public List<User> findUserAll(@Param("offset") int offset, @Param("limit") int limit) {
        return userDao.findUserAll(offset,limit);
    }

    public Integer findUserAllCount() {
        return userDao.findUserAllCount();
    }
}
