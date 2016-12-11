package com.sdut.ngxykjc.basicsInfo.employee.action;

import com.sdut.ngxykjc.base.action.BaseAction;
import com.sdut.ngxykjc.basicsInfo.employee.bean.Employee;
import com.sdut.ngxykjc.basicsInfo.employee.bean.EmployeeSearch;
import com.sdut.ngxykjc.basicsInfo.employee.service.EmployeeService;
import org.apache.struts2.ServletActionContext;
import org.aspectj.util.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;


/**
 * Created by sunming on 2016/11/5.
 */
@Controller
@Scope("session")
public class EmployeeAction extends BaseAction {

    //封装业务逻辑方法
    @Autowired
    private EmployeeService employeeService;
    //封装实体类
    private Employee employee;
    //封装查找类
    private EmployeeSearch search;
    //前台传入id
    private long id;
    //前台获取数据
    private List<Employee> pageList;


    //头像
    private File headImg;
    private String headImgContentType;
    private String headImgFileName;


    //跳转到员工操作首页
    public String listUI() {
        return SUCCESS;
    }

    //跳转到员工查询页面
    public String listQueryUI() {
        return "listquery";
    }

    //根据id获取员工的详情
    public String detail() {
        if (id == -1) {
            return SUCCESS;
        }
        employee = employeeService.get(id);
        id = -1;
        return SUCCESS;
    }

    //保存员工信息
    public String save() {
        try {
            if (employee != null) {
                if (headImg != null) {
                    String filePath = ServletActionContext.getServletContext().getRealPath("upload/employee");
                    System.out.println(filePath);
                    String fileName = UUID.randomUUID().toString().replaceAll("-", "") + headImgFileName.substring(headImgFileName.lastIndexOf("."));
                    System.out.println(fileName);
                    FileUtil.copyFile(headImg, new File(filePath, fileName));
                    employee.setHeadImg("employee/" + fileName);
                }
                employeeService.addOrUpdate(employee);
            }
            employee = null;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    //删除员工信息
    public String delete() {
        employeeService.delete(employee);
        employeeService = null;
        return SUCCESS;
    }

    //返回树形结构（弹窗）
    public void tree() {
        json(employeeService.tree());
    }

    //返回树形结构（非弹窗）
    public void treeForEmpty() {
        json(employeeService.treeForEmployee());
    }

    //查询
    public void search() {
        System.out.println(search);
        List<Employee> list = employeeService.searchEmployeeList(Employee.class, search);
        json(list);
    }

    //导出Excel文件
    public void exportExcel() {
        try {
            //1、查找用户列表
            List<Employee> employeeList = employeeService.searchEmployeeList(Employee.class, search);
            System.out.println(employeeList);
            //2、导出
            HttpServletResponse response = ServletActionContext.getResponse();
            response.setContentType("application/x-execl");
            response.setHeader("Content-Disposition", "attachment;filename=" + new String("教职工列表.xls".getBytes(), "ISO-8859-1"));
            ServletOutputStream outputStream = response.getOutputStream();
            employeeService.exportExcel(employeeList, outputStream);
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    /**
     * 根据姓名获取员工单位，用来页面上填充员工单位
     */
    private String name;

    public void unitName() {
        json(employeeService.getUnitByName(name));
    }

    /************** getter or setter ***************/

    public EmployeeService getEmployeeService() {
        return employeeService;
    }

    public void setEmployeeService(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public EmployeeSearch getSearch() {
        return search;
    }

    public void setSearch(EmployeeSearch search) {
        this.search = search;
    }

    public File getHeadImg() {
        return headImg;
    }

    public void setHeadImg(File headImg) {
        this.headImg = headImg;
    }

    public String getHeadImgContentType() {
        return headImgContentType;
    }

    public void setHeadImgContentType(String headImgContentType) {
        this.headImgContentType = headImgContentType;
    }

    public List<Employee> getPageList() {
        return pageList;
    }

    public void setPageList(List<Employee> pageList) {
        this.pageList = pageList;
    }

    public String getHeadImgFileName() {
        return headImgFileName;
    }

    public void setHeadImgFileName(String headImgFileName) {
        this.headImgFileName = headImgFileName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
