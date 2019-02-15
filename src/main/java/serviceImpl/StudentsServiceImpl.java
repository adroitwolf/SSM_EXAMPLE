package serviceImpl;

import mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Student;
import service.StudentsService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("StudentsServiceImpl")
public class StudentsServiceImpl implements StudentsService {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> DisplayStudents() {

        List<Student> list = studentMapper.QueryStudents();

        return list;
    }

    @Override
    public List<Student> ListStudents(Integer limit, Integer offset, String order, String sort) {
        List<Student> list = studentMapper.ListStudents(limit,offset,order,sort);
        return list;
    }

    @Override
    public void deleteStudentById(String id) {
        studentMapper.deleteStudentById(id);
    }

    @Override
    public void insertStudent(Student student) {
        studentMapper.insertStudent(student);
    }

    @Override
    public int getStudentsCount() {
        int total = studentMapper.GetStudentTotal();
        return total;
    }

    @Override
    public Student searchStudentById(String id) {
        Student student = studentMapper.searchStudent(id);
        return student;
    }

    @Override
    public void updateStudent(Student student) {
        studentMapper.updateStudent(student);
    }

    @Override
    public List<Map<String, Object>> QuerySexData() {
        List<Map<String, Object>> data = new ArrayList<>();
        List<Map<String, Object>> listData = studentMapper.QuerySexData();
        System.out.println(listData);
        if(listData.size()>0){
            for(int i =0;i<listData.size();i++){
                Map<String,Object> map = new HashMap<>();
                map.put("name",listData.get(i).get("SEX"));
                map.put("value",listData.get(i).get("SEXCOUNT"));
                data.add(map);
            }
        }
        return data;
    }


}
