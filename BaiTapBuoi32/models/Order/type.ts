import { OrderItem } from "./orderItem";

export interface OrderItemI {
  getTotal(): number;
}

export interface OrderI {
  addItem(item: OrderItem): void;
  removeItem(productId: string): void;
  calculateTotal(): number;
  printInvoice(): void;
}
