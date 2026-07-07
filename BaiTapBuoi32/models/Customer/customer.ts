import { v7 } from "uuid";
import { CustomerI } from "./type";

export class Customer implements CustomerI {
  private id: string;
  private name: string;
  private phone: string;
  private address: string;

  constructor(name: string, phone: string, address: string) {
    this.id = v7().toString();
    this.name = name;
    this.phone = phone;
    this.address = address;
  }
  updatePhone(phone: string): void {
    this.phone = phone;
  }
  updateAddress(address: string): void {
    this.address = address;
  }
  toString(): string {
    return `Customer {
        id: ${this.id}
        name: ${this.name}
        phone: ${this.phone}
        address: ${this.address}
    }`;
  }
  getId(): string {
    return this.id;
  }
  getPhone(): string {
    return this.phone;
  }
  setName(name: string): void {
    this.name = name;
  }
}
