package controller;


import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.User;

import javax.servlet.http.HttpSession;

@Controller
public class UserAccountController {

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String UserLoginController(@RequestParam("username") String username, @RequestParam("password") String password,
                                      @RequestParam(value = "rememberMe",required = false)Boolean rememberMe, HttpSession httpSession, Model model)
    {
        Subject subject = SecurityUtils.getSubject();
        rememberMe  = rememberMe == null ? false : rememberMe;
        try{
            UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(username,password);
            usernamePasswordToken.setRememberMe(rememberMe);
            subject.login(usernamePasswordToken);
            User user = (User) subject.getPrincipal();
            httpSession.setAttribute("USER_SESSION",user.getUsername());
            httpSession.setAttribute("USER_ROLE",user.getRole());
        }catch (Exception e){
            e.printStackTrace();
            model.addAttribute("Info","账号或密码错误");
//            return "redirect:/login.jsp";
            return "forward:/login.jsp";
        }
        return "redirect:/jsp/system.jsp";
    }

}
