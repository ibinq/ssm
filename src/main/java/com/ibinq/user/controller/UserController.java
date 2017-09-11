package com.ibinq.user.controller;

import com.ibinq.user.entity.User;
import com.ibinq.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by Administrator on 2017/9/1.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;


    private User user = new User();

    @RequestMapping(value="/login")
    public String login(){
        return "login";
    }


    @RequestMapping(value="/addUser",method = RequestMethod.POST)
    public String addUser(@RequestParam("username") String username, @RequestParam("password") String password, Model model){
        /*user.setUsername(username);
        user.setPassword(password);
        userService.addUser(user);*/
        return "home";
    }

    @RequestMapping(value="/findUser",method = RequestMethod.GET)
    public String findUser(@RequestParam("id") int id,  Model model){
        User u = userService.findUserById(id);
        model.addAttribute("user",u);
        return "info";
    }
}
