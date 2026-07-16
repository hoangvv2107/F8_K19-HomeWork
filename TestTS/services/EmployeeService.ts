import { Employee } from "../Entities/Employee";

export class EmployeeService {
  private employees: Employee[] = [];
  create(employee: Omit<Employee, "id" | "receiveNoti">): Employee {
    const newEmployee = new Employee(employee.name);
    this.employees.push(newEmployee);
    return newEmployee;
  }
  findById(id: string): Employee | null {
    const employee = this.employees.find(
      (employeeCurr) => employeeCurr.id === id,
    );
    return employee || null;
  }

  updateById(id: string, data: Partial<Employee>): Employee | null {
    const employee = this.findById(id);
    if (!employee) return null;
    if (data.name !== undefined) employee.name = data.name;

    return employee;
  }
}
