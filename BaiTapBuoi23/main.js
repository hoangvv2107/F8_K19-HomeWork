const inputData = {
  meta: {
    invoiceNo: "WM-20260521-0001",
    saleDate: "2026/05/21",
    currency: "VND",
    paymentMethod: "Cash",
  },

  seller: {
    name: "WinMark 2 ba trung",
    address: "2 Ba trung - HN",
    phone: "012345678",
    representative: "Đại diện WinMark",
  },

  customer: {
    name: "Nguyen Van A",
    age: 20,
    address: "Ha Dong Ha noi",
  },

  items: [
    {
      no: 1,
      name: "Ao Thun",
      size: "XL",
      quantity: 1,
      price: 200000,
    },
    {
      no: 2,
      name: "Ao Thun",
      size: "XL",
      quantity: 1,
      price: 200000,
    },
  ],

  promotion: {
    description: "Khuyen mai 50% cho KH than thiet",
    discountPercent: 50,
  },
};
const addInfo = (id, data1, data2) => {
  const elementId = document.getElementById(id);
  elementId.textContent = inputData[data1][data2];
};
addInfo("inv-no", "meta", "invoiceNo");
addInfo("inv-date", "meta", "saleDate");
addInfo("seller-name", "seller", "name");
addInfo("seller-address", "seller", "address");
addInfo("seller-phone", "seller", "phone");
addInfo("customer-name", "customer", "name");
addInfo("customer-age", "customer", "age");
addInfo("customer-address", "customer", "address");

const itemsEl = document.getElementById("invoice-items");
const htmlContent = inputData.items.map((item) => {
  return `
  <tr>
    <td>${item.no}</td>
    <td>${item.name}</td>
    <td>${item.size}</td>
    <td>${item.quantity}</td>
    <td class="text-right">${item.price.toLocaleString('vi')}đ</td>
    <td class="text-right" style="font-weight:bold;">${(item.price * item.quantity).toLocaleString('vi')}đ</td>
  </tr>
  `;
});

itemsEl.innerHTML = htmlContent.join("");

const subTotal = document.getElementById("sub-total");
const calculateSubTotal = inputData.items.reduce((sum, item) => {
  return (sum += item.quantity * item.price);
}, 0);
subTotal.textContent = `${calculateSubTotal.toLocaleString('vi')} đ`;
addInfo("promo-desc", "promotion", "description");
const discountAmount = document.getElementById("discount-amount");
const calculateDiscountAmount =
  -calculateSubTotal * (inputData.promotion.discountPercent / 100);
discountAmount.textContent = `${calculateDiscountAmount.toLocaleString('vi')} đ`;

const grandTotal = document.getElementById("grand-total");

const calculateGrandTotal = calculateSubTotal + calculateDiscountAmount;
grandTotal.textContent = `${calculateGrandTotal.toLocaleString('vi')} đ`;
