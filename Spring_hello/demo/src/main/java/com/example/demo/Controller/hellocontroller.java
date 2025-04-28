package com.example.demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class hellocontroller {
    @GetMapping("/web")
    public String hello(Model m) {
        m.addAttribute("hello", "Hello World");
        return "hello";
    }

    @GetMapping("/web/message")
    public String message(Model m) {
        m.addAttribute("message", "Hello prashant");
        return "message";
    }
}
