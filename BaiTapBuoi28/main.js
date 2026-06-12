// ==========================================
// CẤU HÌNH API URLs (Sử dụng DummyJSON)
// ==========================================
const API_LOGIN = 'https://dummyjson.com/auth/login';
const API_PROFILE = 'https://dummyjson.com/auth/me'; 
const API_REFRESH = 'https://dummyjson.com/auth/refresh';

// ==========================================
// CÁC ELEMENT DOM
// ==========================================
const loginContainer = document.getElementById('login-container');
const profileContainer = document.getElementById('profile-container');
const loginForm = document.getElementById('login-form');
const loginError = document.getElementById('login-error');
const profileData = document.getElementById('profile-data');
const logoutBtn = document.getElementById('logout-btn');

// ==========================================
// LUỒNG 1: XỬ LÝ ĐĂNG NHẬP
// Tài khoản test: emilys / emilyspass
// ==========================================
loginForm.addEventListener('submit', async (e) => {
    e.preventDefault();
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;

    try {
        const response = await fetch(API_LOGIN, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ 
                username: username, 
                password: password,
                // MẸO: Đặt token hết hạn sau 1 phút để dễ dàng test luồng Refresh Token
                expiresInMins: 1 
            })
        });

        if (!response.ok) {
            throw new Error('Sai tài khoản hoặc mật khẩu!');
        }

        const data = await response.json();

        // Lưu Token vào LocalStorage
        localStorage.setItem('accessToken', data.accessToken);
        localStorage.setItem('refreshToken', data.refreshToken);

        // Chuyển hướng sang trang Profile
        redirectToProfile();

    } catch (error) {
        loginError.innerText = error.message;
    }
});

function redirectToProfile() {
    loginContainer.style.display = 'none';
    profileContainer.style.display = 'block';
    loadProfileData();
}

// ==========================================
// LUỒNG 2: FETCH KÈM TOKEN VÀ TỰ ĐỘNG REFRESH
// ==========================================
async function fetchWithAuth(url, options = {}) {
    let accessToken = localStorage.getItem('accessToken');

    // Gắn Access Token vào Header
    options.headers = {
        ...options.headers,
        'Authorization': `Bearer ${accessToken}`
    };

    // Gọi API lần 1
    let response = await fetch(url, options);

    // Nếu API trả về 401 (Unauthorized - Token đã hết hạn)
    if (response.status === 401) {
        console.warn("Access Token hết hạn. Bắt đầu luồng Refresh Token...");
        
        const refreshToken = localStorage.getItem('refreshToken');
        
        if (!refreshToken) {
            handleLogout();
            throw new Error("Không tìm thấy Refresh Token. Vui lòng đăng nhập lại.");
        }

        // Gọi API Refresh Token
        const refreshResponse = await fetch(API_REFRESH, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ 
                refreshToken: refreshToken,
                expiresInMins: 1 // Token mới cũng chỉ sống 1 phút để test tiếp
            })
        });

        if (refreshResponse.ok) {
            const refreshData = await refreshResponse.json();
            console.log("Đã lấy Access Token mới thành công!");

            // Cập nhật Token mới vào LocalStorage
            localStorage.setItem('accessToken', refreshData.accessToken);
            if(refreshData.refreshToken) {
                 localStorage.setItem('refreshToken', refreshData.refreshToken);
            }

            // Gọi lại API ban đầu (lần 2) với Access Token mới
            options.headers['Authorization'] = `Bearer ${refreshData.accessToken}`;
            response = await fetch(url, options); 
        } else {
            // Nếu Refresh Token cũng hết hạn hoặc lỗi
            handleLogout();
            throw new Error("Phiên đăng nhập đã hết hạn hoàn toàn.");
        }
    }

    return response;
}

// ==========================================
// LUỒNG 3: LẤY VÀ HIỂN THỊ DỮ LIỆU PROFILE
// ==========================================
async function loadProfileData() {
    try {
        // Sử dụng hàm fetchWithAuth tự tạo thay vì fetch thông thường
        const response = await fetchWithAuth(API_PROFILE, { method: 'GET' });
        
        if (response.ok) {
            const data = await response.json();
            
            // Hiển thị dữ liệu trả về từ DummyJSON
            profileData.innerHTML = `
                <img src="${data.image}" alt="Avatar" style="width: 80px; border-radius: 50%; box-shadow: 0 2px 5px rgba(0,0,0,0.2); margin-bottom: 10px;">
                <p><strong>Xin chào:</strong> ${data.firstName} ${data.lastName}</p>
                <p><strong>Email:</strong> ${data.email}</p>
                <p><strong>Chức vụ:</strong> ${data.company.title} tại ${data.company.name}</p>
                <p style="color: green; margin-top: 15px;">✔ Đã lấy dữ liệu thành công!</p>
            `;
        } else {
            profileData.innerHTML = `<p style="color: red;">Lỗi khi tải dữ liệu người dùng.</p>`;
        }
    } catch (error) {
        console.error(error);
        profileData.innerHTML = `<p style="color: red;">Đã xảy ra lỗi: ${error.message}</p>`;
    }
}

// ==========================================
// XỬ LÝ ĐĂNG XUẤT VÀ KHỞI TẠO
// ==========================================
function handleLogout() {
    localStorage.removeItem('accessToken');
    localStorage.removeItem('refreshToken');
    loginContainer.style.display = 'block';
    profileContainer.style.display = 'none';
    loginForm.reset();
    loginError.innerText = '';
}

logoutBtn.addEventListener('click', handleLogout);

// Kiểm tra trạng thái khi vừa mở trang
window.onload = () => {
    if (localStorage.getItem('accessToken')) {
        // Nếu đã có token thì vào thẳng trang profile
        redirectToProfile();
    }
};