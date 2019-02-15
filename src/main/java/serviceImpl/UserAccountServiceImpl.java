package serviceImpl;

import mapper.UserAccountMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.User;
import service.UserAccountService;

@Service("UserAccountServiceImpl")
public class UserAccountServiceImpl implements UserAccountService {
    @Autowired
    UserAccountMapper userAccountMapper;
    @Override
    public User userLogin(String username, String password) {
        User user = userAccountMapper.UserLogin(username,password);
        return user;
    }
}
