package com.example.ksch;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class testController {
    @GetMapping("/hello")
    public String test() throws Exception {
        return "젠킨스 테스트!!!!!! 김영준";
    }
}
