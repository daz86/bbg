package com.tgb.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
 
   @RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
   public Model welcomePage(Model model) {
       model.addAttribute("title", "Welcome");
       model.addAttribute("message", "This is welcome page!");
	  // model= new ModelAndView();
	  // model.setViewName("welcomePage");
	  // model.addObject("title", "Welcome");
	  // model.addObject("message", "This is welcome page!");
       return model;
   }
 
   @RequestMapping(value = "/admin", method = RequestMethod.GET)
   public String adminPage(Model model) {
       return "adminPage";
   }
 
   @RequestMapping(value = "/login", method = RequestMethod.GET)
   public String loginPage(Model model ) {
      
       return "loginPage";
   }
 
   @RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
   public String logoutSuccessfulPage(Model model) {
       model.addAttribute("title", "Logout");
       return "logoutSuccessfulPage";
   }
 
   @RequestMapping(value = "/userInfo", method = RequestMethod.GET)
   public String userInfo(Model model, Principal principal) {
 
       // After user login successfully.
       String userName = principal.getName();
 
       System.out.println("User Name: "+ userName);
 
       return "userInfoPage";
   }
 
   @RequestMapping(value = "/403", method = RequestMethod.GET)
   public String accessDenied(Model model, Principal principal) {
        
       if (principal != null) {
           model.addAttribute("message", "Hi " + principal.getName()
                   + "<br> You do not have permission to access this page!");
       } else {
           model.addAttribute("msg",
                   "You do not have permission to access this page!");
       } 
       return "403Page";
   }
}