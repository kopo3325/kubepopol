// HelloController.java

// 1. 패키지 선언이 올바른지 확인 (KubepopolApplication.java 와 같아야 합니다)
package com.example.kubepopol; 

// 2. 필요한 import 구문이 있는지 확인
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

// 3. 클래스 위에 @RestController 어노테이션이 있는지 확인 (매우 중요!)
@RestController 
public class HelloController {

    // 4. 메소드 위에 @GetMapping("/") 어노테이션이 있는지 확인 (매우 중요!)
    // "/"는 http://localhost:8080/ 바로 뒤에 아무것도 안 붙는 경로를 의미합니다.
    @GetMapping("/")
    public String hello() {
        return "Hello, Docker World!";
    }
}