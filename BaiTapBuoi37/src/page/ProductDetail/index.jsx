import "./productDetail.css";
import HeaderBar from "../../components/HeaderBar";
import { useParams } from "react-router";
import api from "../../plugins/axios";
import { useEffect, useState } from "react";
import ProductCard from "../../components/ProductCard";
const ProductDetail = () => {
  const { id } = useParams();
  const [product, setProduct] = useState();
  const [relatedProducts, setRelatedProducts] = useState([]);
  const getProduct = async () => {
    const { data } = await api.get(`/products/${id}`);
    setProduct(data);
  };
  const getRelatedProducts = async () => {
    const { data } = await api.get(`/products?limit=6`);
    const filterData = data.filter((d) => d.id !== Number(id));
    setRelatedProducts(filterData);
  };
  useEffect(() => {
    getProduct();
    getRelatedProducts();
  }, [id]);
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
        {!product ? (
          <p>Không tìm thấy sản phẩm!</p>
        ) : (
          <>
            <div className="product-detail-wrapper">
              <div className="detail-image">
                <img src={product.image} alt={product.title} />
              </div>

              <div className="detail-info">
                <div className="detail-category">{product.category}</div>
                <h1 className="detail-title">{product.title}</h1>

                <div className="detail-rating">
                  ⭐ {product.rating?.rate}{" "}
                  <span>({product.rating?.count} đánh giá)</span>
                </div>

                <div className="detail-price">${product.price}</div>

                <p className="detail-description">{product.description}</p>

                <button
                  className="btn-add-large"
                  onClick={() => addToCart(product.id)}
                >
                  🛒 Thêm vào giỏ hàng
                </button>
              </div>
            </div>

            <hr className="divider" />

            <div className="related-section">
              <h2>Sản phẩm nổi bật</h2>
              <div className="product-grid">
                {relatedProducts.map((p) => (
                  <ProductCard
                    key={p.id}
                    product={p}
                    onClickAddToCart={addToCart}
                  />
                ))}
              </div>
            </div>
          </>
        )}
      </main>
    </>
  );
};
export default ProductDetail;
