import { useState } from "react";
import "./App.css";
import { products, categories } from "./products.js";

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

  const [listLiked, setListLiked] = useState([]);
  const handleToggleLike = (productId) => {
    if (listLiked.includes(productId)) {
      setListLiked(listLiked.filter((liked) => liked !== productId));
    } else {
      setListLiked([...listLiked, productId]);
    }
  };
  const allProductCard = productsMap[category].map((product) => {
    const classBadge = BADGE_CONFIG[product.badge]
      ? "product-badge " + BADGE_CONFIG[product.badge]
      : "product-badge ";
    let hasOther = false;
    const promo = product.promotions.map((pr, indexPromo) => {
      if (pr.type === "other") hasOther = true;
      return (
        <div className={"promo-item promo-" + pr.type} key={indexPromo}>
          {pr.text}
        </div>
      );
    });
    if (!hasOther)
      promo.push(
        <div className="promo-item promo-other" key={promo.length}>
          {product.installmentDetail}
        </div>,
      );
    return (
      <div className="product-card" key={product.id}>
        <a href="#!" className="product-card-upper">
          {product.discountPercent && (
            <div className="badge-discount">
              giảm {product.discountPercent}%
            </div>
          )}
          <div className="badge-installment">Trả góp 0%</div>
          <img src={product.image} alt="" />
          <h3 className="name-product">{product.name}</h3>
          {product.badge && <div className={classBadge}>{product.badge}</div>}
          <div className="product-price">
            {product.salePrice && (
              <div className="sale-price">
                {product.salePrice.toLocaleString("vi")}
              </div>
            )}
            {product.originalPrice && (
              <div className="original-price">
                {product.originalPrice.toLocaleString("vi")}
              </div>
            )}
          </div>

          <div className="promotions-box">{promo}</div>
        </a>
        <div className="product-card-lower">
          {product.badge === "Hàng đặt trước" && !product.rating ? null : (
            <div className="product-card-lower-left">
              {product.badge === "Hàng đặt trước" ||
              !product.shippingTime ? null : (
                <div className="shipping-badge">
                  <i className="fa-solid fa-truck-fast"></i>
                  <span>{product.shippingTime}</span>
                </div>
              )}
              {product.rating && (
                <div className="product-rating">
                  <i className="fa-solid fa-star"></i>
                  <span>{product.rating}</span>
                </div>
              )}
            </div>
          )}
          <button
            className="btn-like"
            onClick={() => {
              handleToggleLike(product.id);
            }}
          >
            <i
              className={
                listLiked.includes(product.id)
                  ? "fa-solid fa-heart"
                  : "fa-regular fa-heart"
              }
            ></i>
          </button>
        </div>
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
