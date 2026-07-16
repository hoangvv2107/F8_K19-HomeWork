import { v7 } from "uuid";

export class Employee {
  private _id = v7();
  constructor(private _name: string) {}
  receiveNoti(message: string): void {
    console.log(
      `[${this._id}] - [${this._name}] received notification: ${message}`,
    );
  }
  get name() {
    return this._name;
  }
  get id() {
    return this._id;
  }
  set name(newName) {
    this._name = newName;
  }
}
