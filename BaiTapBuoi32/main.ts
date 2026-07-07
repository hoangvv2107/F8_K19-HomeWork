import { Customer } from "./models/Customer/customer";
import { CustomerService } from "./services/customerService";
import { Product } from "./models/Product/product";
import { ProductService } from "./services/productService";
import { OrderItem } from "./models/Order/orderItem";
import { Order } from "./models/Order/order";

const ip12 = new Product("ip12", 10000000, 40);
const ip13 = new Product("ip13", 13000000, 4);
const ip14 = new Product("ip12", 15000000, 0);

const products = new ProductService();
products.addProduct(ip12);
products.addProduct(ip13);
products.addProduct(ip14);
// products.printProducts();

products.deleteProduct(ip12.getId());
products.updateProduct(ip13.getId(), { name: "ip15" });
// products.printProducts();

const customer1 = new Customer("Hoang", "099999999", "Thai Binh");
const customer2 = new Customer("Huy", "0111111111", "Thai Binh");
const customer3 = new Customer("Nam", "0888888888", "Thai Binh");
const customers = new CustomerService();
customers.addCustomer(customer1);
customers.addCustomer(customer2);
customers.addCustomer(customer3);
// customers.printCustomers();

const orderItem1 = new OrderItem(ip12, 1, ip12.getPrice());
const orderItem2 = new OrderItem(ip14, 2, ip14.getPrice());
const orderItem3 = new OrderItem(ip13, 5, ip13.getPrice());

const order = new Order(customer1);
order.addItem(orderItem1);
order.addItem(orderItem2);
order.addItem(orderItem3);
order.printInvoice();
