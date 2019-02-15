package service;

import pojo.Student;

import java.util.List;
import java.util.Map;

public interface StudentsService {
    List<Student> DisplayStudents();
    List<Student> ListStudents(Integer limit, Integer offset, String order, String sort);
//    删除用户
    void deleteStudentById(String id);

//    插入用户
    void insertStudent(Student student);
    int getStudentsCount();

//    查询用户
    Student searchStudentById(String id);

//    编辑用户
    void updateStudent(Student student);

//    利用echarts查询用户性别类型
    List<Map<String,Object>> QuerySexData();
}
