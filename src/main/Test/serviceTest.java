import org.apache.commons.lang3.RandomStringUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import pojo.User;
import service.StudentsService;
import service.UserAccountService;

import java.util.List;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:application-dao.xml","classpath:application-service.xml"})
public class serviceTest {

    @Autowired
    UserAccountService userAccountService;

    @Test
    public void ServiceTestImpl()
    {
        User user = userAccountService.userLogin("admin","");
        System.out.println(user);
        String username = userAccountService.getUserSalt("admin");
        System.out.println(username);
    }

    @Autowired
    StudentsService studentsService;
    @Test
    public void StudentServiceTest(){
        List<Map<String,Object>> data = studentsService.QuerySexData();
        System.out.println(data);
    }

    @Test
    public void pwdShiro(){
        //生成salt
        String salt = RandomStringUtils.randomAlphanumeric(10);
        System.out.println(salt);
        String password = new SimpleHash("MD5","user",salt,2).toHex();
        System.out.println(password);
//
//        String salt = RandomStringUtils.randomAlphanumeric(10);
//        System.out.println(salt);
//        ByteSource test = ByteSource.Util.bytes(salt);
//        System.out.println(test);
    }
}
