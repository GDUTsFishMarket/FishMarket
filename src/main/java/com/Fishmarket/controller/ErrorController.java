package com.Fishmarket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by mo_yu on 2021/11/7. */
@Controller
public class ErrorController {

    @RequestMapping(value = "/error")
    public String error() {
        return "error";
    }

}
