import { useEffect, useState } from "react";
import "./products.css";
import api from "../../plugins/axios";
import TestComponent from "../../components/testComponent";
import ProductCard from "../../components/ProductCard";
import HeaderBar from "../../components/HeaderBar";
function Products() {
  const [products, setProducts] = useState([]);

  const getProducts = async () => {
    const { data } = await api.get("products");
    setProducts(data);
  };

  useEffect(() => {
    getProducts();
  }, []);

  const [cart, setCart] = useState(() => {
    const savedCart = localStorage.getItem("cart");
    return savedCart ? JSON.parse(savedCart) : [];
  });
  useEffect(() => {
    localStorage.setItem("cart", JSON.stringify(cart));
  }, [cart]);

  const addToCart = (productId) => {
    if (!cart.includes(productId)) {
      setCart([...cart, productId]);
      console.log(cart);
    }
  };

  return (
    <>
      <HeaderBar numCart={cart.length} />

      <main className="container">
        <h1>Products</h1>

        <div className="product-grid">
          {products.map((p) => (
            <ProductCard key={p.id} product={p} onClickAddToCart={addToCart} />
          ))}
        </div>
      </main>
    </>
  );
}

export default Products;
