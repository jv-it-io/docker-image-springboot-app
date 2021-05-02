package be.jvit.example.springbootappdockerimage.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Jonathan Vandersmissen
 * @created 5/1/2021
 * @project springboot-app-docker-image
 */
@RestController
@RequestMapping("docker")
public class HelloDockerController {

    @GetMapping
    public String sayHello(){
        return "Hello Docker";
    }
}
