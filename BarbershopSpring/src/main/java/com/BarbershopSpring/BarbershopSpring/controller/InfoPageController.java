package com.BarbershopSpring.BarbershopSpring.controller;

import com.BarbershopSpring.BarbershopSpring.repository.FeedbackRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class InfoPageController {
    private static final Logger LOG = LoggerFactory.getLogger(InfoPageController.class);
    @Autowired
    private FeedbackRepo repository;

    @GetMapping(value = "/about")
    public String about() {
        return "about";
    }


    @GetMapping(value = "contacts")
    public String contacts() {
        return "contacts";
    }



    @GetMapping(value = "index")
    public String home(Model model) {
        LOG.info("Index PAGE CONTROLLER");
        model.addAttribute("feedback", repository.findAll());
        LOG.info("addAttribute feedback" + repository.findAll());
        return "index";
    }


    @GetMapping(value = "service")
    public String service() {
        return "service";
    }



}
