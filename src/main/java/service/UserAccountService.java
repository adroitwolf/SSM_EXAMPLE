package service;

import pojo.User;

public interface UserAccountService {
    User userLogin(String username,String password);
}
