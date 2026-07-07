import { Product } from "../../models/Product/product";
import { ProductServiceI, DataUpdateProduct } from "./type";

export class ProductService implements ProductServiceI {
  private products: Product[] = [];
  addProduct(product: Product): void {
    this.products.push(product);
  }
  updateProduct(id: string, data: DataUpdateProduct): void {
    const product = this.findById(id);
    if (!product) {
      console.log("Khong tim thay san pham");
      return;
    }
    if (data.name !== undefined) {
      product.setName(data.name);
    }
    if (data.price !== undefined) {
      product.setPrice(data.price);
    }
    if (data.stock !== undefined) {
      product.setStock(data.stock);
    }
    console.log("Da cap nhat thanh cong!");
  }
  deleteProduct(id: string): void {
    const product = this.findById(id);
    if (!product) {
      console.log("Khong tim thay san pham!");
      return;
    }
    const productIdx = this.products.indexOf(product);
    this.products.splice(productIdx, 1);
    console.log("Da xoa san pham thanh cong!");
  }
  findById(id: string): Product | undefined {
    return this.products.find((product) => {
      return product.getId() === id;
    });
  }
  findByName(keyword: string): Product[] {
    return this.products.filter((product) => {
      return product
        .getName()
        .toLowerCase()
        .trim()
        .includes(keyword.toLocaleLowerCase().trim());
    });
  }
  getAllProducts(): Product[] {
    return this.products;
  }
  printProducts(): void {
    if (this.products.length === 0) {
      console.log("Khong co san pham nao!");
      return;
    }

    this.products.forEach((product) => {
      console.log(product.toString());
    });
  }
}
