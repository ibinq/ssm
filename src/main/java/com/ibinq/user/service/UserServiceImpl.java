package com.ibinq.user.service;

import com.ibinq.user.dao.UserDao;
import com.ibinq.user.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
