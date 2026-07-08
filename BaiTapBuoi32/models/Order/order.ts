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

  constructor(customer: Customer) {
    this.id = v7().toString();
    this.customer = customer;
    this.createdAt = new Date();
    this.status = "NEW";
  }
  getId(): string {
    return this.id;
  }
  addItem(item: OrderItem): void {
    this.items.push(item);
  }
  getItems(): OrderItem[] {
    return this.items;
  }
  getCustomer(): Customer {
    return this.customer;
  }
  getCreatedAt(): Date {
    return this.createdAt;
  }
  setStatus(status: OrderStatus) {
    this.status = status;
  }
  getStatus(): OrderStatus {
    return this.status;
  }
  removeItem(productId: string): void {
    if (this.items.length < 1) {
      console.log("Hien chua co san pham nao trong order");
      return;
    }
    const itemRemove = this.items.find((item) => {
      return item.getProduct().getId().trim() === productId.trim();
    });
    if (!itemRemove) {
      console.log("Khong tim thay san pham");
      return;
    }
    const itemRemoveIdx = this.items.indexOf(itemRemove);
    this.items.splice(itemRemoveIdx, 1);
    console.log("Da xoa item thanh cong");
  }
  calculateTotal(): number {
    let sum = 0;
    this.items.forEach((item) => {
      sum += item.getTotal();
    });
    return sum;
  }
  printInvoice(): void {
    console.log("Hoa Don Cua Quy Khach:");
    console.log(`id: ${this.id}`);
    console.log(`customer: ${this.customer.toString()}`);
    console.log(`createdAt: ${this.createdAt}`);
    console.log(`status: ${this.status}`);
    if (this.items.length < 1) {
      console.log("Hien chua co san pham nao trong order");
      return;
    }
    console.log("Cac San Pham Cua Quy Khach Gom:");
    this.items.forEach((item, index) => {
      console.log(`Product ${index + 1}: ${item.getProduct().toString()}`);
      console.log(`Quantity: ${item.getQuantity()}`);
      console.log("============");
    });

    console.log(`Tong Hoa Don Cua Quy Khach La: ${this.calculateTotal()}`);
  }
}
