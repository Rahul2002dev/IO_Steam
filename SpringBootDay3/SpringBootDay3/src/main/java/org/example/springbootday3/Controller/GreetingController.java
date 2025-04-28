package org.example.springbootday3.Controller;


import org.example.springbootday3.Service.GreetingService;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@RestController
@RequestMapping("/greeting")
public class GreetingController {


    // UC1
    @GetMapping("/staticGreeting")
    public Map<String, String> getGreeting(){
        Map<String, String> greeting = new HashMap<>();
        greeting.put("HTTPS Method" , "GET");
        greeting.put("Message" , "Hello from Get Method");
        return greeting;
    }

    @PostMapping("/staticGreeting")
    public Map<String, String> postGreeting(){
        Map<String, String> greeting = new HashMap<>();
        greeting.put("HTTPS Method" , "POST");
        greeting.put("Message" , "Hello from Post Method");
        return greeting;
    }


    @PutMapping("/staticGreeting")
    public Map<String, String> putGreeting(){
        Map<String, String> greeting = new HashMap<>();
        greeting.put("HTTPS Method" , "PUT");
        greeting.put("Message" , "Hello from Put Method");
        return greeting;
    }

    @DeleteMapping("/staticGreeting")
    public Map<String, String> deleteGreeting(){
        Map<String, String> greeting = new HashMap<>();
        greeting.put("HTTPS Method" , "DELETE");
        greeting.put("Message" , "Hello from Delete Method");
        return greeting;
    }




    //UC2
    private final GreetingService greetingService;

    public GreetingController(GreetingService greetingService) {
        this.greetingService = greetingService;
    }

    @GetMapping("/extendGreeting")
    public Map<String, String> serviceGetGreeting() {
        return buildResponse("GET");
    }

    @PostMapping("extendGreeting")
    public Map<String, String> servicePostGreeting() {
        return buildResponse("POST");
    }

    @PutMapping("extendGreeting")
    public Map<String, String> servicePutGreeting() {
        return buildResponse("PUT");
    }

    @DeleteMapping("extendGreeting")
    public Map<String, String> serviceDeleteGreeting() {
        return buildResponse("DELETE");
    }

    private Map<String, String> buildResponse(String method) {
        Map<String, String> response = new HashMap<>();
        response.put("HTTP Method", method);
        response.put("Message", greetingService.serviceGetGreeting());
        return response;
    }


    // UC3
    @GetMapping("/personalized")
    public Map<String, String> getPersonalizedGreeting(
            @RequestParam(value="firstName",required = false) String firstName,
            @RequestParam(value="lastName",required = false) String lastName
    ) {
        String message = greetingService.getPersonalizedGreeting(firstName, lastName);
        Map<String, String> response = new HashMap<>();
        response.put("HTTP Method", "GET");
        response.put("Message", message);
        return response;
    }


    //UC4
    @PostMapping("/save")
    public Map<String, String> saveGreeting(
            @RequestParam(value ="firstName",required = false) String firstName,
            @RequestParam(value="lastName",required = false) String lastName
    ) {
        String message = greetingService.getPersonalizedGreeting(firstName, lastName);

        Map<String, String> response = new HashMap<>();
        response.put("HTTP Method", "POST");
        response.put("Saved Message", message);
        return response;
    }

    //UC5
    @GetMapping("/greeting/find")
    public Map<String, String> findGreetingById(@RequestParam Long id) {
        String message = greetingService.findGreetingById(id);
        Map<String, String> response = new HashMap<>();
        response.put("HTTP Method", "GET");
        response.put("Message", message);
        return response;
    }


    //UC6
    @GetMapping("/greeting/all")
    public Map<String, Object> getAllGreetings() {
        List<String> messages = greetingService.findAllGreetings();
        Map<String, Object> response = new HashMap<>();
        response.put("HTTP Method", "GET");
        response.put("Messages", messages);
        return response;
    }


    //UC7
    @PutMapping("/greeting/edit")
    public Map<String, String> editGreeting(@RequestParam Long id, @RequestParam String newMessage) {
        String resultMessage = greetingService.updateGreeting(id, newMessage);
        Map<String, String> response = new HashMap<>();
        response.put("HTTP Method", "PUT");
        response.put("Message", resultMessage);
        return response;
    }


    //UC8
    @DeleteMapping("/greeting/delete")
    public Map<String, String> deleteGreeting(@RequestParam Long id) {
        String resultMessage = greetingService.deleteGreeting(id);
        Map<String, String> response = new HashMap<>();
        response.put("HTTP Method", "DELETE");
        response.put("Message", resultMessage);
        return response;
    }


}
