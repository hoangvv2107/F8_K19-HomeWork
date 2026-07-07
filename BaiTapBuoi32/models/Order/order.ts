import { v7 } from "uuid";
import { Customer } from "../Customer/customer";
import { OrderItem } from "./orderItem";
import { OrderI, OrderItemI } from "./type";

export type OrderStatus = "NEW" | "PAID" | "CANCELLED";

export class Order implements OrderI {
  private id: string;
  private customer: Customer;
  private items: OrderItem[] = [];
  private createdAt: Date;
  private status: OrderStatus;

  constructor(customer: Customer, status: OrderStatus) {
    this.id = v7().toString();
    this.customer = customer;
    this.createdAt = new Date();
    this.status = status;
  }
  addItem(item: OrderItem): void {
    this.items.push(item);
  }
  removeItem(productId: string): void {
    if (this.items.length < 1) {
      console.log("Hien chua co san pham nao trong order");
      return
    }
    
  }
  calculateTotal(): number {
    throw new Error("Method not implemented.");
  }
  printInvoice(): void {
    throw new Error("Method not implemented.");
  }
}
