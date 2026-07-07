import { Product } from "./models/Product/product";
import { ProductService } from "./services/productService";

const ip12 = new Product("ip12", 10000000, 40);
const ip13 = new Product("ip13", 13000000, 4);
const ip14 = new Product("ip12", 15000000, 0);

const products = new ProductService();
products.addProduct(ip12);
products.addProduct(ip13);
products.addProduct(ip14);
products.printProducts();

products.deleteProduct(ip12.getId());
products.updateProduct(ip13.getId(), { name: "ip15" });
products.printProducts();
