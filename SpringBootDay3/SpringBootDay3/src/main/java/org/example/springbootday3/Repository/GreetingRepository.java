package org.example.springbootday3.Repository;

import org.example.springbootday3.Model.Greeting;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GreetingRepository extends JpaRepository<Greeting, Long> {

}
