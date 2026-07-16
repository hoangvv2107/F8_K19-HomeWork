import { CustomerService } from "./services/CustomerService";
import { EmployeeService } from "./services/EmployeeService";
import { ProjectService } from "./services/ProjectService";

const customerService = new CustomerService();
const employeeService = new EmployeeService();
const projectService = new ProjectService(employeeService);

const customer1 = customerService.create({
  name: "Hoang",
  tax: "12345678",
  address: "Thai Binh",
});
console.log(customer1);

console.log(customerService.updateById(customer1.id, { address: "Ha Noi" }));
console.log(customerService);

const employee1 = employeeService.create({ name: "Huong" });
const employee2 = employeeService.create({ name: "Phuong" });
console.log(employeeService);

console.log(employeeService.findById(employee1.id));
console.log(employeeService.findById("123"));

const project1 = projectService.create({
  customerId: customer1.id,
  employeeId: employee1.id,
});
console.log(project1);

projectService.updateById(project1.id, { employeeId: employee2.id });
console.log(project1);

const customer2 = customerService.create({
  name: "Chi",
  tax: "11111111",
  address: "Ha Giang",
});
projectService.updateById(project1.id, { customerId: customer2.id });
console.log(project1);

console.log(customerService.updateById("1", { name: "Test" }));
console.log(employeeService.updateById("1", { name: "Test" }));
console.log(projectService.updateById("1", { customerId: "Test" }));

const project2 = projectService.create({
  customerId: customer1.id,
  employeeId: "123",
});
console.log(project2);
