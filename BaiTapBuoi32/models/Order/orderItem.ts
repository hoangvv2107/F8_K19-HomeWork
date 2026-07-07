import { Product } from "../Product/product";
import { OrderItemI } from "./type";

export class OrderItem implements OrderItemI {
  private product: Product;
  private quantity: number;
  private price: number;
  constructor(product: Product, quantity: number, price: number) {
    this.product = product;
    this.quantity = quantity;
    this.price = price;
  }
  getTotal(): number {
    return this.quantity * this.price;
  }
  getProduct(): Product {
    return this.product;
  }
  getPrice(): number {
    return this.price;
  }
  getQuantity(): number {
    return this.quantity;
  }
}
