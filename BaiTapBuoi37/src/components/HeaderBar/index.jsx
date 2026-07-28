import { Link, Links } from "react-router";
const HeaderBar = ({ numCart }) => {
  return (
    <header className="header">
      <div className="header-inner">
        <div className="logo">
          Shop<span>.</span>
        </div>

        <nav className="nav">
          <Link to="/">Home</Link>
          <Link to="/products">Products</Link>
          <Link to="#">Categories</Link>
        </nav>

        <div className="cart">
          <button className="cart-button" onClick={() => console.log(cart)}>
            <span className="cart-icon">🛒</span>
            <span className="cart-text">Cart</span>
            <span className="cart-badge">{numCart}</span>
          </button>
        </div>
      </div>
    </header>
  );
};
export default HeaderBar;
