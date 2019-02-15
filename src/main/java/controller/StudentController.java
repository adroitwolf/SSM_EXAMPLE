package controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import pojo.Student;
import service.StudentsService;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/Students")
public class StudentController {

    @Resource(name ="StudentsServiceImpl")
    private StudentsService studentsService;

//   没有采用分页 单纯的将json文件
    @RequestMapping("/init")
    @ResponseBody
    public List<Student> InitStudents()
    {
        List<Student> list = studentsService.DisplayStudents();

        return list;
    }

//利用Bootstrap table初始化数据
    @RequestMapping(value = "/TestTable" ,method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> initStudent(@RequestParam(value = "limit")Integer limit , @RequestParam(value = "offset")Integer offset,@RequestParam(value = "order")String order,@RequestParam(value = "sort")String sort)
    {
        Map<String,Object> result = new HashMap<String, Object>();
        System.out.println("排序规则：" +order+"排序对象"+sort);
        System.out.println("页面大小为："+limit);
        System.out.println("偏移量为："+offset);
        List<Student> students = studentsService.ListStudents(limit,offset,order,sort);

        int total = studentsService.getStudentsCount();

        result.put("rows",students);
        result.put("total",total);
        return result;
    }

//    删除学生按钮
    @RequestMapping(value = "/DeleteStudent",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> deletestudent(@RequestBody Map<String,String> request){
        //todo springmvc解析一个json数据的时候  除了用map的方法 还有别的？
        String id = request.get("id");

        //todo  删除方法是否可以设置在一个函数中
        Map<String,String> result = new HashMap<String,String>();
        System.out.println("删除的学生id为："+id);

        studentsService.deleteStudentById(id);

        result.put("result","success");

        return  result;

    }



//    查询学生  todo 暂时想做模糊查询
    @RequestMapping(value = "/SearchStudentById",method = RequestMethod.POST)
    @ResponseBody
    public Student SearchStudentById(@RequestParam("id")Student student)
    {


        return student;
    }

//    更新学生
    @RequestMapping(value = "/updateStudent",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> updateStudent(@RequestBody Student student)
    {
        System.out.println(student);
        Map<String,Object> result = new HashMap<String,Object>();

        studentsService.updateStudent(student);

        result.put("result","success");

        return  result;
    }


    @RequestMapping("EChartsTest")
    @ResponseBody
    public List<Map<String,Object>> QuerySexData()
    {
        return studentsService.QuerySexData();
    }

}




