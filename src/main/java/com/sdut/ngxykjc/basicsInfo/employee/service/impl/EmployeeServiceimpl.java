package com.sdut.ngxykjc.basicsInfo.employee.service.impl;

import com.sdut.ngxykjc.base.bean.Node;
import com.sdut.ngxykjc.basicsInfo.department.bean.Department;
import com.sdut.ngxykjc.basicsInfo.department.dao.DepartmentDao;
import com.sdut.ngxykjc.basicsInfo.employee.bean.Employee;
import com.sdut.ngxykjc.basicsInfo.employee.dao.EmployeeDao;
import com.sdut.ngxykjc.basicsInfo.employee.service.EmployeeService;
import com.sdut.ngxykjc.basicsInfo.unit.bean.Unit;
import com.sdut.ngxykjc.basicsInfo.unit.dao.UnitDao;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.ServletOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by sunming on 2016/11/5.
 */
@Service
public class EmployeeServiceimpl implements EmployeeService {

    @Autowired
    private EmployeeDao employeeDao;
    @Autowired
    private UnitDao unitDao;
    @Autowired
    private DepartmentDao departmentDao;

    @Override
    public Employee get(long id) {
        return (Employee) employeeDao.getById(Employee.class, id);
    }

    @Override
    public void addOrUpdate(Employee employee) {
        employeeDao.saveOrUpdate(employee);
    }

    @Override
    public void delete(Employee employee) {
        employeeDao.delete(employee);
    }

    @Override
    public void delete(long id) {
        employeeDao.delete(id);
    }

    @Override
    public List<Node> treeForEmployee() {

        // 当前id
        int curId = 0;
        List<Node> nodes = new ArrayList<>();
        nodes.add(new Node(curId++, -1, "请选择", ""));
        List<Employee> listEmployee = (List<Employee>) employeeDao.getBySql(Employee.class, "select * from employee");
        List<Unit> listUnit = (List<Unit>) unitDao.getBySql(Unit.class, "select * from unit");
        List<Department> listDeparment = (List<Department>) departmentDao.getBySql(Department.class, "select * from department");

        HashMap<String, Integer> unitListMap = new HashMap<String, Integer>();
        HashMap<String, Integer> departmentMap = new HashMap<String, Integer>();

        for (int i = 0; i < listUnit.size(); i++) {
            Unit unit = listUnit.get(i);
            int id = curId;
            String name = unit.getUnitName();
            nodes.add(new Node(curId++, 0, name, ""));
            unitListMap.put(name, id);
        }

        for (int i = 0; i < listDeparment.size(); i++) {
            Department department = listDeparment.get(i);
            int id = curId;
            String name = department.getDepartmentName();
            String pidName = department.getUnitName();
            int pidId = unitListMap.get(pidName);
            nodes.add(new Node(curId++, pidId, name, ""));
            departmentMap.put(name, id);
        }

        for (int i = 0; i < listEmployee.size(); i++) {
            Employee employee = listEmployee.get(i);
            String name = employee.getEmployeeName();
            int pidId = departmentMap.get(employee.getDepartmentName());
            nodes.add(new Node(curId++, pidId, name, "javascript:employeeTree('" + name + "');"));
        }

        return nodes;
    }

    @Override
    public List<Node> tree() {
        List<Employee> lists = (List<Employee>) employeeDao.getBySql(Employee.class, "select * from employee");
        List<Node> nodes = new ArrayList<>();

        // 当前id
        int curId = 0;

        // 当前学院id
        int curxuid = 0;
        // 当前部门id
        int curgzcid = 0;
        // 当前学院名称
        String curXY = "";
        // 当前部门名称;
        String curGZC = "";
        nodes.add(new Node(curId++, -1, "请选择", ""));
        for (int i = 0; i < lists.size(); i++) {
            Employee obj = lists.get(i);
            if (obj.getAcademiaUnitName().equals(curXY)) {
                if (obj.getDepartmentName().equals(curGZC)) {
                    nodes.add(new Node(curId++, curgzcid, obj.getEmployeeName(), "javascript:employeeTree('" + obj.getEmployeeName() + "');"));
                } else {
                    // 添加部门
                    curGZC = obj.getDepartmentName();
                    curgzcid = curId++;
                    nodes.add(new Node(curgzcid, curxuid, obj.getDepartmentName(), ""));

                    // 添加人
                    nodes.add(new Node(curId++, curgzcid, obj.getEmployeeName(), "javascript:employeeTree('" + obj.getEmployeeName() + "');"));
                }
            } else {
                // 添加学院
                curXY = obj.getAcademiaUnitName();
                curxuid = curId++;
                nodes.add(new Node(curxuid, 0, obj.getAcademiaUnitName(), ""));

                // 添加部门
                curgzcid = curId++;
                curGZC = obj.getDepartmentName();
                nodes.add(new Node(curgzcid, curxuid, obj.getDepartmentName(), ""));

                // 添加学生
                nodes.add(new Node(curId++, curgzcid, obj.getEmployeeName(), "javascript:employeeTree('" + obj.getEmployeeName() + "');"));
            }
        }
        return nodes;
    }

