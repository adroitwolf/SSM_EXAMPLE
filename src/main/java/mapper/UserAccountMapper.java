package mapper;

import org.apache.ibatis.annotations.Param;
import pojo.User;

public interface UserAccountMapper {
    User UserLogin(@Param("username")String username,@Param("password")String password);
}
