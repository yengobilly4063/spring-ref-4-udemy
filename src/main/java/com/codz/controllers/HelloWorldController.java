package com.codz.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

    //new a controller method to show the initial HTMl form
    @RequestMapping("/showForm")
    public String showForm(){
        return "helloworld-form";
    }


    //need a controller method to process the HTML form
    @RequestMapping("/processForm")
    public String processForm(){
        return "helloworld";
    }



    //new controller method to read from data and
    //add data to the model
    @RequestMapping("/processFormVersionTwo")
    public String letsShoutDude(HttpServletRequest request, Model model){
        //read the request parameter from HTML form
        String theName = request.getParameter("studentName");

        //convert the data to all caps
        theName = theName.toUpperCase();

        //create the message
        String results = "Yo! " + theName;

        // add message to model
        model.addAttribute("message", results);

        return "helloworld";
    }

    @RequestMapping("/processFormVersionThree")
    public String letsShoutDudeThree(@RequestParam("studentName") String theName, Model model){

        //convert the data to all caps
        theName = theName.toUpperCase();

        //create the message
        String results = "Hey my Friend from v3! " + theName;

        // add message to model
        model.addAttribute("message", results);

        return "helloworld";
    }


//    @RequestParam("studentName") String theName


}
