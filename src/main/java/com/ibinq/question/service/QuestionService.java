package com.ibinq.question.service;

import com.ibinq.question.entity.Answer;
import com.ibinq.question.entity.Question;

import java.util.List;

/**
 * Created by Administrator on 2017/9/13.
 */
public interface QuestionService {
    boolean addQuestion(Question question);

    List<Question> findQuestionAll();

    Question findQuestionById(int id);

    Question findQuestionByName(String name);

    boolean updateQuestion(Question question);


    boolean addAnswer(Answer answer);
    List<Answer> findAnswerById(int id);
}
