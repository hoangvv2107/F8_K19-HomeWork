import { NavLink } from "react-router";
const HeaderBar = ({ numCart }) => {
  return (
    <header className="header">
      <div className="header-inner">
        <div className="logo">
          Shop<span>.</span>
        </div>

        <nav className="nav">
          <NavLink to="/">Home</NavLink>
          <NavLink to="/products">Products</NavLink>
          <NavLink to="#">Categories</NavLink>
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
