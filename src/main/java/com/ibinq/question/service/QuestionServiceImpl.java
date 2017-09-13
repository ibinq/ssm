package com.ibinq.question.service;

import com.ibinq.question.dao.QuestionDao;
import com.ibinq.question.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/9/13.
 */
@Service
public class QuestionServiceImpl implements QuestionService {

    @Autowired
    private QuestionDao questionDao;

    public boolean addQuestion(Question question) {
        return questionDao.addQuestion(question);
    }

    public List<Question> findQuestionAll() {
        return questionDao.findQuestionAll();
    }

    public Question findQuestionById(int id) {
        return questionDao.findQuestionById(id);
    }

    public Question findQuestionByName(String name) {
        return questionDao.findQuestionByName(name);
    }

    public boolean updateQuestion(Question question) {
        return questionDao.updateQuestion(question);
    }
}
