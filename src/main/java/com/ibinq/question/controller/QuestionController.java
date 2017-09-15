package com.ibinq.question.controller;

import com.ibinq.question.entity.Answer;
import com.ibinq.question.entity.Question;
import com.ibinq.question.service.QuestionService;
import com.ibinq.user.entity.User;
import com.ibinq.user.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/9/13.
 */
@Controller
@RequestMapping("/question")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private UserService userService;

    private Question question = new Question();

    private Answer answer = new Answer();

    @RequestMapping(value = "/addQuestion",method = RequestMethod.GET)
    public String addQuestion(@RequestParam("questionTitle") String questionTitle,@RequestParam("questionContent") String questionContent, HttpSession session , Model model){
        User user = (User) session.getAttribute("user");
        question.setTitle(questionTitle);
        question.setContent(questionContent);
        question.setUid(user.getId());
        questionService.addQuestion(question);
        return "user/home";
    }

    @RequestMapping(value = "/findQuestion",method = RequestMethod.GET)
    public String findQuestion(@RequestParam("id")int id, Model model){
        Question question = questionService.findQuestionById(id);
        List<Answer> answers = questionService.findAnswerById(question.getId());
        int i = question.getLook() == null ? 1 : question.getLook() + 1;
        question.setLook(i);
        questionService.updateQuestion(question);
        model.addAttribute("question",question);
        model.addAttribute("answers",answers);
        return "question/detail";
    }

    @RequestMapping(value = "/followQuestion",method = RequestMethod.GET)
    public String followQuestion(@RequestParam("id")int id,Model model){
        Question question = questionService.findQuestionById(id);
        int i = question.getFollow() == null ? 1 : question.getFollow() + 1;
        question.setFollow(i);
        questionService.updateQuestion(question);
        model.addAttribute("question",question);
        return "question/detail";
    }

    @RequestMapping(value = "/addAnswer")
    public String addAnswer(@RequestParam("id")int id,@RequestParam("answerContent")String answerContent,Model model, HttpSession session){
        User user = (User) session.getAttribute("user");
        System.out.print(id);
        answer.setQiu(id);
        answer.setUid(user.getId());
        answer.setContent(answerContent);
        answer.setAnswerTime(new Date());
        questionService.addAnswer(answer);
        return "question/detail";
    }

}
