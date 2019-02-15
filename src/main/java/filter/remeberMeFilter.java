package filter;

import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import pojo.User;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class remeberMeFilter  extends FormAuthenticationFilter {
    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue){
        Subject subject = getSubject(request,response);
        Session session = subject.getSession();
        if(!subject.isAuthenticated() && subject.isRemembered() && session.getAttribute("USER_SESSION") == null ){
            User principal = (User) subject.getPrincipal();
            System.out.println(principal.getUsername());
            if(principal != null){
                session.setAttribute("USER_SESSION",principal.getUsername());
                session.setAttribute("USER_ROLE",principal.getRole());
            }
        }
        return subject.isAuthenticated() || subject.isRemembered();
    }
}
