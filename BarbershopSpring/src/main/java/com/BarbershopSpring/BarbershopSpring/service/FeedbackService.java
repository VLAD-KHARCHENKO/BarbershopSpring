package com.BarbershopSpring.BarbershopSpring.service;

import com.BarbershopSpring.BarbershopSpring.controller.dto.FeedbackForm;
import com.BarbershopSpring.BarbershopSpring.model.Feedback;
import com.BarbershopSpring.BarbershopSpring.model.User;
import com.BarbershopSpring.BarbershopSpring.repository.FeedbackRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;

@Service
public class FeedbackService {
    @Autowired
    private FeedbackRepo feedbackRepo;
    @Autowired
    private UserService userService;

    /**
     * Converts data from FeedbackForm to Feedback and stores it into DB
     *
     * @param form
     * @return Feedback
     */
    @Transactional
    public Feedback addFeedback(FeedbackForm form) {
        if (smallMessage(form.getMessage())) {
            return null;
        }
        User user = userService.getCurrentUser();
        Feedback feedback = new Feedback(form.getMessage(), LocalDate.now(), user);
        return feedbackRepo.save(feedback);
    }

    /**
     * Verifies the length of the message from FeedbackForm and returns True/False
     *
     * @param message-
     * @return-boolean
     */
    private boolean smallMessage(String message) {
        return message.length() < 10;
    }
}
