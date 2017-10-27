package io.arukas;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by niuyuxian on 27/10/2017.
 */
@RestController
public class DemoController {

    @Value("${spring.application.name}")
    private String name;

    @GetMapping("/demo/name")
    public String getApplicationName(){
        return name;
    }

}
