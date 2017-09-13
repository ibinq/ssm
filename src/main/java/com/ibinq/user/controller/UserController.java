package com.ibinq.user.controller;

import com.ibinq.question.entity.Question;
import com.ibinq.question.service.QuestionService;
import com.ibinq.user.entity.User;
import com.ibinq.user.service.UserService;
import com.ibinq.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
    private QuestionService questionService;

    @Autowired
    private  HttpServletRequest request;

    private PageBean pageBean = new PageBean();

    private User user = new User();

    @RequestMapping(value="/loginPage")
    public String loginPage(){
        return "user/login";
    }

    @RequestMapping(value = "/login" ,method = RequestMethod.POST)
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session , Model model){
        User user = userService.findUserByUsernameAndPassworld(username,password);
        if(user!=null){
            session.setAttribute("user" ,user);
        }
        return "redirect:/user/home";
    }

    @RequestMapping("/home")
    public String home(Model model){
        List<Question> questions = questionService.findQuestionAll();
        model.addAttribute("questions" , questions);
        return "user/home";
    }

    @RequestMapping(value = "/registerPage")
    public String registerPage(){
        return "user/register";
    }

    @RequestMapping(value="/register",method = RequestMethod.POST)
    public String register(@RequestParam("username") String username, @RequestParam("password") String password, @RequestParam("repassword") String repassword, Model model){
       if(username!=null && !"".equals(username)){
           if(password!=null && !"".equals(password)){
               if(repassword!=null && !"".equals(repassword)){
                   if(password.equals(repassword)){
                       user.setUsername(username);
                       user.setPassword(password);
                       userService.addUser(user);
                   }
               }
           }
       }
        return "redirect:/user/home";
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
        return "user/info";
    }
}
