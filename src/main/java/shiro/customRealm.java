package shiro;

import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import pojo.User;
import service.UserAccountService;



public class customRealm extends AuthorizingRealm {

    @Autowired
    private UserAccountService userAccountService;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    /*********
     *  用于信息认证
     * ****/
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String username = (String) authenticationToken.getPrincipal();
        String password = new String((char [])authenticationToken.getCredentials());
        User user = userAccountService.userLogin(username,"");
//        用户为空
        System.out.println(password);
        System.out.println(user.getPassword());
        if(user == null){
            throw new UnknownAccountException();
        }else if(!password.equals(user.getPassword())){
            throw new IncorrectCredentialsException();
        }

        AuthenticationInfo info = new SimpleAuthenticationInfo(user,user.getPassword(),getName());
        return info;
    }
}
