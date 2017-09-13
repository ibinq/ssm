package com.ibinq.user.service;

import com.ibinq.user.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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

    User findUserByUsernameAndPassworld(@Param("username") String username ,@Param("password") String password);

    List<User> findUserAll(@Param("offset") int offset, @Param("limit") int limit);

    Integer findUserAllCount();
}
