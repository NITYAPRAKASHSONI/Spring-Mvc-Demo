package org.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

@Controller
public class HelloWorldController {
    //need a controller method to show the initial form.

    @RequestMapping("/showForm")
    public String showForm(){
        return "helloworld-form";
    }

    //need the controller method to process the form.
    @RequestMapping("/processForm")
  public String processForm(){
        return "helloworld";
  }

  @RequestMapping("/processFormVersionTwo")
  public String letsShoutDude(HttpServletRequest request, Model model){
// read the data from html form
String name=request.getParameter("studentName");
      //convert to upper case.

name=name.toUpperCase(Locale.ROOT);
      //create the message
String result="Yo!!!" +name;

      // add the message

model.addAttribute("message",result);

        return "helloworld";
  }


    @RequestMapping("/processFormVersionThree")
    public String processFormVersionThree(@RequestParam("studentName") String name, Model model){
// read the data from html form
//        String name=request.getParameter("studentName");
        //convert to upper case.

        name=name.toUpperCase(Locale.ROOT);
        //create the message
        String result="Yo!!! Mr/Mrs" +name;

        // add the message

        model.addAttribute("message",result);

        return "helloworld";
    }
}
