import { Customer } from "../../models/Customer/customer";
import { Order } from "../../models/Order/order";

export interface OrderServiceI {
  createOrder(customer: Customer): string;
  addProduct(orderId: string, productId: string, quantity: number): void;
  removeProduct(orderId: string, productId: string): void;
  checkout(orderId: string): void;
  cancelOrder(orderId: string): void;
  findOrder(orderId: string): Order | undefined;
  getOrders(): Order[];
  printOrders(): void;
}
