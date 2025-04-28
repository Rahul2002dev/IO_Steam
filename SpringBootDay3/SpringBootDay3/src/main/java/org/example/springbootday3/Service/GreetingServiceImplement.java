package org.example.springbootday3.Service;

import org.example.springbootday3.Model.Greeting;
import org.example.springbootday3.Repository.GreetingRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class GreetingServiceImplement implements GreetingService {

    @Override
    public String serviceGetGreeting() {
        return "Hello World";
    }

    @Override
    public String servicePostGreeting() {
        return "Hello World";
    }

    @Override
    public String servicePutGreeting() {
        return "Hello World";
    }

    @Override
    public String serviceDeleteGreeting() {
        return "Hello World";
    }

    private final GreetingRepository greetingRepository;

    public GreetingServiceImplement(GreetingRepository greetingRepository) {
        this.greetingRepository = greetingRepository;
    }

    @Override
    public String getPersonalizedGreeting(String firstName, String lastName) {
        String message;
        if (firstName != null && !firstName.isEmpty() && lastName != null && !lastName.isEmpty()) {
            message = "Hello " + firstName + " " + lastName;
        } else if (firstName != null && !firstName.isEmpty()) {
            message = "Hello " + firstName;
        } else if (lastName != null && !lastName.isEmpty()) {
            message = "Hello " + lastName;
        } else {
            message = "Hello World";
        }



        greetingRepository.save(new Greeting(message));
        return message;

    }

    @Override
    public String findGreetingById(Long id) {
        return greetingRepository.findById(id)
                .map(Greeting::getMessage)
                .orElse("Greeting not found");
    }


    @Override
    public List<String> findAllGreetings() {
        return greetingRepository.findAll()
                .stream()
                .map(Greeting::getMessage)
                .collect(Collectors.toList());
    }

    @Override
    public String updateGreeting(Long id, String newMessage) {
        return greetingRepository.findById(id)
                .map(greeting -> {
                    greeting.setMessage(newMessage); // Update the message
                    greetingRepository.save(greeting); // Save the updated greeting
                    return "Greeting updated successfully!";
                })
                .orElse("Greeting not found with ID " + id);
    }

    @Override
    public String deleteGreeting(Long id) {
        if (greetingRepository.existsById(id)) {
            greetingRepository.deleteById(id); // Delete the greeting by ID
            return "Greeting deleted successfully!";
        } else {
            return "Greeting not found with ID " + id;
        }
    }




}
