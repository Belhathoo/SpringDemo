package com.employees.resource;

import com.employees.model.Employee;
import com.employees.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping({"/", "/hello"})
public class HelloController {
    private final EmployeeService employeeService;

    public HelloController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }


    @GetMapping
    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
        model.addAttribute("name", name);
        return "hello";
    }

    @GetMapping("/employeelist")
    public String viewPersonList(Model model) {
        model.addAttribute("employees", employeeService.findAllEmployees());
        return "employeelist";
    }
    @GetMapping("/signupform")
    public String viewForm(Model model) {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "signupform";
    }

    @PostMapping("/register")
    public String signUser(@ModelAttribute("employee") Employee employee)  {
        employeeService.addEmployee(employee);
        return "redirect:employeelist";
    }

    @GetMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable Long id) {
        employeeService.deleteEmployee(id);
        return "redirect:/employeelist";
    }
}
