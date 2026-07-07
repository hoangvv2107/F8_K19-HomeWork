import { Product } from "../../models/Product/product";

export type DataUpdateProduct = {
  name?: string;
  price?: number;
  stock?: number;
};

export interface ProductServiceI {
  addProduct(product: Product): void;

  updateProduct(id: string, data: DataUpdateProduct): void;

  deleteProduct(id: string): void;

  findById(id: string): Product | undefined;

  findByName(keyword: string): Product[];

  getAllProducts(): Product[];

  printProducts(): void;
}
