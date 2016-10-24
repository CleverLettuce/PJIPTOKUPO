package hr.fer.webshop2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class WebshopController {
	
    @RequestMapping("/")
    public String root() {
    	return "index";
    }
    
//    @RequestMapping("/products")
//    public String products() {
//		return "products";
//	}
//    
//    @RequestMapping("/productinfo")
//    public String productinfo() {
//    	return "productinfo";
//    }
//    
//    @RequestMapping("/cart")
//    public String cart() {
//    	return "cart";
//    }
//    
//    @RequestMapping("/userinfo")
//    public String userinfo() {
//    	return "userinfo";
//    }
//    
//    @RequestMapping("/signin")
//    public String signin() {
//    	return "signin";
//    }
}
