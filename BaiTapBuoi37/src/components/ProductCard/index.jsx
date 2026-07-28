import { Link } from "react-router";
import "./productCard.css";
const ProductCard = ({ product, onClickAddToCart }) => {
  return (
    <div className="product-card">
      <div className="product-image">
        <Link to={"/products/" + product.id}>
          <img src={product.image} alt={product.title} />
        </Link>
      </div>

      <div className="product-info">
        <div className="product-category">{product.category}</div>

        <h3>
          <Link to={"/products/" + product.id}>{product.title}</Link>
        </h3>

        <p className="description">{product.description}</p>

        <div className="product-rating">
          ⭐ {product.rating.rate} ({product.rating.count})
        </div>

        <div className="product-bottom">
          <strong>${product.price}</strong>

          <button onClick={() => onClickAddToCart(product.id)}>
            Add to cart
          </button>
        </div>
      </div>
    </div>
  );
};
export default ProductCard;
