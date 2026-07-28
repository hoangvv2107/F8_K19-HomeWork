import HeaderBar from "../../components/HeaderBar";

const Home = () => {
  const cartData = localStorage.getItem("cart");
  const cartCount = cartData ? JSON.parse(cartData).length : 0;
  return (
    <>
      <HeaderBar numCart={cartCount} />
      <p>Home</p>
    </>
  );
};

export default Home;
