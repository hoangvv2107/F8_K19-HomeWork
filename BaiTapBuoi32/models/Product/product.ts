import { ProductI } from "./type";
import { v7 } from "uuid";
export class Product implements ProductI {
  private id: string;
  private name: string;
  private price: number;
  private stock: number;
  constructor(name: string, price: number, stock: number) {
    this.id = v7().toString();
    this.name = name;
    this.price = price;
    this.stock = stock;
  }
  increaseStock(quantity: number): void {
    this.stock += quantity;
  }
  decreaseStock(quantity: number): void {
    this.stock -= quantity;
  }
  toString(): string {
    return `{
        id: ${this.id},
        name: ${this.name},
        price: ${this.price},
        stock: ${this.stock}
    }`;
  }
  getId(): string {
    return this.id;
  }
  getName(): string {
    return this.name;
  }
  getPrice(): number {
    return this.price;
  }
  getStock(): number {
    return this.stock;
  }
  setName(name: string): void {
    this.name = name;
  }
  setPrice(price: number): void {
    this.price = price;
  }
  setStock(stock: number): void {
    this.stock = stock;
  }
}
