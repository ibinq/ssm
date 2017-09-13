package com.ibinq.question.dao;

import com.ibinq.question.entity.Question;

import java.util.List;

/**
 * Created by Administrator on 2017/9/13.
 */
public interface QuestionDao {
    boolean addQuestion(Question question);

    List<Question> findQuestionAll();

    Question findQuestionById(int id);

    Question findQuestionByName(String name);

    boolean updateQuestion(Question question);
}
