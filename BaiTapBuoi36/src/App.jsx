import { useState } from "react";
import "./App.css";
import { products, categories } from "./products.js";
import { v7 as uuidv7 } from "uuid";

function App() {
  const productsMap = {};
  products.forEach((product) => {
    if (!productsMap[product.category]) {
      productsMap[product.category] = [];
    }
    productsMap[product.category].push(product);
  });
  const [category, setCategory] = useState(categories[0].key);
  const categoriesBtn = categories.map((c) => {
    const classN = c.key === category ? "category-btn active" : "category-btn";
    return (
      <button className={classN} key={c.key} onClick={() => setCategory(c.key)}>
        <h2>{c.label}</h2>
      </button>
    );
  });
  const BADGE_CONFIG = {
    "Hàng đặt trước": "badge-preorder",
    "Hàng mới về": "badge-new",
  };
  const allProductCard = productsMap[category].map((product) => {
    const clN = "product-badge " + BADGE_CONFIG[product.badge];
    return (
      <div className="product-card">
        <a href="#!" className="product-card-upper">
          <img src={product.image} alt="" />
          <h3 className="name-product">{product.name}</h3>
          {product.badge && <div className={clN}>{product.badge}</div>}
          <div className="product-price">
            
          </div>
        </a>
        <div className="product-card-lower"></div>
      </div>
    );
  });
  return (
    <>
      <div className="category-box">{categoriesBtn}</div>
      <div className="main-content">{allProductCard}</div>
    </>
  );
}

export default App;
