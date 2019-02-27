package filter;

import org.apache.shiro.session.SessionException;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.LogoutFilter;
import org.springframework.stereotype.Service;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

@Service
public class SystemLogoutFilter extends LogoutFilter {
    @Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception{
        Subject subject =getSubject(request,response);
        String redirectUrl = getRedirectUrl(request,response,subject);
        ServletContext context = request.getServletContext();
        System.out.println("context为:" + context);
        try{
            subject.logout();
//            context.removeAttribute("");
        }catch (SessionException e){
            e.printStackTrace();
        }

        issueRedirect(request,response,redirectUrl);

        return false;
    }
}
