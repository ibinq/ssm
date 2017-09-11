package com.ibinq.user.service;

import com.ibinq.user.entity.User;

/**
 * Created by Administrator on 2017/9/1.
 */
public interface UserService {
    /**
     * 注册
     * @param user
     * @return
     */
    boolean addUser(User user);

    /**
     * 更新
     * @param user
     * @return
     */
    boolean updateUser(User user);

    /**
     * 根据id查询单个用户
     * @param id
     * @return
     */
    User findUserById(int id);
}
