// Create a list of total revenue from orders.
const getQuantitiesSold = (orders) => {
  const ordersRevenue = {};
  for (let i = 0; i < orders.length; i++) {
    for (let j = 0; j < orders[i].items.length; j++) {
      let item = orders[i].items[j];

      if (!ordersRevenue[item.productId]) ordersRevenue[item.productId] = 0;
      ordersRevenue[item.productId] += item.quantity;
    }
  }
  return ordersRevenue;
};

// Create a list of total revenue for each product.
const calculateProductsRevenue = (products, ordersRevenue) => {
  const productsRevenue = {};
  for (let i = 0; i < products.length; i++) {
    productsRevenue[products[i].name] =
      ordersRevenue[products[i].id] * products[i].price || 0;
  }
  return productsRevenue;
};

// Get max value in object
const getTopItem = (productsRevenue) => {
  let maxProduct = "";
  let maxRevenue = 0;

  for (let product in productsRevenue) {
    let priceNow = productsRevenue[product];

    if (priceNow > maxRevenue) {
      maxProduct = product;
      maxRevenue = priceNow;
    }
  }
  return { [maxProduct]: maxRevenue };
};
// Find Highest Revenue Product
const findHighestRevenueProduct = (products, orders) => {
  const ordersRevenue = getQuantitiesSold(orders);
  const productsRevenue = calculateProductsRevenue(products, ordersRevenue);
  const topItem = getTopItem(productsRevenue);
  return topItem;
};

const products = [
  { id: 1, name: "iPhone", price: 2000 },
  { id: 2, name: "Samsung", price: 1500 },
  { id: 3, name: "Xiaomi", price: 1000 },
  { id: 4, name: "Oppo", price: 1200 },
];
const orders = [
  {
    id: 1,
    items: [
      { productId: 1, quantity: 2 },
      { productId: 2, quantity: 1 },
    ],
  },
  {
    id: 2,
    items: [
      { productId: 1, quantity: 1 },
      { productId: 3, quantity: 3 },
    ],
  },
  {
    id: 3,
    items: [
      { productId: 2, quantity: 2 },
      { productId: 4, quantity: 1 },
    ],
  },
];

console.log(findHighestRevenueProduct(products, orders));
