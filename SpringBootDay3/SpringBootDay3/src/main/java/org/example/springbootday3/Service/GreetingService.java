package org.example.springbootday3.Service;


import org.example.springbootday3.Repository.GreetingRepository;

import java.util.List;

public interface GreetingService {
    String serviceGetGreeting();
    String servicePostGreeting();
    String servicePutGreeting();
    String serviceDeleteGreeting();

    String getPersonalizedGreeting(String firstName, String lastName);

    String findGreetingById(Long id);
    List<String> findAllGreetings();
    String updateGreeting(Long id, String newMessage);
    String deleteGreeting(Long id);


}
