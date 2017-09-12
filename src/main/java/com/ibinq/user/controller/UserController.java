package com.ibinq.user.controller;

import com.ibinq.user.entity.User;
import com.ibinq.user.service.UserService;
import com.ibinq.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2017/9/1.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private  HttpServletRequest request;

    private PageBean pageBean = new PageBean();

    private User user = new User();

    @RequestMapping(value="/login")
    public String login(){
        return "login";
    }

    @RequestMapping("/home")
    public String home(){return  "home" ;}


    @RequestMapping(value="/addUser",method = RequestMethod.POST)
    @Transactional
    public String addUser(@RequestParam("username") String username, @RequestParam("password") String password, Model model){
      /*  user.setUsername(username);
        user.setPassword(password);
        userService.addUser(user);
        int a = 1/0;*/
        return "home";
    }

    @RequestMapping(value="/findUser",method = RequestMethod.GET)
    public String findUser( @RequestParam("currentPage") int currentPage, Model model){
        pageBean.setCurrentPage(currentPage);
        int count = userService.findUserAllCount();
        pageBean.setPageCount(count/4+1);
        pageBean.setTotalPage(count/4+1);
        List<User> users = userService.findUserAll((pageBean.getCurrentPage()-1)*4,4);
        model.addAttribute("pageBean",pageBean);
        model.addAttribute("users" ,users);
        return "info";
    }
}
