package mapper;

import org.apache.ibatis.annotations.Param;
import pojo.Student;

import java.util.List;
import java.util.Map;

public interface StudentMapper {
    List<Student> QueryStudents();
    List<Student> ListStudents(@Param("limit") Integer limit, @Param("offset") Integer offset, @Param("order") String order, @Param("sort") String sort);
    int GetStudentTotal();
    void deleteStudentById(String id);
    void insertStudent(Student student);
    Student searchStudent(@Param("id") String id);

    void updateStudent(Student student);

    List<Map<String,Object>> QuerySexData();
}
