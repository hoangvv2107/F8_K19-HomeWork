import { v7 } from "uuid";

export class Customer {
  private _id: string = v7();
  constructor(
    private _name: string,
    private _tax: string,
    private _address: string,
  ) {}
  get id(): string {
    return this._id;
  }

  get name(): string {
    return this._name;
  }

  get tax(): string {
    return this._tax;
  }

  get address(): string {
    return this._address;
  }
  set name(newName: string) {
    this._name = newName;
  }

  set tax(newTax: string) {
    this._tax = newTax;
  }

  set address(newAddress: string) {
    this._address = newAddress;
  }
}
