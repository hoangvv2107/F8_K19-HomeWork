import { Customer } from "../../models/Customer/customer";
import { CustomerServiceI, DataUpdateCustomer } from "./type";

export class CustomerService implements CustomerServiceI {
  private customers: Customer[] = [];
  addCustomer(customer: Customer): void {
    this.customers.push(customer);
  }
  updateCustomer(id: string, data: DataUpdateCustomer): void {
    const customer = this.findById(id);
    if (!customer) {
      console.log("Khong tim thay khach hang!");
      return;
    }
    if (data.name !== undefined) customer.setName(data.name);
    if (data.phone !== undefined) customer.updatePhone(data.phone);
    if (data.address !== undefined) customer.updateAddress(data.address);
    console.log("Da update customer thanh cong!");
  }
  deleteCustomer(id: string): void {
    const customer = this.findById(id);
    if (!customer) {
      console.log("Khong tim thay khach hang!");
      return;
    }
    const customerIdx = this.customers.indexOf(customer);
    this.customers.splice(customerIdx, 1);
  }
  findById(id: string): Customer | undefined {
    return this.customers.find((customer) => {
      return customer.getId() === id;
    });
  }
  findByPhone(phone: string): Customer[] {
    return this.customers.filter((customer) => {
      return customer.getPhone().includes(phone.trim());
    });
  }
  getAllCustomers(): Customer[] {
    return this.customers;
  }
  printCustomers(): void {
    if (this.customers.length < 1) {
      console.log("Khong co khach hang nao!");
      return;
    }
    this.customers.forEach((customer) => {
      console.log(customer.toString());
    });
  }
}
