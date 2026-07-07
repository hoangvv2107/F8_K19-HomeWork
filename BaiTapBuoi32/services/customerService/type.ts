import { Customer } from "../../models/Customer/customer";

export type DataUpdateCustomer = {
  name?: string;
  phone?: string;
  address?: string;
};

export interface CustomerServiceI {
  addCustomer(customer: Customer): void;
  updateCustomer(id: string, data: DataUpdateCustomer): void;
  deleteCustomer(id: string): void;
  findById(id: string): Customer | undefined;
  findByPhone(phone: string): Customer[];
  getAllCustomers(): Customer[];
  printCustomers(): void;
}
