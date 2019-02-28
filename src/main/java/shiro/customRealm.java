package shiro;

import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
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
        //得到密码
//        String password = new String((char [])authenticationToken.getCredentials());
        User user = userAccountService.userLogin(username,"");
        String salt = userAccountService.getUserSalt(user.getUsername());
        ByteSource credentialsSalt = ByteSource.Util.bytes(salt);
        System.out.println(credentialsSalt);
//        用户为空
        if(user == null){
            throw new UnknownAccountException();
        }
        AuthenticationInfo info = new SimpleAuthenticationInfo(user,user.getPassword(),credentialsSalt,getName());
        return info;
    }
}