    @Override
    public List<Employee> searchEmployeeList(Class glazz, Object search) {
        return employeeDao.searchEmployeeList(glazz, search);
    }


    /**
     * 导出教职工列表
     *
     * @param employeeList
     * @param outputStream
     */
    @Override
    public void exportExcel(List<Employee> employeeList, ServletOutputStream outputStream) {

        try {
            //1、创建工作簿
            HSSFWorkbook workbook = new HSSFWorkbook();
            //1.1、创建合并单元格对象
            CellRangeAddress cellRangeAddress = new CellRangeAddress(0, 0, 0, 11);//起始行号，结束行号，起始列号，结束列号

            //1.2、头标题样式
            HSSFCellStyle style1 = createCellStyle(workbook, (short) 16);

            //1.3、列标题样式
            HSSFCellStyle style2 = createCellStyle(workbook, (short) 13);

            //2、创建工作表
            HSSFSheet sheet = workbook.createSheet("教职工列表");

            //2.1、加载合并单元格对象
            sheet.addMergedRegion(cellRangeAddress);

            //设置默认列宽
            sheet.setDefaultColumnWidth(25);

            //3、创建行
            //3.1、创建头标题行；并且设置头标题
            HSSFRow row1 = sheet.createRow(0);
            HSSFCell cell1 = row1.createCell(0);
            //加载单元格样式
            cell1.setCellStyle(style1);
            cell1.setCellValue("教职工列表");

            //3.2、创建列标题行；并且设置列标题
            HSSFRow row2 = sheet.createRow(1);
            String[] titles = {"工号", "姓名", "学院", "部门", "职称", "学位", "政治面貌", "现任职务", "联系电话", "QQ", "电子邮箱", "备注"};

            for (int i = 0; i < titles.length; i++) {
                HSSFCell cell2 = row2.createCell(i);
                //加载单元格样式
                cell2.setCellStyle(style2);
                cell2.setCellValue(titles[i]);
            }

            //4、操作单元格；将用户列表写入excel
            if (employeeList != null) {
                for (int j = 0; j < employeeList.size(); j++) {
                    HSSFRow row = sheet.createRow(j + 2);
                    HSSFCell cell11 = row.createCell(0);
                    cell11.setCellValue(employeeList.get(j).getEmployeeId());
                    HSSFCell cell12 = row.createCell(1);
                    cell12.setCellValue(employeeList.get(j).getEmployeeName());
                    HSSFCell cell13 = row.createCell(2);
                    cell13.setCellValue(employeeList.get(j).getUnitName());
                    HSSFCell cell14 = row.createCell(3);
                    cell14.setCellValue(employeeList.get(j).getDepartmentName());
                    HSSFCell cell15 = row.createCell(4);
                    cell15.setCellValue(employeeList.get(j).getJopTileName());
                    HSSFCell cell16 = row.createCell(5);
                    cell16.setCellValue(employeeList.get(j).getFulltimeDegree());
                    HSSFCell cell17 = row.createCell(6);
                    cell17.setCellValue(employeeList.get(j).getPoliticalLandscape());
                    HSSFCell cell18 = row.createCell(7);
                    cell18.setCellValue(employeeList.get(j).getNowPost());
                    HSSFCell cell19 = row.createCell(8);
                    cell19.setCellValue(employeeList.get(j).getOfficePhone());
                    HSSFCell cell110 = row.createCell(9);
                    cell110.setCellValue(employeeList.get(j).getQQ());
                    HSSFCell cell111 = row.createCell(10);
                    cell111.setCellValue(employeeList.get(j).geteMail());
                    HSSFCell cell112 = row.createCell(11);
                    cell112.setCellValue(employeeList.get(j).getRemark());
                }
            }
            //5、输出
            workbook.write(outputStream);
            workbook.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public String getUnitByName(String name) {
       return employeeDao.getUnitByName(name);
    }


    /**
     * 创建单元格样式
     *
     * @param workbook 工作簿
     * @param fontSize 字体大小
     * @return 单元格样式
     */
    private static HSSFCellStyle createCellStyle(HSSFWorkbook workbook, short fontSize) {
        HSSFCellStyle style = workbook.createCellStyle();
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);//水平居中
        style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);//垂直居中
        //创建字体
        HSSFFont font = workbook.createFont();
        font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);//加粗字体
        font.setFontHeightInPoints(fontSize);
        //加载字体
        style.setFont(font);
        return style;
    }
}


