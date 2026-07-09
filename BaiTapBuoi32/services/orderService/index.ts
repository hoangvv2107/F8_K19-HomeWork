import { Customer } from "../../models/Customer/customer";
import { Order } from "../../models/Order/order";
import { OrderItem } from "../../models/Order/orderItem";
import { ProductService } from "../productService";
import { OrderServiceI } from "./type";

export class OrderService implements OrderServiceI {
  private orders: Order[] = [];
  private productService: ProductService;
  constructor(productService: ProductService) {
    this.productService = productService;
  }

  createOrder(customer: Customer): string {
    const newOrder = new Order(customer);
    this.orders.push(newOrder);
    console.log(`Da tao don hang thanh cong voi ID: ${newOrder.getId()}`);
    return newOrder.getId();
  }
  addProduct(orderId: string, productId: string, quantity: number): void {
    const orderFind = this.findOrder(orderId);
    if (!orderFind) {
      console.log("Khong tim thay Order");
      return;
    }
    if (orderFind.getStatus() !== "NEW") {
      console.log("Lỗi: Đơn hàng đã chốt hoặc hủy, không thể thêm sản phẩm!");
      return;
    }
    const productFind = this.productService.findById(productId);
    if (!productFind) {
      console.log("Khong tim thay Product");
      return;
    }

    if (productFind.getStock() < quantity) {
      console.log("So luong yeu cau cua ban > so luong con lai cua kho hang!");
      return;
    }
    const orderItemNew = new OrderItem(productFind, quantity);
    orderFind.addItem(orderItemNew);
    console.log("Da them san pham thanh cong");
  }
  removeProduct(orderId: string, productId: string): void {
    const orderFind = this.findOrder(orderId);
    if (!orderFind) {
      console.log("Khong tim thay Order");
      return;
    }
    if (orderFind.getStatus() !== "NEW") {
      console.log("Lỗi: Đơn hàng đã chốt hoặc hủy, không thể xoa sản phẩm!");
      return;
    }
    orderFind.removeItem(productId);
  }
  checkout(orderId: string): void {
    const orderFind = this.findOrder(orderId);
    if (!orderFind) {
      console.log("Khong tim thay Order");
      return;
    }
    if (orderFind.getStatus() !== "NEW") {
      console.log("Lỗi: Đơn hàng đã chốt hoặc hủy");
      return;
    }
    // decreaseStock
    orderFind.getItems().forEach((orderItem) => {
      const productQuantity = orderItem.getQuantity();
      orderItem.getProduct().decreaseStock(productQuantity);
    });
    orderFind.setStatus("PAID");
    orderFind.printInvoice();
  }
  cancelOrder(orderId: string): void {
    const orderFind = this.findOrder(orderId);
    if (!orderFind) {
      console.log("Khong tim thay Order");
      return;
    }
    // If the order has been paid for, return the product to the warehouse.
    if (orderFind.getStatus() === "PAID") {
      orderFind.getItems().forEach((orderItem) => {
        orderItem.getProduct().increaseStock(orderItem.getQuantity());
      });
    }
    orderFind.setStatus("CANCELLED");
  }
  findOrder(orderId: string): Order | undefined {
    return this.orders.find((order) => {
      return order.getId() === orderId;
    });
  }
  getOrders(): Order[] {
    return [...this.orders];
  }
  printOrders(): void {
    if (this.orders.length < 1) {
      console.log("Hien Khong co Order nao!");
      return;
    }

    console.log("Thong tin cac don hang: ");
    this.orders.forEach((order, indexOrder) => {
      console.log(`Don hang so ${indexOrder + 1}`);
      order.printInvoice();
      console.log("-----------------");
    });
  }
}
