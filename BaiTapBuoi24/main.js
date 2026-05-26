const getProducts = async () => {
  const response = await fetch("https://fakestoreapi.com/products");
  const data = await response.json();
  return data;
};
const cart = [];
const main = async () => {
  const productsData = await getProducts();
  let productsList = document.getElementById("products-list");
  const productsCard = productsData.map((product) => {
    return `
        <div class="product-card">
              <div class="upper">
                <p class="tag">${product.category}</p>
                <a href="#!">
                  <img
                    src="${product.image}"
                    alt=""
                    class="img"
                  />
                </a>
              </div>
              <div class="content">
                <h3 class="title">
                  <a href="#!">
                    ${product.title}
                  </a>
                </h3>
                <div class="rating">
                  <i class="fa-solid fa-star star"></i>
                  <span class="rate">${product.rating.rate}</span>
                  <span class="count">(${product.rating.count})</span>
                </div>
                <div class="buy">
                  <span class="price">$${product.price}</span>
                  <button class="btn-buy" title="them vao gio hang">
                    <i class="fa-solid fa-cart-shopping"></i>
                  </button>
                </div>
              </div>
            </div>
    
    `;
  });
  productsList.innerHTML = productsCard.join("");

  const productsMap = {};
  for (const product of productsData) {
    const productCategory = product.category;
    if (!productsMap[productCategory]) productsMap[productCategory] = [];
    productsMap[productCategory].push(product);
  }
  const productFilter = document.getElementById("product-filter");
  for (const product in productsMap) {
    productFilter.innerHTML += `<li class="product-menu-item">
              <a href="#!" class="product-menu-link">${product}</a>
              <div class="product-quantity">${productsMap[product].length}</div>
            </li>`;
  }

  const buyButton = document.querySelectorAll(".btn-buy");
  const cartBadge = document.getElementById("cart-badge");
  buyButton.forEach((button, index) => {
    button.onclick = () => {
      cart.push(productsData[index]);
      cartBadge.textContent = cart.length;
      cartBadge.style.display = "flex";
    };
  });
};
main();
