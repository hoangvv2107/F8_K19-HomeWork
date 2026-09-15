-- DROP TABLE IF EXISTS customer;
CREATE TABLE customer(
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INT,
    address TEXT,
    created_at TIMESTAMPTZ DEFAULT now(),
    created_by INT,
    modified_at TIMESTAMPTZ,
    modified_by INT,
    deleted_at TIMESTAMPTZ,
    deleted_by INT,
    active BOOLEAN DEFAULT true
);
INSERT INTO customer(name, age, address, active)
VALUES
    ('Nguyễn Văn An', 25, 'Hà Nội', true),
    ('Trần Thị Bình', 32, 'Hồ Chí Minh', true),
    ('Lê Hoàng Cường', 45, 'Đà Nẵng', false),
    ('Phạm Thu Dung', 28, 'Hải Phòng', true),
    ('Hoàng Hữu Minh', 50, 'Cần Thơ', true),
    ('Vũ Thị Lan', 22, 'Hà Nội', false),
    ('Đặng Thái Sơn', 35, 'Đồng Nai', true),
    ('Bùi Ngọc Yến', 29, 'Bình Dương', true),
    ('Đỗ Văn Thành', 41, 'Hồ Chí Minh', false),
    ('Hồ Thu Thủy', 26, 'Khánh Hòa', true),
    ('Ngô Trí Dũng', 38, 'Hà Nội', true),
    ('Lý Tấn Phát', 31, 'Bà Rịa - Vũng Tàu', true),
    ('Trương Hải Yến', 24, 'Đà Nẵng', false),
    ('Phan Quang Lộc', 55, 'Thừa Thiên Huế', true),
    ('Vương Đình Toàn', 27, 'Hà Nội', true);

-- TRUNCATE TABLE customer;

SELECT * FROM customer;
SELECT c.* FROM customer c WHERE c.active = true;

SELECT c.* FROM customer c WHERE c.age > 30;

SELECT c.* FROM customer c WHERE c.address = 'Hà Nội';

SELECT c.* FROM customer c WHERE c.name LIKE '%An%';

ALTER TABLE customer ADD COLUMN email TEXT;
ALTER TABLE customer ADD COLUMN phone TEXT;
ALTER TABLE customer ADD COLUMN gender TEXT;
UPDATE customer SET email = 'nguyenvanan@gmail.com', phone = '0981000001', gender = 'Nam' WHERE id = 1;
UPDATE customer SET email = 'tranthibinh@gmail.com', phone = '0981000002', gender = 'Nữ' WHERE id = 2;
UPDATE customer SET email = 'lehoangcuong@gmail.com', phone = '0981000003', gender = 'Nam' WHERE id = 3;
UPDATE customer SET email = 'phamthudung@gmail.com', phone = '0981000004', gender = 'Nữ' WHERE id = 4;
UPDATE customer SET email = 'hoanghuuminh@gmail.com', phone = '0981000005', gender = 'Nam' WHERE id = 5;
UPDATE customer SET email = 'vuthilan@gmail.com', phone = '0981000006', gender = 'Nữ' WHERE id = 6;
UPDATE customer SET email = 'dangthaison@gmail.com', phone = '0981000007', gender = 'Nam' WHERE id = 7;
UPDATE customer SET email = 'buingocyen@gmail.com', phone = '0981000008', gender = 'Nữ' WHERE id = 8;
UPDATE customer SET email = 'dovanthanh@gmail.com', phone = '0981000009', gender = 'Nam' WHERE id = 9;
UPDATE customer SET email = 'hothuthuy@gmail.com', phone = '0981000010', gender = 'Nữ' WHERE id = 10;
UPDATE customer SET email = 'ngotridung@gmail.com', phone = '0981000011', gender = 'Nam' WHERE id = 11;
UPDATE customer SET email = 'lytanphat@gmail.com', phone = '0981000012', gender = 'Nam' WHERE id = 12;
UPDATE customer SET email = 'truonghaiyen@gmail.com', phone = '0981000013', gender = 'Nữ' WHERE id = 13;
UPDATE customer SET email = 'phanquangloc@gmail.com', phone = '0981000014', gender = 'Nam' WHERE id = 14;
UPDATE customer SET email = 'vuongdinhtoan@gmail.com', phone = '0981000015', gender = 'Nam' WHERE id = 15;

UPDATE customer SET email = 'Annv@gmail.com', modified_at = now(),modified_by = 1  WHERE id = 1;
UPDATE customer SET phone = '0888888888', modified_at = now(),modified_by = 3  WHERE id = 8;