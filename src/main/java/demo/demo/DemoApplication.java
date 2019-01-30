package demo.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@SpringBootApplication
@Controller
public class DemoApplication {

    @GetMapping("/demo")
    @ResponseBody
    public String demo() {
        return "hello";
    }
    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

}

