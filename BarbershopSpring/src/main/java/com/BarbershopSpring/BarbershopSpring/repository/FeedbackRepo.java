package com.BarbershopSpring.BarbershopSpring.repository;

import com.BarbershopSpring.BarbershopSpring.model.Feedback;
import org.springframework.data.repository.CrudRepository;

public interface FeedbackRepo extends CrudRepository<Feedback, Long> {
}
