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
    }

    @Autowired
    StudentsService studentsService;
    @Test
    public void StudentServiceTest(){
        List<Map<String,Object>> data = studentsService.QuerySexData();
        System.out.println(data);
    }
}
