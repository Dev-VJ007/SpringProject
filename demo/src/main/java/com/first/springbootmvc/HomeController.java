package com.first.springbootmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.first.springbootmvc.database.DataBase;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "index.jsp";
    }

    @RequestMapping("signup")
    public String signup(HttpServletRequest request) {
        String susername = request.getParameter("username");
        String spassword = request.getParameter("password");

        DataBase.signupData(susername, spassword);

        return "index.jsp";
    }

    @RequestMapping("login")
    public String login(HttpServletRequest request, org.springframework.ui.Model model) {
        String Eusername = request.getParameter("t1");
        String Epassword = request.getParameter("t2");

        boolean isValidUser = DataBase.verifyLogin(Eusername, Epassword);
        model.addAttribute("errorMessage", "");

        if (isValidUser) {
            return "result.jsp";  // Successful login
        } else {
            model.addAttribute("errorMessage", "Invalid username or password");

            return "";  // Login failed
        }
    }
}
