-- DROP TABLE IF EXISTS job_application,
-- job,
-- cv,
-- candidate,
-- company_address,
-- company,
-- ward,
-- province,
-- category CASCADE;

create table if not exists category (
    id bigserial primary key,
    category_id bigint,
    name text,
    created_at timestamptz default now(),
    created_by bigint,
    modified_at timestamptz,
    modified_by bigint,
    deleted_at timestamptz,
    deleted_by bigint,
    active bool default true
);

create table if not exists province (
    id bigserial primary key,
    name text,
    created_at timestamptz default now(),
    created_by bigint,
    modified_at timestamptz,
    modified_by bigint,
    deleted_at timestamptz,
    deleted_by bigint,
    active bool default true
);

create table if not exists ward (
    id bigserial primary key,
    province_id bigint,
    name text,
    created_at timestamptz default now(),
    created_by bigint,
    modified_at timestamptz,
    modified_by bigint,
    deleted_at timestamptz,
    deleted_by bigint,
    active bool default true
);

create table if not exists company (
    id bigserial primary key,
    tax text,
    name text,
    name_eng text,
    description text,
    email text,
    phone text,
    website text,
    rate int,
    created_at timestamptz default now(),
    created_by bigint,
    modified_at timestamptz,
    modified_by bigint,
    deleted_at timestamptz,
    deleted_by bigint,
    active bool default true
);

create table if not exists company_address (
    id bigserial primary key,
    company_id bigint,
    province_id int,
    ward_id int,
    address_detail text,
    created_at timestamptz default now(),
    created_by bigint,
    modified_at timestamptz,
    modified_by bigint,
    deleted_at timestamptz,
    deleted_by bigint,
    active bool default true
);

create table if not exists candidate (
    id bigserial primary key,
    name text,
    phone text,
    email text,
    gender text,
    province_id bigint,
    ward_id bigint,
    address_detail text,
    created_at timestamptz default now(),
    created_by bigint,
    modified_at timestamptz,
    modified_by bigint,
    deleted_at timestamptz,
    deleted_by bigint,
    active bool default true
);

create table if not exists cv (
    id bigserial primary key,
    candidate_id bigint,
    title text,
    file_name text,
    file_key text,
    created_at timestamptz default now(),
    created_by bigint,
    modified_at timestamptz,
    modified_by bigint,
    deleted_at timestamptz,
    deleted_by bigint,
    active bool default true
);

create table if not exists job (
    id bigserial primary key,
    category_id bigint,
    company_id bigint,
    title text,
    description text,
    requirement text,
    benefit text,
    experience int,
    due_date date,
    quantity int,
    min_salary int,
    max_salary int,
    qualification text,
    work_type text,
    working_time text,
    created_at timestamptz default now(),
    created_by bigint,
    modified_at timestamptz,
    modified_by bigint,
    deleted_at timestamptz,
    deleted_by bigint,
    active bool default true
);

create table if not exists job_application (
    id bigserial primary key,
    job_id bigint,
    candidate_id bigint,
    cv_id bigint,
    description text,
    status text,
    created_at timestamptz default now(),
    created_by bigint,
    modified_at timestamptz,
    modified_by bigint,
    deleted_at timestamptz,
    deleted_by bigint,
    active bool default true
);

INSERT INTO
    public.province (id, name)
VALUES (1, 'Thành phố Hà Nội');

INSERT INTO public.province (id, name) VALUES (4, 'Tỉnh Cao Bằng');

INSERT INTO
    public.province (id, name)
VALUES (8, 'Tỉnh Tuyên Quang');

INSERT INTO public.province (id, name) VALUES (11, 'Tỉnh Điện Biên');

INSERT INTO public.province (id, name) VALUES (12, 'Tỉnh Lai Châu');

INSERT INTO public.province (id, name) VALUES (14, 'Tỉnh Sơn La');

INSERT INTO public.province (id, name) VALUES (15, 'Tỉnh Lào Cai');

INSERT INTO
    public.province (id, name)
VALUES (19, 'Tỉnh Thái Nguyên');

INSERT INTO public.province (id, name) VALUES (20, 'Tỉnh Lạng Sơn');

INSERT INTO
    public.province (id, name)
VALUES (22, 'Tỉnh Quảng Ninh');

INSERT INTO public.province (id, name) VALUES (24, 'Tỉnh Bắc Ninh');

INSERT INTO public.province (id, name) VALUES (25, 'Tỉnh Phú Thọ');

INSERT INTO
    public.province (id, name)
VALUES (31, 'Thành phố Hải Phòng');

INSERT INTO public.province (id, name) VALUES (33, 'Tỉnh Hưng Yên');

INSERT INTO public.province (id, name) VALUES (37, 'Tỉnh Ninh Bình');

INSERT INTO public.province (id, name) VALUES (38, 'Tỉnh Thanh Hoá');

INSERT INTO public.province (id, name) VALUES (40, 'Tỉnh Nghệ An');

INSERT INTO public.province (id, name) VALUES (42, 'Tỉnh Hà Tĩnh');

INSERT INTO public.province (id, name) VALUES (44, 'Tỉnh Quảng Trị');

INSERT INTO public.province (id, name) VALUES (46, 'Thành phố Huế');

INSERT INTO
    public.province (id, name)
VALUES (48, 'Thành phố Đà Nẵng');

INSERT INTO
    public.province (id, name)
VALUES (51, 'Tỉnh Quảng Ngãi');

INSERT INTO public.province (id, name) VALUES (52, 'Tỉnh Gia Lai');

INSERT INTO public.province (id, name) VALUES (56, 'Tỉnh Khánh Hòa');

INSERT INTO public.province (id, name) VALUES (66, 'Tỉnh Đắk Lắk');

INSERT INTO public.province (id, name) VALUES (68, 'Tỉnh Lâm Đồng');

INSERT INTO
    public.province (id, name)
VALUES (79, 'Thành phố Hồ Chí Minh');

INSERT INTO public.province (id, name) VALUES (80, 'Tỉnh Tây Ninh');

INSERT INTO public.province (id, name) VALUES (82, 'Tỉnh Đồng Tháp');

INSERT INTO public.province (id, name) VALUES (86, 'Tỉnh Vĩnh Long');

INSERT INTO public.province (id, name) VALUES (91, 'Tỉnh An Giang');

INSERT INTO
    public.province (id, name)
VALUES (92, 'Thành phố Cần Thơ');

INSERT INTO public.province (id, name) VALUES (96, 'Tỉnh Cà Mau');

INSERT INTO
    public.province (id, name)
VALUES (75, 'Thành phố Đồng Nai');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Hòa Xá');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Ứng Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Ứng Thiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Vân Đình');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Giảng Võ');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Hoàn Kiếm');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Cửa Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Phú Thượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Hồng Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Tây Hồ');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Bồ Đề');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Việt Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Phúc Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Long Biên');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Nghĩa Đô');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Cầu Giấy');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Yên Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Ô Chợ Dừa');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Láng');

INSERT INTO
    public.ward (province_id, name)
VALUES (
        1,
        'Phường Văn Miếu - Quốc Tử Giám'
    );

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Kim Liên');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Đống Đa');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Hai Bà Trưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Vĩnh Tuy');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Bạch Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Vĩnh Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Định Công');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Tương Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Lĩnh Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Hoàng Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Hoàng Liệt');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Yên Sở');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Phương Liệt');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Khương Đình');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Thanh Xuân');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Sóc Sơn');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Kim Anh');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Trung Giã');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Đa Phúc');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Nội Bài');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Đông Anh');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Phúc Thịnh');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Thư Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Thiên Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Vĩnh Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Phù Đổng');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Thuận An');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Gia Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Bát Tràng');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Tùng Thiện');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Sơn Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Phú Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Yên Nghĩa');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Hà Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Kiến Hưng');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Mê Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Tiến Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Yên Lãng');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Quang Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Từ Liêm');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Thượng Cát');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Đông Ngạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Xuân Đỉnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Tây Tựu');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Phú Diễn');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Xuân Phương');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Tây Mỗ');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Đại Mỗ');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Thanh Trì');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Thanh Liệt');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Đại Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Ngọc Hồi');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Nam Phù');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Mỹ Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Ba Đình');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Ngọc Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Phúc Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Hồng Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Hương Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Đoài Phương');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Quảng Oai');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Cổ Đô');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Minh Châu');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Vật Lại');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Bất Bạt');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Suối Hai');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Ba Vì');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Yên Bài');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Phúc Thọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Phúc Lộc');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Hát Môn');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Đan Phượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Liên Minh');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Ô Diên');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Hoài Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Dương Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Sơn Đồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã An Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Dương Nội');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Quốc Oai');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Kiều Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Hưng Đạo');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Phú Cát');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Thạch Thất');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Hạ Bằng');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Hòa Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Tây Phương');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Phường Chương Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Phú Nghĩa');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Xuân Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Quảng Bị');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Trần Phú');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Hòa Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Yên Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Thanh Oai');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Bình Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Tam Hưng');

INSERT INTO public.ward (province_id, name) VALUES (1, 'Xã Dân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Thường Tín');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Hồng Vân');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Thượng Phúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Chương Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Phú Xuyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Phượng Dực');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Chuyên Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (1, 'Xã Đại Xuyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Minh Tâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Phường Thục Phán');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Phường Nùng Trí Cao');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Phường Tân Giang');

INSERT INTO public.ward (province_id, name) VALUES (4, 'Xã Bảo Lâm');

INSERT INTO public.ward (province_id, name) VALUES (4, 'Xã Lý Bôn');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Nam Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Quảng Lâm');

INSERT INTO public.ward (province_id, name) VALUES (4, 'Xã Yên Thổ');

INSERT INTO public.ward (province_id, name) VALUES (4, 'Xã Bảo Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Cốc Pàng');

INSERT INTO public.ward (province_id, name) VALUES (4, 'Xã Cô Ba');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Khánh Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Xuân Trường');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Hưng Đạo');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Huy Giáp');

INSERT INTO public.ward (province_id, name) VALUES (4, 'Xã Sơn Lộ');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Thông Nông');

INSERT INTO public.ward (province_id, name) VALUES (4, 'Xã Cần Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Thanh Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Trường Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Lũng Nặm');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Tổng Cọt');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Hà Quảng');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Trà Lĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Quang Hán');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Quang Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Trùng Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Đình Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Đàm Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Đoài Dương');

INSERT INTO public.ward (province_id, name) VALUES (4, 'Xã Lý Quốc');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Quang Long');

INSERT INTO public.ward (province_id, name) VALUES (4, 'Xã Hạ Lang');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Vinh Quý');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Quảng Uyên');

INSERT INTO public.ward (province_id, name) VALUES (4, 'Xã Độc Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Hạnh Phúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Bế Văn Đàn');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Phục Hòa');

INSERT INTO public.ward (province_id, name) VALUES (4, 'Xã Hòa An');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Nam Tuấn');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Nguyễn Huệ');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Bạch Đằng');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Nguyên Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Tĩnh Túc');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Ca Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Phan Thanh');

INSERT INTO public.ward (province_id, name) VALUES (4, 'Xã Tam Kim');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Thành Công');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Đông Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Canh Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Kim Đồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Minh Khai');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Thạch An');

INSERT INTO
    public.ward (province_id, name)
VALUES (4, 'Xã Đức Long');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Du Già');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Tiên Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Xuân Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Bằng Lang');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Tân Trịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Quang Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Yên Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Tiên Nguyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Đồng Yên');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Hùng An');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Xín Mần');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Liên Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Đồng Văn');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Lũng Cú');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Phú Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Bằng Hành');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Ngọc Đường');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Phường Hà Giang 1');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Tân Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Phường Hà Giang 2');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Đồng Tâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Vĩnh Tuy');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Bắc Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Khuôn Lùng');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Quảng Nguyên');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Nấm Dẩn');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Trung Thịnh');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Sà Phìn');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Phố Bảng');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Lũng Phìn');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Mèo Vạc');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Sơn Vĩ');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Sủng Máng');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Khâu Vai');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Tát Ngà');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Niêm Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Yên Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Thắng Mố');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Bạch Đích');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Mậu Duệ');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Ngọc Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Đường Thượng');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Phù Lưu');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Yên Phú');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Bình Xa');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Thái Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Thái Hoà');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Hùng Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Lực Hành');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Kiến Thiết');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Xuân Vân');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Hùng Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Trung Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Tân Long');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Yên Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Thái Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Phường Mỹ Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Phường An Tường');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Phường Bình Thuận');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Nhữ Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Sơn Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Tân Trào');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Bình Ca');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Minh Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Đông Thọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Tân Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Hồng Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Phú Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Sơn Thuỷ');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Trường Sinh');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Linh Hồ');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Bạch Ngọc');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Minh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Giáp Trung');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Bắc Mê');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Minh Ngọc');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Yên Cường');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Đường Hồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Hoàng Su Phì');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Bản Máy');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Thàng Tín');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Tân Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Pờ Ly Ngài');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Nậm Dịch');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Hồ Thầu');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Thông Nguyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Pà Vầy Sủ');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Quản Bạ');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Cán Tỷ');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Nghĩa Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Tùng Vài');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Lùng Tám');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Vị Xuyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Minh Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Thuận Hoà');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Tùng Bá');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Thanh Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Lao Chải');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Cao Bồ');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Thượng Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Việt Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Phường Nông Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Phường Minh Xuân');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Nà Hang');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Thượng Nông');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Côn Lôn');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Yên Hoa');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Hồng Thái');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Lâm Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Thượng Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Chiêm Hoá');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Bình An');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Minh Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Trung Hà');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Tân Mỹ');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Yên Lập');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Tân An');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Kiên Đài');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Kim Bình');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Hoà An');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Tri Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (8, 'Xã Yên Nguyên');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Hàm Yên');

INSERT INTO public.ward (province_id, name) VALUES (8, 'Xã Bạch Xa');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Mường Tùng');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Thanh An');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Thanh Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Phường Mường Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Thanh Nưa');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Mường Phăng');

INSERT INTO public.ward (province_id, name) VALUES (11, 'Xã Nà Tấu');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Mường Lạn');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Búng Lao');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Quài Tở');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Chiềng Sinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Mường Mùn');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Pú Nhung');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Mường Ảng');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Tuần Giáo');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Sáng Nhè');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Sính Phình');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Sín Chải');

INSERT INTO public.ward (province_id, name) VALUES (11, 'Xã Dung');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Tủa Thàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Tủa Chùa');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Mường Luân');

INSERT INTO public.ward (province_id, name) VALUES (11, 'Xã Na Son');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Mường Pồn');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Si Pa Phìn');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Nậm Nèn');

INSERT INTO public.ward (province_id, name) VALUES (11, 'Xã Pa Ham');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Phường Điện Biên Phủ');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Phường Mường Lay');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Sín Thầu');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Mường Nhé');

INSERT INTO public.ward (province_id, name) VALUES (11, 'Xã Nậm Kè');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Mường Toong');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Quảng Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Mường Chà');

INSERT INTO public.ward (province_id, name) VALUES (11, 'Xã Nà Hỳ');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Na Sang');

INSERT INTO public.ward (province_id, name) VALUES (11, 'Xã Chà Tở');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Nà Bủng');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Tìa Dình');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Phình Giàng');

INSERT INTO public.ward (province_id, name) VALUES (11, 'Xã Pu Nhi');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Mường Nhà');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Núa Ngam');

INSERT INTO
    public.ward (province_id, name)
VALUES (11, 'Xã Sam Mứn');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Nậm Tăm');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Phường Đoàn Kết');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Bình Lư');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Sin Suối Hồ');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Tả Lèng');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Phường Tân Phong');

INSERT INTO public.ward (province_id, name) VALUES (12, 'Xã Bản Bo');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Khun Há');

INSERT INTO public.ward (province_id, name) VALUES (12, 'Xã Bum Tở');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Nậm Hàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Thu Lũm');

INSERT INTO public.ward (province_id, name) VALUES (12, 'Xã Pa Ủ');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Mường Tè');

INSERT INTO public.ward (province_id, name) VALUES (12, 'Xã Mù Cả');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Hua Bum');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Tà Tổng');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Bum Nưa');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Mường Mô');

INSERT INTO public.ward (province_id, name) VALUES (12, 'Xã Sìn Hồ');

INSERT INTO public.ward (province_id, name) VALUES (12, 'Xã Lê Lợi');

INSERT INTO public.ward (province_id, name) VALUES (12, 'Xã Pa Tần');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Hồng Thu');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Tủa Sín Chải');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Pu Sam Cáp');

INSERT INTO public.ward (province_id, name) VALUES (12, 'Xã Nậm Mạ');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Nậm Cuổi');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Phong Thổ');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Sì Lở Lầu');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Dào San');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Khổng Lào');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Than Uyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Tân Uyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Mường Khoa');

INSERT INTO public.ward (province_id, name) VALUES (12, 'Xã Nậm Sỏ');

INSERT INTO public.ward (province_id, name) VALUES (12, 'Xã Pắc Ta');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Mường Than');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Mường Kim');

INSERT INTO
    public.ward (province_id, name)
VALUES (12, 'Xã Khoen On');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Chiềng Khoong');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Huổi Một');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường Hung');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Chiềng Khương');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Púng Bánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Sốp Cộp');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường Lèo');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường Lạn');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Phường Tô Hiệu');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Phường Chiềng An');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Phường Chiềng Cơi');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Phường Chiềng Sinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường Chiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường Giôn');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Quỳnh Nhai');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường Sại');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Thuận Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Bình Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường É');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Chiềng La');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường Khiêng');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường Bám');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Long Hẹ');

INSERT INTO public.ward (province_id, name) VALUES (14, 'Xã Co Mạ');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Nậm Lầu');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Muổi Nọi');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường La');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Chiềng Lao');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Ngọc Chiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường Bú');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Chiềng Hoa');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Bắc Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Xím Vàng');

INSERT INTO public.ward (province_id, name) VALUES (14, 'Xã Tà Xùa');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Pắc Ngà');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Tạ Khoa');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Chiềng Sại');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Suối Tọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường Cơi');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Phù Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Gia Phù');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường Bang');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Tường Hạ');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Kim Bon');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Tân Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Phường Mộc Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Phường Mộc Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Phường Thảo Nguyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Chiềng Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Tân Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Đoàn Kết');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Song Khủa');

INSERT INTO public.ward (province_id, name) VALUES (14, 'Xã Tô Múa');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Phường Vân Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Lóng Sập');

INSERT INTO public.ward (province_id, name) VALUES (14, 'Xã Vân Hồ');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Xuân Nha');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Yên Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Chiềng Hặc');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Yên Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Lóng Phiêng');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Phiêng Khoài');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mai Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Chiềng Sung');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường Chanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Chiềng Mung');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Chiềng Mai');

INSERT INTO public.ward (province_id, name) VALUES (14, 'Xã Tà Hộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Phiêng Cằm');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Phiêng Pằn');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Sông Mã');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Bó Sinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Mường Lầm');

INSERT INTO public.ward (province_id, name) VALUES (14, 'Xã Nậm Ty');

INSERT INTO
    public.ward (province_id, name)
VALUES (14, 'Xã Chiềng Sơ');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Chấn Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Thượng Bằng La');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Nghĩa Tâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Yên Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Thác Bà');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Cảm Nhân');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Yên Thành');

INSERT INTO public.ward (province_id, name) VALUES (15, 'Xã Bảo Ái');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Sín Chéng');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Si Ma Cai');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Bản Lầu');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Cao Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Mường Khương');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Pha Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Cốc San');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Mường Hum');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Bản Xèo');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Dền Sáng');

INSERT INTO public.ward (province_id, name) VALUES (15, 'Xã Y Tý');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Trịnh Tường');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã A Mú Sung');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Bát Xát');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Hợp Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Phường Lào Cai');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Phường Cam Đường');

INSERT INTO public.ward (province_id, name) VALUES (15, 'Xã Bắc Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Tả Củ Tỷ');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Lùng Phình');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Bản Liền');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Bảo Nhai');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Cốc Lầu');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Phong Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Bảo Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Tằng Loỏng');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Gia Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Xuân Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Bảo Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Nghĩa Đô');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Xuân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Thượng Hà');

INSERT INTO public.ward (province_id, name) VALUES (15, 'Xã Bảo Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Phúc Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Ngũ Chỉ Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Phường Sa Pa');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Tả Phìn');

INSERT INTO public.ward (province_id, name) VALUES (15, 'Xã Tả Van');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Mường Bo');

INSERT INTO public.ward (province_id, name) VALUES (15, 'Xã Bản Hồ');

INSERT INTO public.ward (province_id, name) VALUES (15, 'Xã Võ Lao');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Nậm Chày');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Văn Bàn');

INSERT INTO public.ward (province_id, name) VALUES (15, 'Xã Nậm Xé');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Chiềng Ken');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Khánh Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Dương Quỳ');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Minh Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Phường Yên Bái');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Phường Nam Cường');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Phường Văn Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Phường Nghĩa Lộ');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Lục Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Lâm Thượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Tân Lĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Khánh Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Mường Lai');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Phúc Lợi');

INSERT INTO public.ward (province_id, name) VALUES (15, 'Xã Mậu A');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Lâm Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Châu Quế');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Đông Cuông');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Phong Dụ Hạ');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Phong Dụ Thượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Tân Hợp');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Xuân Ái');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Mỏ Vàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Mù Cang Chải');

INSERT INTO public.ward (province_id, name) VALUES (15, 'Xã Nậm Có');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Khao Mang');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Lao Chải');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Chế Tạo');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Púng Luông');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Trấn Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Quy Mông');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Lương Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Phường Âu Lâu');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Việt Hồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Hưng Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Hạnh Phúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Tà Xi Láng');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Trạm Tấu');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Phình Hồ');

INSERT INTO public.ward (province_id, name) VALUES (15, 'Xã Tú Lệ');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Gia Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Sơn Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Liên Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Phường Trung Tâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Văn Chấn');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Phường Cầu Thia');

INSERT INTO
    public.ward (province_id, name)
VALUES (15, 'Xã Cát Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Dân Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Xuân Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Côn Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Trần Phú');

INSERT INTO public.ward (province_id, name) VALUES (19, 'Xã Na Rì');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Cường Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Văn Lang');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Yên Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Thanh Thịnh');

INSERT INTO public.ward (province_id, name) VALUES (19, 'Xã Tân Kỳ');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Thanh Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Chợ Mới');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Yên Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Nghĩa Tá');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Yên Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Quảng Bạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Nam Cường');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Chợ Đồn');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Bạch Thông');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Cẩm Giàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Vĩnh Thông');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Phủ Thông');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Hiệp Lực');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Thượng Quan');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Ngân Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Bằng Vân');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Nà Phặc');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Đồng Phúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Thượng Minh');

INSERT INTO public.ward (province_id, name) VALUES (19, 'Xã Chợ Rã');

INSERT INTO public.ward (province_id, name) VALUES (19, 'Xã Ba Bể');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Phan Đình Phùng');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Quyết Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Gia Sàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Quan Triều');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Đại Phúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Tích Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Tân Cương');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Sông Công');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Bách Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Bá Xuyên');

INSERT INTO public.ward (province_id, name) VALUES (19, 'Xã Lam Vỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Kim Phượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Phượng Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Định Hóa');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Trung Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Bình Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Phú Đình');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Bình Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Phú Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Yên Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Hợp Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Vô Tranh');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Trại Cau');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Văn Lăng');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Quang Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Văn Hán');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Đồng Hỷ');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Nam Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Linh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Võ Nhai');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Sảng Mộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Nghinh Tường');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Thần Sa');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã La Hiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Tràng Xá');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Phú Xuyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Đức Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Phú Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Phú Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã An Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã La Bằng');

INSERT INTO public.ward (province_id, name) VALUES (19, 'Xã Đại Từ');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Vạn Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Quân Chu');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Phúc Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Phổ Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Thành Công');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Vạn Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Trung Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Phú Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Tân Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Tân Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Điềm Thụy');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Kha Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Phúc Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Nghiên Loan');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Cao Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Bằng Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Xã Phong Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Bắc Kạn');

INSERT INTO
    public.ward (province_id, name)
VALUES (19, 'Phường Đức Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Thiện Thuật');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Thiện Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Bình Gia');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Tân Văn');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Thụy Hùng');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Hội Hoan');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Văn Lãng');

INSERT INTO public.ward (province_id, name) VALUES (20, 'Xã Na Sầm');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Phường Hoàng Văn Thụ');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Đồng Đăng');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Phường Kỳ Lừa');

INSERT INTO public.ward (province_id, name) VALUES (20, 'Xã Ba Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Cao Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Công Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Văn Quan');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Điềm He');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Khánh Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Yên Phúc');

INSERT INTO public.ward (province_id, name) VALUES (20, 'Xã Tri Lễ');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Tân Đoàn');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Bắc Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Tân Tri');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Hưng Vũ');

INSERT INTO public.ward (province_id, name) VALUES (20, 'Xã Vũ Lễ');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Vũ Lăng');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Nhất Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Hữu Lũng');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Yên Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Hữu Liên');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Vân Nham');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Cai Kinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Thiện Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Tân Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Tuấn Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Chi Lăng');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Bằng Mạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Chiến Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Nhân Lý');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Vạn Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Kháng Chiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Quan Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Na Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Lộc Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Mẫu Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Khuất Xá');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Thống Nhất');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Lợi Bác');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Xuân Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Phường Đông Kinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Phường Lương Văn Tri');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Phường Tam Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Đoàn Kết');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Quốc Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Tân Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Đình Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Thái Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Kiên Mộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Châu Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Thất Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Tràng Định');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Quốc Việt');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Hoa Thám');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Quý Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Hồng Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (20, 'Xã Thiện Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Yên Tử');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Hà Tu');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Cao Xanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Việt Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Bãi Cháy');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Hà Lầm');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Hồng Gai');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Móng Cái 3');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường An Sinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Hạ Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Tuần Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Móng Cái 2');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Móng Cái 1');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Hải Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Đặc khu Vân Đồn');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Đặc khu Cô Tô');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Phong Cốc');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Liên Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Hà An');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Hiệp Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Đông Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Quảng Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Hoàng Quế');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Đông Triều');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Mạo Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Thống Nhất');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Quảng La');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Hoành Bồ');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Lương Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Kỳ Thượng');

INSERT INTO public.ward (province_id, name) VALUES (22, 'Xã Ba Chẽ');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Cái Chiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Đường Hoa');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Quảng Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Quảng Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Hải Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Quảng Tân');

INSERT INTO public.ward (province_id, name) VALUES (22, 'Xã Đầm Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Hải Lạng');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Đông Ngũ');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Điền Xá');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Bình Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Tiên Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Lục Hồn');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Hoành Mô');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Bình Liêu');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Vàng Danh');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Uông Bí');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Hải Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Cẩm Phả');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Cửa Ông');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Quang Hanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Phường Mông Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (22, 'Xã Vĩnh Thực');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Trạm Lộ');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Bắc Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Đa Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Xuân Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Tam Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Đồng Kỳ');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Yên Thế');

INSERT INTO public.ward (province_id, name) VALUES (24, 'Xã Bố Hạ');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Nhã Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Phúc Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Quang Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Tân Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Ngọc Thiện');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Lạng Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Tiên Lục');

INSERT INTO public.ward (province_id, name) VALUES (24, 'Xã Kép');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Mỹ Thái');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Tân Dĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Lục Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Đông Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Bảo Đài');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Nghĩa Phương');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Trường Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Lục Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Bắc Lũng');

INSERT INTO public.ward (province_id, name) VALUES (24, 'Xã Cẩm Lý');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Chũ');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Tân Sơn');

INSERT INTO public.ward (province_id, name) VALUES (24, 'Xã Sa Lý');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Biên Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Sơn Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Kiên Lao');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Biển Động');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Lục Ngạn');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Đèo Gia');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Nam Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Phượng Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Sơn Động');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Tây Yên Tử');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Vân Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Đại Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Yên Định');

INSERT INTO public.ward (province_id, name) VALUES (24, 'Xã An Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Tuấn Đạo');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Dương Hưu');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Yên Dũng');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Tân An');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Tiền Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Tân Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Đồng Việt');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Cảnh Thụy');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Tự Lạn');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Việt Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Nếnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Vân Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Hoàng Vân');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Hiệp Hoà');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Hợp Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Xuân Cẩm');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Vũ Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Kinh Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Võ Cường');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Yên Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Tam Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Yên Trung');

INSERT INTO public.ward (province_id, name) VALUES (24, 'Xã Tam Đa');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Văn Môn');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Quế Võ');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Nhân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Phương Liễu');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Nam Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Phù Lãng');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Bồng Lai');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Đào Viên');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Chi Lăng');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Tiên Du');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Hạp Lĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Liên Bão');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Đại Đồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Tân Chi');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Phật Tích');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Từ Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Tam Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Phù Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Đồng Nguyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Thuận Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Mão Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Trí Quả');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Song Liễu');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Phường Ninh Xá');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Gia Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Cao Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Đại Lai');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Nhân Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Đông Cứu');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Lương Tài');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Trung Kênh');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Trung Chính');

INSERT INTO
    public.ward (province_id, name)
VALUES (24, 'Xã Lâm Thao');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tam Nông');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Thu Cúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Lai Đồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tân Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Võ Miếu');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Xuân Đài');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Minh Đài');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Văn Miếu');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Cự Đồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Long Cốc');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Hương Cần');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Khả Cửu');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Yên Sơn');

INSERT INTO public.ward (province_id, name) VALUES (25, 'Xã Đào Xá');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Thanh Thủy');

INSERT INTO public.ward (province_id, name) VALUES (25, 'Xã Tu Vũ');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Vĩnh Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Vĩnh Phúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Phúc Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Xuân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Lập Thạch');

INSERT INTO public.ward (province_id, name) VALUES (25, 'Xã Hợp Lý');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Yên Lãng');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Hải Lựu');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Thái Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Liên Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tam Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tiên Lữ');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Sông Lô');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Sơn Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tam Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tam Dương Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Hoàng An');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Hội Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tam Đảo');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Đạo Trù');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Đại Đình');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Bình Nguyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Bình Tuyền');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Bình Xuyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Xuân Lãng');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Chí Đám');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Bằng Luân');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Đoan Hùng');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Phong Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Yên Lạc');

INSERT INTO public.ward (province_id, name) VALUES (25, 'Xã Tề Lỗ');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tam Hồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Nguyệt Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Liên Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Vĩnh Tường');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Vĩnh An');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Vĩnh Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Vĩnh Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Thổ Tang');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Vĩnh Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Bản Nguyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Phùng Nguyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Hy Cương');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Xuân Lũng');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Lâm Thao');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Thọ Văn');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Vạn Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Hiền Quan');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Đồng Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Hùng Việt');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Phú Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Vân Bán');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tiên Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Cẩm Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Minh Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Thượng Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Trung Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Xuân Viên');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Sơn Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Yên Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Bình Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Dân Chủ');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Trạm Thản');

INSERT INTO public.ward (province_id, name) VALUES (25, 'Xã Phú Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Phù Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Liên Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Chí Tiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Đông Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Hoàng Cương');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Quảng Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Thanh Ba');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Vĩnh Chân');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Văn Lang');

INSERT INTO public.ward (province_id, name) VALUES (25, 'Xã Yên Kỳ');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Hiền Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Đan Thượng');

INSERT INTO public.ward (province_id, name) VALUES (25, 'Xã Hạ Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Chân Mộng');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tây Cốc');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Thanh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Âu Cơ');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Phú Thọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Vân Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Thanh Miếu');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Việt Trì');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Nông Trang');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã An Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã An Nghĩa');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Lạc Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Yên Trị');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Lạc Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Yên Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Đại Đồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Ngọc Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Quyết Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Yên Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Thượng Cốc');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Nhân Nghĩa');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Mường Vang');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Lạc Sơn');

INSERT INTO public.ward (province_id, name) VALUES (25, 'Xã Mai Hạ');

INSERT INTO public.ward (province_id, name) VALUES (25, 'Xã Bao La');

INSERT INTO public.ward (province_id, name) VALUES (25, 'Xã Pà Cò');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tân Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Mai Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Toàn Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Mường Bi');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Vân Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Mường Hoa');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tân Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Mường Thàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Thung Nai');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Cao Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Dũng Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Hợp Kim');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Cao Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Mường Động');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Nật Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Kim Bôi');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Liên Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Lương Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Thịnh Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Kỳ Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tiền Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Cao Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Quy Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Tân Pheo');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Xã Đức Nhàn');

INSERT INTO public.ward (province_id, name) VALUES (25, 'Xã Đà Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Thống Nhất');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Hòa Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (25, 'Phường Tân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Tân Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Tiên Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Vĩnh Am');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Vĩnh Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Vĩnh Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Vĩnh Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Vĩnh Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Vĩnh Bảo');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Đặc khu Bạch Long Vĩ');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Đặc khu Cát Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Thành Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Hải Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Lê Thanh Nghị');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Tân Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Việt Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Chí Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Chu Văn An');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Nguyễn Trãi');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Trần Hưng Đạo');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Trần Nhân Tông');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Lê Đại Hành');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Nam Sách');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Hợp Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Trần Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Thái Tân');

INSERT INTO public.ward (province_id, name) VALUES (31, 'Xã An Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Ái Quốc');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Kinh Môn');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Bắc An Phụ');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Nam An Phụ');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Chấn Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Nhị Chiểu');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Phạm Sư Mạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Trần Liễu');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Nguyễn Đại Năng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Phú Thái');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Lai Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã An Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Kim Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Thanh Hà');

INSERT INTO public.ward (province_id, name) VALUES (31, 'Xã Hà Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Nam Đồng');

INSERT INTO public.ward (province_id, name) VALUES (31, 'Xã Hà Nam');

INSERT INTO public.ward (province_id, name) VALUES (31, 'Xã Hà Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Hà Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Cẩm Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Tứ Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Cẩm Giàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Tuệ Tĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Mao Điền');

INSERT INTO public.ward (province_id, name) VALUES (31, 'Xã Kẻ Sặt');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Bình Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Đường An');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Thượng Hồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Gia Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Hùng Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Thạch Khôi');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Yết Kiêu');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Gia Phúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Trường Tân');

INSERT INTO public.ward (province_id, name) VALUES (31, 'Xã Tứ Kỳ');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Đại Sơn');

INSERT INTO public.ward (province_id, name) VALUES (31, 'Xã Tân Kỳ');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Chí Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Lạc Phượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Nguyên Giáp');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Vĩnh Lại');

INSERT INTO public.ward (province_id, name) VALUES (31, 'Xã Tân An');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Ninh Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Hồng Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Khúc Thừa Dụ');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Thanh Miện');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Nguyễn Lương Bằng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Bắc Thanh Miện');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Hải Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Nam Thanh Miện');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Hồng Bàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Ngô Quyền');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Gia Viên');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Lê Chân');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường An Biên');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Đông Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Hải An');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Kiến An');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Phù Liễn');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Đồ Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Bạch Đằng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Lưu Kiếm');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Việt Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Lê Ích Mộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Hòa Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Nam Triệu');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Thiên Hương');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Nguyễn Bỉnh Khiêm');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Thủy Nguyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường An Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường An Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Hồng An');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường An Hải');

INSERT INTO public.ward (province_id, name) VALUES (31, 'Xã An Lão');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã An Trường');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã An Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã An Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã An Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Kiến Thụy');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Hưng Đạo');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Dương Kinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Nghi Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Kiến Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Kiến Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Phường Nam Đồ Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Kiến Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Tiên Lãng');

INSERT INTO
    public.ward (province_id, name)
VALUES (31, 'Xã Quyết Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Đông Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Phường Phố Hiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Tân Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Phường Hồng Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Phường Sơn Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Lạc Đạo');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Đại Đồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Như Quỳnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Văn Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Phụng Công');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Nghĩa Trụ');

INSERT INTO public.ward (province_id, name) VALUES (33, 'Xã Mễ Sở');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Nguyễn Văn Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Hoàn Long');

INSERT INTO public.ward (province_id, name) VALUES (33, 'Xã Yên Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Việt Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Phường Mỹ Hào');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Phường Thượng Hồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Phường Đường Hào');

INSERT INTO public.ward (province_id, name) VALUES (33, 'Xã Ân Thi');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Phạm Ngũ Lão');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Xuân Trúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Nguyễn Trãi');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Hồng Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Khoái Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Triệu Việt Vương');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Việt Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Châu Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Chí Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Lương Bằng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Nghĩa Dân');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Đức Hợp');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Hiệp Cường');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Hoàng Hoa Thám');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Tiên Hoa');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Tiên Lữ');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Quang Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Đoàn Đào');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Tiên Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Tống Trân');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Phường Trần Hưng Đạo');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Phường Trần Lãm');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Phường Vũ Phúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Quỳnh Phụ');

INSERT INTO public.ward (province_id, name) VALUES (33, 'Xã A Sào');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Minh Thọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Ngọc Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Phụ Dực');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Đồng Bằng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Nguyễn Du');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Quỳnh An');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Tân Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Hưng Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Ngự Thiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Long Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Diên Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Thần Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Tiên La');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Lê Quý Đôn');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Hồng Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Bắc Đông Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Bắc Tiên Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Đông Tiên Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Bắc Đông Quan');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Tiên Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Nam Tiên Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Nam Đông Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Đông Quan');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Phường Trà Lý');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Thái Thụy');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Tây Thụy Anh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Bắc Thụy Anh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Đông Thụy Anh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Thụy Anh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Nam Thụy Anh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Bắc Thái Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Tây Thái Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Thái Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Đông Thái Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Nam Thái Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Tiền Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Đông Tiền Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Đồng Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Ái Quốc');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Tây Tiền Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Nam Cường');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Nam Tiền Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Hưng Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Kiến Xương');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Trà Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Bình Nguyên');

INSERT INTO public.ward (province_id, name) VALUES (33, 'Xã Lê Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Quang Lịch');

INSERT INTO public.ward (province_id, name) VALUES (33, 'Xã Vũ Quý');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Hồng Vũ');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Bình Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Bình Định');

INSERT INTO public.ward (province_id, name) VALUES (33, 'Xã Vũ Thư');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Vạn Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Thư Trì');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Phường Thái Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Tân Thuận');

INSERT INTO public.ward (province_id, name) VALUES (33, 'Xã Thư Vũ');

INSERT INTO
    public.ward (province_id, name)
VALUES (33, 'Xã Vũ Tiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Trần Thương');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Vĩnh Trụ');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Nhân Hà');

INSERT INTO public.ward (province_id, name) VALUES (37, 'Xã Nam Lý');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Nam Định');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Thiên Trường');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Đông A');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Thành Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Mỹ Lộc');

INSERT INTO public.ward (province_id, name) VALUES (37, 'Xã Vụ Bản');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Minh Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Hiển Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Trường Thi');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Liên Minh');

INSERT INTO public.ward (province_id, name) VALUES (37, 'Xã Ý Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Tân Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Phong Doanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Vũ Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Vạn Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Yên Cường');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Yên Đồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Nghĩa Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Rạng Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Đồng Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Nghĩa Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Hồng Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Quỹ Nhất');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Nghĩa Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Nam Trực');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Vị Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Hồng Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Nam Hồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Nam Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Yên Mạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Nam Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Nam Đồng');

INSERT INTO public.ward (province_id, name) VALUES (37, 'Xã Cổ Lễ');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Ninh Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Trực Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Cát Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Quang Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Minh Thái');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Ninh Cường');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Xuân Trường');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Xuân Hồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Xuân Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Xuân Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Giao Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Giao Thuỷ');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Giao Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Giao Hoà');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Giao Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Giao Phúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Giao Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Hải Hậu');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Hải Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Hải Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Hải Anh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Hải Hưng');

INSERT INTO public.ward (province_id, name) VALUES (37, 'Xã Hải An');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Hải Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Hải Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Hoa Lư');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Nam Hoa Lư');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Tam Điệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Trung Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Yên Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Gia Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Gia Tường');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Cúc Phương');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Phú Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Nho Quan');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Thanh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Quỳnh Lưu');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Phú Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Gia Viễn');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Gia Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Gia Vân');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Gia Trấn');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Đại Hoàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Gia Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Tây Hoa Lư');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Yên Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Khánh Thiện');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Đông Hoa Lư');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Khánh Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Khánh Nhạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Khánh Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Phát Diệm');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Bình Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Kim Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Quang Thiện');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Chất Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Lai Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Định Hóa');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Kim Đông');

INSERT INTO public.ward (province_id, name) VALUES (37, 'Xã Yên Mô');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Yên Thắng');

INSERT INTO public.ward (province_id, name) VALUES (37, 'Xã Yên Từ');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Đồng Thái');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Phủ Lý');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Phù Vân');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Châu Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Duy Tiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Duy Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Duy Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Đồng Văn');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Tiên Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Hà Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Kim Bảng');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Lê Hồ');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Nguyễn Uý');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Kim Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Tam Chúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Lý Thường Kiệt');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Phường Liêm Tuyền');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Liêm Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Tân Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Thanh Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Thanh Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Thanh Liêm');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Bình Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Bình Lục');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Bình Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Bình An');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Bình Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Lý Nhân');

INSERT INTO public.ward (province_id, name) VALUES (37, 'Xã Bắc Lý');

INSERT INTO
    public.ward (province_id, name)
VALUES (37, 'Xã Nam Xang');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hậu Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Các Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Triệu Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Đông Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hoa Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Vạn Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Ngọc Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Tĩnh Gia');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Tiên Trang');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Quảng Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Quảng Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Sầm Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Quảng Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Nam Sầm Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Quảng Ngọc');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Quảng Chính');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Tân Dân');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Quảng Yên');

INSERT INTO public.ward (province_id, name) VALUES (38, 'Xã Lưu Vệ');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Đông Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Đông Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Công Chính');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Tượng Lĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Trường Văn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thăng Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thắng Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Trung Chính');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Nông Cống');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thanh Kỳ');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Yên Thọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Xuân Thái');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Mậu Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Xuân Du');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Như Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thượng Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thanh Quân');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hóa Quỳ');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thanh Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Xuân Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Như Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Ba Đình');

INSERT INTO public.ward (province_id, name) VALUES (38, 'Xã Nga An');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hồ Vương');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Nga Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Tân Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Nga Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Hàm Rồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Hạc Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Bỉm Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Quang Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Mường Lát');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Tam Chung');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Mường Lý');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Trung Lý');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Quang Chiểu');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Nhi Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Mường Chanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hồi Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Trung Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Trung Sơn');

INSERT INTO public.ward (province_id, name) VALUES (38, 'Xã Phú Lệ');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Phú Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hiền Kiệt');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Nam Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thiên Phủ');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Bá Thước');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Điền Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Điền Lư');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Quý Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Pù Luông');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Cổ Lũng');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Văn Nho');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thiết Ống');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Trung Hạ');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Tam Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Sơn Thủy');

INSERT INTO public.ward (province_id, name) VALUES (38, 'Xã Na Mèo');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Quan Sơn');

INSERT INTO public.ward (province_id, name) VALUES (38, 'Xã Tam Lư');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Sơn Điện');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Mường Mìn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Yên Khương');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Yên Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Giao An');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Văn Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Linh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Đồng Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Ngọc Lặc');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thạch Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Ngọc Liên');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Nguyệt Ấn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Kiên Thọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Minh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Cẩm Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Cẩm Thạch');

INSERT INTO public.ward (province_id, name) VALUES (38, 'Xã Cẩm Tú');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Cẩm Vân');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Cẩm Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Kim Tân');

INSERT INTO public.ward (province_id, name) VALUES (38, 'Xã Vân Du');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thạch Quảng');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Hải Lĩnh');

INSERT INTO public.ward (province_id, name) VALUES (38, 'Xã Pù Nhi');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Nghi Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Hải Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Trường Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Trúc Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Đào Duy Từ');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thạch Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thành Vinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Ngọc Trạo');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hà Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hà Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hoạt Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Lĩnh Toại');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Tống Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Vĩnh Lộc');

INSERT INTO public.ward (province_id, name) VALUES (38, 'Xã Tây Đô');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Biện Thượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Yên Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Quý Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Yên Trường');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Yên Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Định Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Định Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Yên Định');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thọ Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thọ Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Xuân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Lam Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Sao Vàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thọ Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Xuân Tín');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Xuân Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Bát Mọt');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Yên Nhân');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Vạn Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Lương Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Luận Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thắng Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thường Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Xuân Chinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Tân Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Triệu Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thọ Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hợp Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Tân Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Đồng Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thọ Ngọc');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thọ Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã An Nông');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thiệu Hóa');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thiệu Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thiệu Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thiệu Toán');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Thiệu Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Đông Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hoằng Hóa');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hoằng Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hoằng Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hoằng Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Phường Nguyệt Viên');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hoằng Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hoằng Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hoằng Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (38, 'Xã Hoằng Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Đông Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Phường Thành Vinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Phường Trường Vinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Phường Vinh Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Phường Vinh Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Phường Cửa Lò');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Quế Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Thông Thụ');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Tiền Phong');

INSERT INTO public.ward (province_id, name) VALUES (40, 'Xã Tri Lễ');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Mường Quàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Quỳ Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Châu Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Hùng Chân');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Châu Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Mường Xén');

INSERT INTO public.ward (province_id, name) VALUES (40, 'Xã Mỹ Lý');

INSERT INTO public.ward (province_id, name) VALUES (40, 'Xã Bắc Lý');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Keng Đu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Huồi Tụ');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Mường Lống');

INSERT INTO public.ward (province_id, name) VALUES (40, 'Xã Na Loi');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nậm Cắn');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Hữu Kiệm');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Chiêu Lưu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Mường Típ');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Na Ngoi');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Tương Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nhôn Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Hữu Khuông');

INSERT INTO public.ward (province_id, name) VALUES (40, 'Xã Nga My');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Lượng Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Yên Hòa');

INSERT INTO public.ward (province_id, name) VALUES (40, 'Xã Yên Na');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Tam Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Tam Thái');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Phường Thái Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nghĩa Đàn');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nghĩa Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nghĩa Thọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nghĩa Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nghĩa Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Phường Tây Hiếu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Đông Hiếu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nghĩa Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nghĩa Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Quỳ Hợp');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Châu Hồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Châu Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Tam Hợp');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Minh Hợp');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Mường Ham');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Mường Chọng');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Phường Hoàng Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Phường Quỳnh Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Phường Tân Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Quỳnh Văn');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Quỳnh Tam');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Quỳnh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Quỳnh Anh');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Quỳnh Lưu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Quỳnh Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Quỳnh Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Bình Chuẩn');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Mậu Thạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Cam Phục');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Châu Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Con Cuông');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Môn Sơn');

INSERT INTO public.ward (province_id, name) VALUES (40, 'Xã Tân Kỳ');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Tân Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Giai Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nghĩa Đồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Tiên Đồng');

INSERT INTO public.ward (province_id, name) VALUES (40, 'Xã Tân An');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nghĩa Hành');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Anh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Thành Bình Thọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nhân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Vĩnh Tường');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Anh Sơn Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Yên Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Hùng Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Đức Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Hải Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Quảng Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Diễn Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Minh Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã An Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Tân Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Yên Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Bình Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Quang Đồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Giai Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Đông Thành');

INSERT INTO public.ward (province_id, name) VALUES (40, 'Xã Vân Du');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Quan Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Hợp Minh');

INSERT INTO public.ward (province_id, name) VALUES (40, 'Xã Vân Tụ');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Bạch Ngọc');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Lương Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Đô Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Văn Hiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Thuần Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Bạch Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Đại Đồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Hạnh Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Cát Ngạn');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Tam Đồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Sơn Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Hoa Quân');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Xuân Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Kim Bảng');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Bích Hào');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nghi Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Hải Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Thần Lĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Văn Kiều');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Phúc Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Trung Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Phường Vinh Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Nam Đàn');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Đại Huệ');

INSERT INTO public.ward (province_id, name) VALUES (40, 'Xã Vạn An');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Kim Liên');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Thiên Nhẫn');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Hưng Nguyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Yên Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Hưng Nguyên Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (40, 'Xã Lam Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Đức Đồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Hương Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Phúc Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Hương Đô');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Thạch Hà');

INSERT INTO public.ward (province_id, name) VALUES (42, 'Xã Lộc Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Mai Phụ');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Đông Kinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Việt Xuyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Thạch Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Đồng Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Thạch Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Toàn Lưu');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Phường Hà Huy Tập');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Thạch Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Cẩm Xuyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Thiên Cầm');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Yên Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Hương Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Hà Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Hương Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Đồng Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Xuân Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Gia Hanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Trường Lưu');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Tùng Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Hồng Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Can Lộc');

INSERT INTO public.ward (province_id, name) VALUES (42, 'Xã Cổ Đạm');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Tiên Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Đan Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Nghi Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Thượng Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Mai Hoa');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Vũ Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Đức Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Đức Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Đức Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Đức Thọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Kim Hoa');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Sơn Kim 2');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Sơn Kim 1');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Sơn Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Sơn Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Sơn Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Sơn Hồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Hương Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Phường Nam Hồng Lĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Phường Bắc Hồng Lĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Phường Trần Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Phường Thành Sen');

INSERT INTO public.ward (province_id, name) VALUES (42, 'Xã Tứ Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Hương Phố');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Cẩm Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Cẩm Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Cẩm Duệ');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Cẩm Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Cẩm Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Phường Sông Trí');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Kỳ Xuân');

INSERT INTO public.ward (province_id, name) VALUES (42, 'Xã Kỳ Anh');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Phường Hải Ninh');

INSERT INTO public.ward (province_id, name) VALUES (42, 'Xã Kỳ Văn');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Kỳ Khang');

INSERT INTO public.ward (province_id, name) VALUES (42, 'Xã Kỳ Hoa');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Phường Vũng Áng');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Phường Hoành Sơn');

INSERT INTO public.ward (province_id, name) VALUES (42, 'Xã Kỳ Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (42, 'Xã Kỳ Thượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Triệu Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Nam Cửa Việt');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Triệu Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Triệu Cơ');

INSERT INTO public.ward (province_id, name) VALUES (44, 'Xã Ái Tử');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Diên Sanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Phường Đồng Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Phường Đồng Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Phường Đồng Hới');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Minh Hóa');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Dân Hóa');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Tân Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Kim Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Kim Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Đồng Lê');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Tuyên Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Tuyên Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Tuyên Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Tuyên Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Tuyên Hóa');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Phường Ba Đồn');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Phú Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Trung Thuần');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Hòa Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Tân Gianh');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Quảng Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Phường Bắc Gianh');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Nam Ba Đồn');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Đặc khu Cồn Cỏ');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Nam Gianh');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Hoàn Lão');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Bắc Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Phong Nha');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Bố Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Thượng Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Đông Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Nam Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Trường Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Quảng Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Ninh Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Trường Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Lệ Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Lệ Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Cam Hồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Sen Ngư');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Vĩnh Định');

INSERT INTO public.ward (province_id, name) VALUES (44, 'Xã Tân Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Trường Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Kim Ngân');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Phường Đông Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Phường Nam Đông Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Phường Quảng Trị');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Vĩnh Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Bến Quan');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Vĩnh Hoàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Vĩnh Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Cửa Tùng');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Khe Sanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Lao Bảo');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Hướng Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Hướng Phùng');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Tân Lập');

INSERT INTO public.ward (province_id, name) VALUES (44, 'Xã A Dơi');

INSERT INTO public.ward (province_id, name) VALUES (44, 'Xã Lìa');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Gio Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Mỹ Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Nam Hải Lăng');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Hải Lăng');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Cửa Việt');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Bến Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Cồn Tiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Hướng Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Đakrông');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Ba Lòng');

INSERT INTO public.ward (province_id, name) VALUES (44, 'Xã Tà Rụt');

INSERT INTO public.ward (province_id, name) VALUES (44, 'Xã La Lay');

INSERT INTO public.ward (province_id, name) VALUES (44, 'Xã Cam Lộ');

INSERT INTO
    public.ward (province_id, name)
VALUES (44, 'Xã Hiếu Giang');

INSERT INTO public.ward (province_id, name) VALUES (46, 'Xã Lộc An');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Phú Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Kim Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Vỹ Dạ');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Thuận Hóa');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Hương An');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Thủy Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường An Cựu');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Phong Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Phong Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Phong Dinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Phong Thái');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã Quảng Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Phong Quảng');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã Đan Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Thuận An');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Dương Nỗ');

INSERT INTO public.ward (province_id, name) VALUES (46, 'Xã Phú Hồ');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Mỹ Thượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã Phú Vang');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã Phú Vinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Phú Bài');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Thanh Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Hương Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Hương Trà');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Hóa Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Phường Kim Trà');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã Bình Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã A Lưới 2');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã A Lưới 5');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã A Lưới 1');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã A Lưới 3');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã A Lưới 4');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã Phú Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã Vinh Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã Hưng Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã Chân Mây - Lăng Cô');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã Khe Tre');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã Nam Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (46, 'Xã Long Quảng');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Điện Bàn Đông');

INSERT INTO public.ward (province_id, name) VALUES (48, 'Xã La Êê');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Hải Vân');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Liên Chiểu');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Hòa Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Thanh Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Hải Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Hòa Cường');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Cẩm Lệ');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Sơn Trà');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường An Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Ngũ Hành Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường An Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Hòa Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Hòa Vang');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Hòa Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Bàn Thạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Tam Kỳ');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Hương Trà');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Quảng Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Chiên Đàn');

INSERT INTO public.ward (province_id, name) VALUES (48, 'Xã Tây Hồ');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Phú Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Hội An Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Hội An');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Hội An Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Tân Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Hùng Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Tây Giang');

INSERT INTO public.ward (province_id, name) VALUES (48, 'Xã Avương');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Đông Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Sông Kôn');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Sông Vàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Bến Hiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Đại Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Thượng Đức');

INSERT INTO public.ward (province_id, name) VALUES (48, 'Xã Hà Nha');

INSERT INTO public.ward (province_id, name) VALUES (48, 'Xã Vu Gia');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Phú Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Điện Bàn');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường Điện Bàn Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Điện Bàn Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Phường An Thắng');

INSERT INTO public.ward (province_id, name) VALUES (48, 'Xã Gò Nổi');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Nam Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Thu Bồn');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Duy Xuyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Duy Nghĩa');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Quế Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Xuân Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Nông Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Quế Sơn Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Quế Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Thạnh Mỹ');

INSERT INTO public.ward (province_id, name) VALUES (48, 'Xã La Dêê');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Nam Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Bến Giằng');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Đắc Pring');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Khâm Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Phước Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Phước Năng');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Phước Chánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Phước Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Việt An');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Phước Trà');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Hiệp Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Thăng Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Thăng An');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Đồng Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Thăng Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Thăng Trường');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Thăng Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Tiên Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Sơn Cẩm Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Lãnh Ngọc');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Thạnh Bình');

INSERT INTO public.ward (province_id, name) VALUES (48, 'Xã Trà My');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Trà Liên');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Trà Đốc');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Trà Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Trà Giáp');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Trà Leng');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Trà Tập');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Nam Trà My');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Trà Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Trà Vân');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Núi Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Tam Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Đức Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Tam Anh');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Xã Tam Hải');

INSERT INTO public.ward (province_id, name) VALUES (48, 'Xã Tam Mỹ');

INSERT INTO public.ward (province_id, name) VALUES (48, 'Xã Bà Nà');

INSERT INTO
    public.ward (province_id, name)
VALUES (48, 'Đặc khu Hoàng Sa');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Sa Bình');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Ia Đal');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Phường Cẩm Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Ngọk Bay');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Ya Ly');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Sơn Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Phường Nghĩa Lộ');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã An Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Bình Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Vạn Tường');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Bình Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Bình Chương');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đông Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Trà Bồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Thanh Bồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đông Trà Bồng');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Cà Đam');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Tây Trà');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Tây Trà Bồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (
        51,
        'Phường Trương Quang Trọng'
    );

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Thọ Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Trường Giang');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Ba Gia');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Tịnh Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Sơn Tịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Tư Nghĩa');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Vệ Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Trà Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Nghĩa Giang');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Sơn Hà');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Sơn Hạ');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Sơn Thủy');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Sơn Kỳ');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Sơn Tây Thượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Sơn Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Sơn Tây Hạ');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Sơn Mai');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Minh Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Nghĩa Hành');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Phước Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đình Cương');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Thiện Tín');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Mộ Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Long Phụng');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Mỏ Cày');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Lân Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Phường Đức Phổ');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Phường Trà Câu');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Đặc khu Lý Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Nguyễn Nghiêm');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Khánh Cường');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Phường Sa Huỳnh');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Ba Tơ');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Ba Vinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Ba Động');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Ba Dinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đặng Thùy Trâm');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Ba Tô');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Ba Vì');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Ba Xa');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Ia Chim');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Phường Đăk Cấm');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Phường Kon Tum');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Phường Đăk Bla');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đăk Rơ Wa');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đăk Pék');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đăk Plô');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Xốp');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Ngọc Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đăk Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đăk Môn');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Bờ Y');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Dục Nông');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Sa Loong');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Đăk Tô');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đăk Sao');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đăk Tờ Kan');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Tu Mơ Rông');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Ngọk Tụ');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Mô Rai');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Kon Đào');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Măng Ri');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Măng Bút');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Măng Đen');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Kon Plông');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đăk Rve');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đăk Kôi');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Kon Braih');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Ia Tơi');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Đăk Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đăk Pxi');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Đăk Ui');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Đăk Mar');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Ngọk Réo');

INSERT INTO
    public.ward (province_id, name)
VALUES (51, 'Xã Sa Thầy');

INSERT INTO public.ward (province_id, name) VALUES (51, 'Xã Rờ Kơi');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Grai');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Quy Nhơn Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Quy Nhơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Quy Nhơn Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Quy Nhơn Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Quy Nhơn Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Nhơn Châu');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã An Lão');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã An Vinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã An Toàn');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã An Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Tam Quan');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Bồng Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Hoài Nhơn Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Hoài Nhơn Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Hoài Nhơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Hoài Nhơn Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Hoài Nhơn Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Hoài Ân');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ân Hảo');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Vạn Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ân Tường');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Kim Sơn');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Phù Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Bình Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Phù Mỹ Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Phù Mỹ Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Phù Mỹ Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã An Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Phù Mỹ Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Vĩnh Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Vĩnh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Vĩnh Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Vĩnh Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Tây Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Bình Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Bình Khê');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Bình An');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Bình Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Phù Cát');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Đề Gi');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Hội Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Hòa Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Cát Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Xuân An');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ngô Mây');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Bình Định');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường An Nhơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường An Nhơn Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường An Nhơn Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã An Nhơn Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường An Nhơn Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Tuy Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Tuy Phước Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Tuy Phước Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Tuy Phước Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Vân Canh');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Canh Liên');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Canh Vinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Diên Hồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Pleiku');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Thống Nhất');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Hội Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Biển Hồ');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường An Phú');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Gào');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường An Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường An Khê');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Cửu An');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Kbang');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Đak Rong');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Sơn Lang');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Krong');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Tơ Tung');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Kông Bơ La');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Đak Đoa');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Đak Sơmei');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Kon Gang');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Băng');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã KDang');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Chư Păh');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Khươl');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Ly');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Phí');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Hrung');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Krái');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia O');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Chia');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Mang Yang');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ayun');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Hra');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Lơ Pang');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Kon Chiêng');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Kông Chro');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Chư Krey');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ya Ma');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Đăk Song');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Chơ Long');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Đức Cơ');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Krêl');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Dơk');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Dom');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Pnôn');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Nan');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Chư Prông');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Bàu Cạn');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Tôr');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Boòng');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Púch');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Pia');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Lâu');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Mơ');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Chư Sê');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Chư Pưh');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Bờ Ngoong');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Al Bá');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Hrú');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Ko');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Le');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Đak Pơ');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ya Hội');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Pờ Tó');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Pa');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Tul');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Phú Thiện');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Phường Ayun Pa');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Chư A Thai');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Hiao');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Rbol');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Ia Sao');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Phú Túc');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Dreh');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã Uar');

INSERT INTO
    public.ward (province_id, name)
VALUES (52, 'Xã Ia Rsai');

INSERT INTO public.ward (province_id, name) VALUES (52, 'Xã SRó');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Đông Khánh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Tây Khánh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Khánh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Suối Dầu');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Suối Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Diên Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Diên Thọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Diên Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Diên Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Diên Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Nam Khánh Vĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Tây Khánh Vĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Bắc Khánh Vĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Trung Khánh Vĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Khánh Vĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Nam Ninh Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Hòa Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Tân Định');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Đông Ninh Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Hòa Trí');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Tây Ninh Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Bắc Ninh Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Ninh Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Vạn Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Vạn Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Thuận Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Đại Lãnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Tu Bông');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Vạn Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Nam Cam Ranh');

INSERT INTO public.ward (province_id, name) VALUES (56, 'Xã Cam An');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Cam Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Cam Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Cam Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Đặc khu Trường Sa');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Phước Hữu');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Phước Dinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Phước Hậu');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Ninh Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Xuân Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Ninh Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Thuận Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Vĩnh Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Công Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Ninh Chử');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Anh Dũng');

INSERT INTO public.ward (province_id, name) VALUES (56, 'Xã Mỹ Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Lâm Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Ninh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Bác Ái Đông');

INSERT INTO public.ward (province_id, name) VALUES (56, 'Xã Bác Ái');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Bác Ái Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Đông Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Phan Rang');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Bảo An');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Đô Vinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Ba Ngòi');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Cam Ranh');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Bắc Cam Ranh');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Nam Nha Trang');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Tây Nha Trang');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Nha Trang');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Phường Bắc Nha Trang');

INSERT INTO public.ward (province_id, name) VALUES (56, 'Xã Cà Ná');

INSERT INTO
    public.ward (province_id, name)
VALUES (56, 'Xã Phước Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã M''Drắk');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Phú Hòa 1');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Phú Hòa 2');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Hòa Xuân');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Hòa Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Hòa Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Hòa Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Đông Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Tây Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Sơn Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Phú Yên');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ea Ly');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ea Bá');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Đức Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Sông Hinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Suối Trai');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Vân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Tây Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Sơn Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Tuy An Nam');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ô Loan');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Tuy An Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Tuy An Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Tuy An Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Xuân Phước');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Phú Mỡ');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Xuân Lãnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Đồng Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Xuân Đài');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Xuân Thọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Xuân Cảnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Xuân Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Sông Cầu');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Bình Kiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Tuy Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Tân Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Buôn Ma Thuột');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Thành Nhất');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Tân An');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Ea Kao');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Hòa Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea Drăng');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea H''Leo');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea Hiao');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ea Wy');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea Khăl');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ea Súp');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ia Lốp');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ea Rốk');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ia Rvê');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea Bung');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Buôn Đôn');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ea Wer');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea Nuôl');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Quảng Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea Kiết');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ea Tul');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Cư M''gar');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea M''Droh');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Cuôr Đăng');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Buôn Hồ');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Krông Búk');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Cư Pơng');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Pơng Drang');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea Drông');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Phường Cư Bao');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Krông Năng');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Dliê Ya');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Tam Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Phú Xuân');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ea Kar');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea Knốp');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ea Păl');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ea Ô');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Cư Yang');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Cư Prao');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea Riêng');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Cư M''ta');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Krông Á');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea Trang');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Krông Bông');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Dang Kang');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Hòa Sơn');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Cư Pui');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Yang Mao');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Krông Pắc');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ea Kly');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ea Phê');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea Knuếc');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Tân Tiến');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Vụ Bổn');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Krông Ana');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea Ning');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Ea Ktur');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Ea Na');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Dray Bhăng');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Dur Kmăl');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Liên Sơn Lắk');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Đắk Liêng');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Đắk Phơi');

INSERT INTO
    public.ward (province_id, name)
VALUES (66, 'Xã Krông Nô');

INSERT INTO public.ward (province_id, name) VALUES (66, 'Xã Nam Ka');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hàm Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường La Gi');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường Phước Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Tân Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Trà Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Nam Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hoài Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đức Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Suối Kiết');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đồng Kho');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Nghị Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Bắc Ruộng');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Tánh Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Tân Thành');

INSERT INTO public.ward (province_id, name) VALUES (68, 'Xã La Dạ');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Tân Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hàm Kiệm');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hàm Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hàm Thuận Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hàm Liêm');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hàm Thuận Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hồng Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đông Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường Mũi Né');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường Phú Thuỷ');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường Hàm Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường Phan Thiết');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường Tiến Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường Bình Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Tuyên Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Liên Hương');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Phan Rí Cửa');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Tuy Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Vĩnh Hảo');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Bắc Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Phan Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hải Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Đặc khu Phú Quý');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Sông Lũy');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Lương Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hồng Thái');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hòa Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hàm Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường Bắc Gia Nghĩa');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường Nam Gia Nghĩa');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Quảng Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường Đông Gia Nghĩa');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Quảng Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đam Rông 4');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Lạc Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (
        68,
        'Phường Lang Biang - Đà Lạt'
    );

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường 3 Bảo Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường 1 Bảo Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường 2 Bảo Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (
        68,
        'Phường Xuân Trường - Đà Lạt'
    );

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường Cam Ly - Đà Lạt');

INSERT INTO
    public.ward (province_id, name)
VALUES (
        68,
        'Phường Xuân Hương - Đà Lạt'
    );

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đinh Văn Lâm Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đam Rông 3');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đam Rông 2');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Nam Hà Lâm Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đam Rông 1');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Phú Sơn Lâm Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Phúc Thọ Lâm Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Tân Hà Lâm Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đơn Dương');

INSERT INTO public.ward (province_id, name) VALUES (68, 'Xã D''Ran');

INSERT INTO public.ward (province_id, name) VALUES (68, 'Xã Ka Đô');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Quảng Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đức Trọng');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hiệp Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Tân Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Ninh Gia');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Tà Năng');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Tà Hine');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Di Linh');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đinh Trang Thượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Gia Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Bảo Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hòa Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Hòa Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Sơn Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Bảo Lâm 1');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Bảo Lâm 5');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Bảo Lâm 4');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Bảo Lâm 2');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Bảo Lâm 3');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đạ Huoai');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đạ Huoai 2');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đạ Huoai 3');

INSERT INTO public.ward (province_id, name) VALUES (68, 'Xã Đạ Tẻh');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đạ Tẻh 3');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đạ Tẻh 2');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Cát Tiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Cát Tiên 3');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Cát Tiên 2');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Nam Ban Lâm Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Phường B''Lao');

INSERT INTO
    public.ward (province_id, name)
VALUES (
        68,
        'Phường Lâm Viên - Đà Lạt'
    );

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Quảng Tín');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Nhân Cơ');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Quảng Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Tuy Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Quảng Trực');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Kiến Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Trường Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Thuận Hạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đắk Song');

INSERT INTO public.ward (province_id, name) VALUES (68, 'Xã Đức An');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Quảng Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Nâm Nung');

INSERT INTO public.ward (province_id, name) VALUES (68, 'Xã Nam Đà');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Krông Nô');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Thuận An');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đắk Sắk');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đắk Mil');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đức Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Nam Dong');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Đắk Wil');

INSERT INTO public.ward (province_id, name) VALUES (68, 'Xã Cư Jút');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Tà Đùng');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Quảng Khê');

INSERT INTO public.ward (province_id, name) VALUES (68, 'Xã Sơn Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (68, 'Xã Tân Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Tân Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Bình Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Đồng Xoài');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Phước Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Phước Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Bù Gia Mập');

INSERT INTO public.ward (province_id, name) VALUES (75, 'Xã Đăk Ơ');

INSERT INTO public.ward (province_id, name) VALUES (75, 'Xã Đa Kia');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Bình Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Phú Riềng');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Long Hà');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Phú Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Phú Nghĩa');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Lộc Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Lộc Tấn');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Lộc Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Lộc Quang');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Lộc Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Lộc Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Thiện Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Hưng Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Tân Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Bình Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường An Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Tân Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Minh Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Tân Quan');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Tân Khai');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Đồng Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Thuận Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Đồng Tâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Bù Đăng');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Đak Nhau');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Thọ Sơn');

INSERT INTO public.ward (province_id, name) VALUES (75, 'Xã Bom Bo');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Nghĩa Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Phước Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Chơn Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Minh Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Nha Bích');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Trảng Dài');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Hố Nai');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Tam Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Long Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Trấn Biên');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Biên Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Long Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Bình Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Bảo Vinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Xuân Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Hàng Gòn');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Tân Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Đak Lua');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Nam Cát Tiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Phú Lâm');

INSERT INTO public.ward (province_id, name) VALUES (75, 'Xã Trị An');

INSERT INTO public.ward (province_id, name) VALUES (75, 'Xã Phú Lý');

INSERT INTO public.ward (province_id, name) VALUES (75, 'Xã Tân An');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Tân Triều');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Định Quán');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Thanh Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Phú Vinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Phú Hòa');

INSERT INTO public.ward (province_id, name) VALUES (75, 'Xã La Ngà');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Trảng Bom');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Bàu Hàm');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Bình Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Hưng Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã An Viễn');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Thống Nhất');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Gia Kiệm');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Dầu Giây');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Xuân Quế');

INSERT INTO public.ward (province_id, name) VALUES (75, 'Xã Cẩm Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Xuân Đường');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Xuân Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Sông Ray');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Long Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Tam Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Phước Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Phường Long Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã An Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Bình An');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Long Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Phước Thái');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Xuân Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Xuân Bắc');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Xuân Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Xuân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Xuân Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Xuân Định');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Nhơn Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Đại Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (75, 'Xã Phước An');

INSERT INTO public.ward (province_id, name) VALUES (75, 'Xã Tà Lài');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã An Thới Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Đông Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Đông Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Lái Thiêu');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Thuận Giao');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường An Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Thuận An');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Phước Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã An Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Phước Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Phú Giáo');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Hòa Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Thới Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tây Nam');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Long Nguyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Chánh Phú Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Bàu Bàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Trừ Văn Thố');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bến Cát');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Thanh An');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Uyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Long Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Minh Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Dầu Tiếng');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Chánh Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Phú An');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Phú Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Thủ Dầu Một');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Thủ Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Long Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tăng Nhơn Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Phước Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Long Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Long Trường');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường An Nhơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường An Hội Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường An Hội Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Gò Vấp');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Hạnh Thông');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Thông Tây Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Lợi Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Quới');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Gia Định');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Thạnh Mỹ Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Sơn Nhất');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Sơn Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bảy Hiền');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tây Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Sơn Nhì');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Phú Thọ Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Phú Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Đức Nhuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Cầu Kiệu');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Phú Nhuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường An Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Trưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Cát Lái');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Xuân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Nhiêu Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bàn Cờ');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Hòa Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Diên Hồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Vườn Lài');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Hòa Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Phú Thọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Thới');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Minh Phụng');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Xóm Chiếu');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Khánh Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Vĩnh Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Chợ Quán');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường An Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Chợ Lớn');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Phú Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Tiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Chánh Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Phú Định');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Hưng Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Trị Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Tạo');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường An Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Phú Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Tân An Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã An Nhơn Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Nhuận Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Thái Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Phú Hòa Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Bình Mỹ');

INSERT INTO public.ward (province_id, name) VALUES (79, 'Xã Củ Chi');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Hóc Môn');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Đông Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Xuân Thới Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Bà Điểm');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Tân Nhựt');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Vĩnh Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Tân Vĩnh Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Bình Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Bình Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Hưng Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Bình Chánh');

INSERT INTO public.ward (province_id, name) VALUES (79, 'Xã Nhà Bè');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Hiệp Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Cần Giờ');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Bình Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Dĩ An');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Thạnh An');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Bắc Tân Uyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Thường Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Vĩnh Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bình Cơ');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Hiệp');

INSERT INTO public.ward (province_id, name) VALUES (79, 'Xã Đất Đỏ');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Đặc khu Côn Đảo');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Vũng Tàu');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tam Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Rạch Dừa');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Phước Thắng');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Long Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bà Rịa');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Long Hương');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tam Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Ngãi Giao');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Xuân Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Bình Giã');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Châu Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Kim Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Nghĩa Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Hồ Tràm');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Xuyên Mộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Bàu Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Hòa Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Hòa Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Bình Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Long Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Long Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Phước Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Phú Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Xã Châu Pha');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Định');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Sài Gòn');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Bến Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Cầu Ông Lãnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường An Phú Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Thới An');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tân Thới Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Trung Mỹ Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Đông Hưng Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Linh Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Tam Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (79, 'Phường Hiệp Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường An Tịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Phước Chỉ');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Hưng Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường Trảng Bàng');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Long Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Long Chữ');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Bến Cầu');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường Gia Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Truông Mít');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Phước Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Thạnh Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường Gò Dầu');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường Hòa Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường Thanh Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường Long Hoa');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Ninh Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Hòa Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Phước Vinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Hảo Đước');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Châu Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Vĩnh Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Biên');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Rạch Kiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường Tân Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Long Cang');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường Bình Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Lộc Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Cầu Khởi');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường Ninh Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Dương Minh Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Trà Vong');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Thạnh Bình');

INSERT INTO public.ward (province_id, name) VALUES (80, 'Xã Mỹ Lệ');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Lân');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Long Hựu');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Cần Giuộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Phước Lý');

INSERT INTO public.ward (province_id, name) VALUES (80, 'Xã Mỹ Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Phước Vĩnh Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Tập');

INSERT INTO public.ward (province_id, name) VALUES (80, 'Xã Tầm Vu');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Vĩnh Công');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Thuận Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã An Lục Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường Long An');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường Tân An');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường Khánh Hậu');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Hưng Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Vĩnh Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Vĩnh Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Khánh Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tuyên Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Phường Kiến Tường');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Bình Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Bình Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tuyên Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Mộc Hóa');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Nhơn Hòa Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Hậu Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Nhơn Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Thạnh Hóa');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Bình Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Thạnh Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Đông Thành');

INSERT INTO public.ward (province_id, name) VALUES (80, 'Xã Mỹ Quý');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Đức Huệ');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Hậu Nghĩa');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Đức Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã An Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Hiệp Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Đức Lập');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Mỹ Hạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Hòa Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Bến Lức');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Thạnh Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Lương Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Bình Đức');

INSERT INTO public.ward (province_id, name) VALUES (80, 'Xã Mỹ Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Thủ Thừa');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Mỹ Thạnh');

INSERT INTO public.ward (province_id, name) VALUES (80, 'Xã Mỹ An');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Tân Trụ');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Nhựt Tảo');

INSERT INTO public.ward (province_id, name) VALUES (80, 'Xã Vàm Cỏ');

INSERT INTO
    public.ward (province_id, name)
VALUES (80, 'Xã Cần Đước');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Nhị Quý');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Đạo Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Mỹ Tho');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Thới Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Mỹ Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Trung An');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Long Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Gò Công');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Bình Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Phước 1');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Phước 2');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Hưng Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Phước 3');

INSERT INTO public.ward (province_id, name) VALUES (82, 'Xã Cái Bè');

INSERT INTO public.ward (province_id, name) VALUES (82, 'Xã Hậu Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Mỹ Thiện');

INSERT INTO public.ward (province_id, name) VALUES (82, 'Xã Hội Cư');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Mỹ Đức Tây');

INSERT INTO public.ward (province_id, name) VALUES (82, 'Xã Mỹ Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Thanh Hưng');

INSERT INTO public.ward (province_id, name) VALUES (82, 'Xã An Hữu');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Mỹ Phước Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Thanh Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Cai Lậy');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Thạnh Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Mỹ Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Bình Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Hiệp Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Long Tiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Ngũ Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Châu Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Hương');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Long Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Long Định');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Bình Trưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Vĩnh Kim');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Kim Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Chợ Gạo');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Mỹ Tịnh An');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Lương Hòa Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Thuận Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã An Thạnh Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Bình Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Vĩnh Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Đồng Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Phú Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Vĩnh Hựu');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Long Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Thới');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Phú Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Gia Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Sơn Qui');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Gò Công Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Cao Lãnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Mỹ Ngãi');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Mỹ Trà');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Sa Đéc');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Hồng');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Hộ Cơ');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã An Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường An Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Hồng Ngự');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Thường Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Phường Thường Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Long Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Long Phú Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tràm Chim');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tam Nông');

INSERT INTO public.ward (province_id, name) VALUES (82, 'Xã An Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Phú Cường');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã An Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Phú Thọ');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tháp Mười');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Phương Thịnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Trường Xuân');

INSERT INTO public.ward (province_id, name) VALUES (82, 'Xã Mỹ Quí');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Đốc Binh Kiều');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Thanh Mỹ');

INSERT INTO public.ward (province_id, name) VALUES (82, 'Xã Mỹ Thọ');

INSERT INTO public.ward (province_id, name) VALUES (82, 'Xã Ba Sao');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Phong Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Mỹ Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Bình Hàng Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Thanh Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Bình Thành');

INSERT INTO public.ward (province_id, name) VALUES (82, 'Xã Lấp Vò');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Mỹ An Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Khánh Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Hòa Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Dương');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Lai Vung');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Phong Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Phú Hựu');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Nhuận Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (82, 'Xã Tân Phú Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Phong Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tam Ngãi');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tiểu Cần');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Hùng Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tập Ngãi');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Châu Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Song Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Hòa Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Hưng Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Hòa Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Long Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Cầu Ngang');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Mỹ Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Vinh Kim');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Nhị Trường');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Hiệp Mỹ');

INSERT INTO public.ward (province_id, name) VALUES (86, 'Xã Trà Cú');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tập Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Lưu Nghiệp Anh');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Hàm Giang');

INSERT INTO public.ward (province_id, name) VALUES (86, 'Xã Đại An');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Đôn Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Càng Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Long Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Duyên Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Long Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Trường Long Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Long Hữu');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Ngũ Lạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Long Vĩnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Đông Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Long Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Phước Hậu');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Tân Ngãi');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã An Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Thanh Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Tân Hạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Long Hồ');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Phú Quới');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Nhơn Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Bình Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Cái Nhum');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tân Long Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Trung Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Quới An');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Quới Thiện');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Trung Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Trung Ngãi');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Hiếu Phụng');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Hiếu Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tam Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Cái Ngang');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Hòa Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Song Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Ngãi Tứ');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Cái Vồn');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Bình Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tân Lược');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Mỹ Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tân Quới');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Đông Thành');

INSERT INTO public.ward (province_id, name) VALUES (86, 'Xã Trà Ôn');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Hòa Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Trà Côn');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Vĩnh Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Lục Sĩ Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Long Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Nguyệt Hóa');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Trà Vinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Thạnh Phong');

INSERT INTO public.ward (province_id, name) VALUES (86, 'Xã An Qui');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Thạnh Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Đại Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Quới Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Thạnh Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tân Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã An Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã An Ngãi Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tân Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Bảo Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Mỹ Chánh Hòa');

INSERT INTO public.ward (province_id, name) VALUES (86, 'Xã Ba Tri');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Thới Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Thạnh Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Thạnh Trị');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Châu Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Lộc Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Phú Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Bình Đại');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Hưng Nhượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tân Hào');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Phú Khương');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường An Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Sơn Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Bến Tre');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Giao Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Phú Túc');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Phước Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Châu Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Lương Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Lương Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Giồng Trôm');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Hương Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Thành Thới');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã An Định');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Nhuận Phú Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Đồng Khởi');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tân Thành Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Phước Mỹ Trung');

INSERT INTO public.ward (province_id, name) VALUES (86, 'Xã Mỏ Cày');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Hưng Khánh Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Vĩnh Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Phú Phụng');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Chợ Lách');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tiên Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Phường Phú Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Tân Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã An Trường');

INSERT INTO public.ward (province_id, name) VALUES (86, 'Xã Tân An');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Bình Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã Nhị Long');

INSERT INTO public.ward (province_id, name) VALUES (86, 'Xã Cầu Kè');

INSERT INTO
    public.ward (province_id, name)
VALUES (86, 'Xã An Phú Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Tịnh Biên');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Bình Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Mỹ Thới');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Long Xuyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Mỹ Hòa Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Châu Đốc');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Vĩnh Tế');

INSERT INTO public.ward (province_id, name) VALUES (91, 'Xã An Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Khánh Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Nhơn Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Phú Hữu');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh Hậu');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Tân Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Long Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh Xương');

INSERT INTO public.ward (province_id, name) VALUES (91, 'Xã Tân An');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Châu Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Phú Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Chợ Vàm');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Phú Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Hòa Lạc');

INSERT INTO public.ward (province_id, name) VALUES (91, 'Xã Phú An');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Bình Thạnh Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Châu Phú');

INSERT INTO public.ward (province_id, name) VALUES (91, 'Xã Mỹ Đức');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh Thạnh Trung');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Thạnh Mỹ Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Bình Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Thới Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Chi Lăng');

INSERT INTO public.ward (province_id, name) VALUES (91, 'Xã An Cư');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Núi Cấm');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Tri Tôn');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Ba Chúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh Gia');

INSERT INTO public.ward (province_id, name) VALUES (91, 'Xã Ô Lâm');

INSERT INTO public.ward (province_id, name) VALUES (91, 'Xã Cô Tô');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã An Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Cần Đăng');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh An');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Bình Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh Hanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Chợ Mới');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Long Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Cù Lao Giêng');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Nhơn Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Long Kiến');

INSERT INTO public.ward (province_id, name) VALUES (91, 'Xã Hội An');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Thoại Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Phú Hòa');

INSERT INTO public.ward (province_id, name) VALUES (91, 'Xã Óc Eo');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Tây Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Định Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Rạch Giá');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Vĩnh Thông');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Tô Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Phường Hà Tiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Tiên Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Kiên Lương');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Hòa Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh Điều');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Giang Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Sơn Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Hòn Nghệ');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Hòn Đất');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Bình Sơn');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Bình Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Sơn Kiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Mỹ Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Tân Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Tân Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Thạnh Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Châu Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Thạnh Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Bình An');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Giồng Riềng');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Thạnh Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Ngọc Chúc');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Hòa Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Long Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Hòa Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Gò Quao');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Định Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh Hòa Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh Tuy');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã An Biên');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Tây Yên');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Đông Thái');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Đông Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã U Minh Thượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Tân Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Đông Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vân Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh Phong');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã Vĩnh Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Đặc khu Kiên Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Đặc khu Thổ Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Đặc khu Phú Quốc');

INSERT INTO
    public.ward (province_id, name)
VALUES (91, 'Xã An Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Cái Răng');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Hưng Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Thốt Nốt');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Tân Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Trung Nhứt');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Thuận Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Thạnh An');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Vĩnh Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Vĩnh Trinh');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Thạnh Quới');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Thạnh Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Trung Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Thới Lai');

INSERT INTO public.ward (province_id, name) VALUES (92, 'Xã Cờ Đỏ');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Thới Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Đông Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Đông Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Trường Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Trường Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Phong Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Trường Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Nhơn Ái');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Vị Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Vị Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Hỏa Lựu');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Ngã Bảy');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Tân Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Trường Long Tây');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Thạnh Xuân');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Châu Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Đông Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Phú Hữu');

INSERT INTO public.ward (province_id, name) VALUES (92, 'Xã Hòa An');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Hiệp Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Tân Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Thạnh Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Đại Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Phụng Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Thới Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Ô Môn');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường An Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Phương Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Tân Phước Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Vị Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Vĩnh Thuận Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Vĩnh Tường');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Vị Thanh 1');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Long Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Long Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Long Phú 1');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Vĩnh Viễn');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Lương Tâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Xà Phiên');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Sóc Trăng');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Phú Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Kế Sách');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã An Lạc Thôn');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Phong Nẫm');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Thới An Hội');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Nhơn Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Đại Hải');

INSERT INTO public.ward (province_id, name) VALUES (92, 'Xã Mỹ Tú');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Phú Tâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Hồ Đắc Kiện');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Long Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Thuận Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Mỹ Hương');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã An Ninh');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Mỹ Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã An Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Cù Lao Dung');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Long Phú');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Đại Ngãi');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Trường Khánh');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Tân Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Trần Đề');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Liêu Tú');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Lịch Hội Thượng');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Mỹ Xuyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Tài Văn');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Thạnh Thới An');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Nhu Gia');

INSERT INTO public.ward (province_id, name) VALUES (92, 'Xã Hòa Tú');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Ngọc Tố');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Gia Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Ngã Năm');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Tân Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Mỹ Quới');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Phú Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Lâm Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Vĩnh Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Vĩnh Châu');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Tân An');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Khánh Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Vĩnh Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Vĩnh Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Xã Lai Hòa');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Ninh Kiều');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Cái Khế');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Phước Thới');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Bình Thủy');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Thới An Đông');

INSERT INTO
    public.ward (province_id, name)
VALUES (92, 'Phường Long Tuyền');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Vĩnh Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Hòa Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Phong Hiệp');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Vĩnh Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Vĩnh Hậu');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Phường Giá Rai');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Phường Láng Tròn');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Phong Thạnh');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Gành Hào');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Đông Hải');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Long Điền');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã An Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Đất Mũi');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Ninh Thạnh Lợi');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Ninh Quới');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Hồng Dân');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Phước Long');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Phường Hiệp Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Phường Vĩnh Trạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Vĩnh Thanh');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Vĩnh Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Vĩnh Phước');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Định Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Phường An Xuyên');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Phường Lý Văn Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Phường Tân Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Phường Hòa Thành');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Nguyễn Phích');

INSERT INTO public.ward (province_id, name) VALUES (96, 'Xã U Minh');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Khánh An');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Khánh Lâm');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Thới Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Biển Bạch');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Trí Phải');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Tân Lộc');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Hồ Thị Kỷ');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Trần Văn Thời');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Sông Đốc');

INSERT INTO public.ward (province_id, name) VALUES (96, 'Xã Đá Bạc');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Khánh Bình');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Khánh Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Cái Nước');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Lương Thế Trân');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Tân Hưng');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Hưng Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Đầm Dơi');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Tạ An Khương');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Trần Phán');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Tân Thuận');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Quách Phẩm');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Thanh Tùng');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Tân Tiến');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Năm Căn');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Đất Mới');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Tam Giang');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Cái Đôi Vàm');

INSERT INTO public.ward (province_id, name) VALUES (96, 'Xã Phú Mỹ');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Phú Tân');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Nguyễn Việt Khái');

INSERT INTO public.ward (province_id, name) VALUES (96, 'Xã Tân Ân');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Phan Ngọc Hiển');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Phường Bạc Liêu');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Châu Thới');

INSERT INTO
    public.ward (province_id, name)
VALUES (96, 'Xã Hưng Hội');

BEGIN;

-- 1) Đánh số sẵn ward để chọn ngẫu nhiên nhanh
CREATE TEMP TABLE ward_pick ON
COMMIT
DROP AS
SELECT row_number() OVER (
        ORDER BY id
    ) AS rn, id AS ward_id, province_id
FROM ward;

CREATE UNIQUE INDEX ON ward_pick (rn);

ANALYZE ward_pick;

-- 2) Insert 10.000 company + sinh company_address
WITH
    new_company AS (
        INSERT INTO
            company (
                tax,
                name,
                name_eng,
                description,
                email,
                phone,
                website,
                rate,
                created_by
            )
        SELECT
            '04' || lpad(g::text, 8, '0'), -- đổi prefix nếu chạy lại
            'Công ty ' || t.loai || ' ' || t.ten || ' ' || g,
            t.loai_eng || ' ' || t.ten_eng || ' ' || g || ' Co., Ltd',
            'Mô tả công ty số ' || g,
            'hr' || g || '@congty' || g || '.com.vn',
            '09' || lpad(
                (floor(random() * 100000000))::int::text,
                8,
                '0'
            ),
            'https://congty' || g || '.com.vn',
            (1 + floor(random() * 5))::int,
            1
        FROM generate_series(1, 10000) AS g
            CROSS JOIN LATERAL (
                SELECT (
                        ARRAY[
                            'TNHH', 'Cổ phần', 'TNHH MTV', 'TNHH Thương mại', 'Cổ phần Công nghệ'
                        ]
                    ) [1 + floor(random() * 5)::int] AS loai, (
                        ARRAY[
                            'Ltd', 'JSC', 'Ltd', 'Trading', 'Tech JSC'
                        ]
                    ) [1 + floor(random() * 5)::int] AS loai_eng, (
                        ARRAY[
                            'An Phát', 'Hưng Thịnh', 'Minh Long', 'Đại Việt', 'Phương Nam', 'Sao Mai', 'Việt Tín', 'Thành Công', 'Hoàng Gia', 'Tân Á'
                        ]
                    ) [1 + floor(random() * 10)::int] AS ten, (
                        ARRAY[
                            'An Phat', 'Hung Thinh', 'Minh Long', 'Dai Viet', 'Phuong Nam', 'Sao Mai', 'Viet Tin', 'Thanh Cong', 'Hoang Gia', 'Tan A'
                        ]
                    ) [1 + floor(random() * 10)::int] AS ten_eng
                WHERE
                    g > 0
            ) t
        RETURNING
            id
    ),
    company_n AS (
        -- 60% = 1 địa chỉ | 30% = 2-3 | 10% = 5-6
        SELECT
            id,
            CASE
                WHEN r < 0.60 THEN 1
                WHEN r < 0.90 THEN 2 + floor(random() * 2)::int
                ELSE 5 + floor(random() * 2)::int
            END AS n
        FROM (
                SELECT id, random() AS r
                FROM new_company
            ) x
    ),
    addr_seed AS (
        SELECT
            c.id AS company_id,
            1 + floor(
                random() * (
                    SELECT count(*)
                    FROM ward_pick
                )
            )::int AS rn,
            (1 + floor(random() * 300))::int AS so_nha,
            1 + floor(random() * 10)::int AS duong
        FROM company_n c
            CROSS JOIN LATERAL generate_series(1, c.n) AS s (i)
    )
INSERT INTO
    company_address (
        company_id,
        province_id,
        ward_id,
        address_detail,
        created_by
    )
SELECT a.company_id, p.province_id, p.ward_id, a.so_nha || ' ' || (
        ARRAY[
            'Nguyễn Trãi', 'Lê Lợi', 'Trần Hưng Đạo', 'Hai Bà Trưng', 'Lý Thường Kiệt', 'Phạm Văn Đồng', 'Nguyễn Huệ', 'Điện Biên Phủ', 'Võ Văn Kiệt', 'Láng Hạ'
        ]
    ) [a.duong], 1
FROM addr_seed a
    JOIN ward_pick p ON p.rn = a.rn;

COMMIT;

-- Có thể chạy trực tiếp hoặc trong transaction của client; DO block không tự COMMIT.

-- 1) Đánh số sẵn ward để chọn ngẫu nhiên nhanh (province_id luôn khớp ward_id)
DROP TABLE IF EXISTS ward_pick;

CREATE TEMP TABLE ward_pick AS
SELECT row_number() OVER (
        ORDER BY id
    ) AS rn, id AS ward_id, province_id
FROM ward;

CREATE UNIQUE INDEX ON ward_pick (rn);

ANALYZE ward_pick;

-- 2) Insert 1.000.000 candidate + cv
DO $$
DECLARE
total   int := 1000000;
    batch   int := 100000;
    n_ward  int;
    b       int;
BEGIN
SELECT count(*) INTO n_ward FROM ward_pick;

FOR b IN 0 .. (total / batch - 1) LOOP

        WITH new_cand AS (
            INSERT INTO candidate (name, phone, email, gender, province_id, ward_id, address_detail, created_by)
            SELECT
                (ARRAY['Nguyễn','Trần','Lê','Phạm','Hoàng','Huỳnh','Phan','Vũ','Võ','Đặng','Bùi','Đỗ','Hồ','Ngô','Dương'])[1 + floor(random()*15)::int]
                || ' ' ||
                (ARRAY['Văn','Thị','Minh','Hữu','Ngọc','Quốc','Thanh','Đức','Anh','Gia'])[1 + floor(random()*10)::int]
                || ' ' ||
                (ARRAY['An','Bình','Cường','Dũng','Hà','Hải','Hùng','Lan','Linh','Nam','Phúc','Quân','Sơn','Trang','Tuấn','Vy'])[1 + floor(random()*16)::int],
                '0' || (ARRAY['3','5','7','8','9'])[1 + floor(random()*5)::int]
                    || lpad((floor(random() * 100000000))::int::text, 8, '0'),
                'candidate' || s.g || '@mail.com',
                (ARRAY['Nam','Nữ','Khác'])[CASE WHEN random() < 0.48 THEN 1 WHEN random() < 0.96 THEN 2 ELSE 3 END],
                w.province_id,
                w.ward_id,
                (1 + floor(random() * 300))::int || ' ' ||
                (ARRAY['Nguyễn Trãi','Lê Lợi','Trần Hưng Đạo','Hai Bà Trưng','Lý Thường Kiệt',
                       'Phạm Văn Đồng','Nguyễn Huệ','Điện Biên Phủ','Võ Văn Kiệt','Láng Hạ'])[1 + floor(random()*10)::int],
                1
            FROM (
                SELECT g, 1 + floor(random() * n_ward)::int AS rn
                FROM generate_series(b * batch + 1, (b + 1) * batch) AS g
            ) s
            JOIN ward_pick w ON w.rn = s.rn
            RETURNING id
        )
        INSERT INTO cv (candidate_id, title, file_name, file_key, created_by)
SELECT
    c.id,
    (ARRAY['CV Backend Developer','CV Frontend Developer','CV Kế toán','CV Marketing',
     'CV Nhân sự','CV Kinh doanh','CV Data Analyst','CV Thiết kế đồ họa',
     'CV Tester','CV Quản lý dự án'])[1 + floor(random()*10)::int],
            'cv_' || c.id || '_' || k.i || '.pdf',
            'cv/' || gen_random_uuid()::text || '.pdf',
            1
FROM (
    -- 60% = 1 cv | 25% = 2 | 10% = 3 | 5% = 4-5
    SELECT id,
    CASE
    WHEN r < 0.60 THEN 1
    WHEN r < 0.85 THEN 2
    WHEN r < 0.95 THEN 3
    ELSE               4 + floor(random() * 2)::int
    END AS n
    FROM (SELECT id, random() AS r FROM new_cand) x
    ) c
    CROSS JOIN LATERAL generate_series(1, c.n) AS k(i);

RAISE NOTICE 'Done batch % / %', b + 1, total / batch;
END LOOP;
END $$;

-- Có thể chạy trực tiếp hoặc trong transaction của client; DO block không tự COMMIT.

-- =========================================================
-- 1) Seed category nếu chưa có
-- =========================================================
INSERT INTO category (name, created_by)
SELECT n, 1
FROM unnest(ARRAY[
                'Công nghệ thông tin','Kế toán - Kiểm toán','Marketing','Kinh doanh - Bán hàng',
            'Nhân sự','Thiết kế','Xây dựng','Sản xuất','Logistics - Vận tải','Giáo dục',
            'Y tế','Ngân hàng - Tài chính','Bất động sản','Du lịch - Nhà hàng - Khách sạn',
            'Pháp lý','Chăm sóc khách hàng','Hành chính - Văn phòng','Điện - Điện tử',
            'Nông nghiệp','Truyền thông - Báo chí'
                ]) AS n
WHERE NOT EXISTS (SELECT 1 FROM category);

DROP TABLE IF EXISTS cat_pick;

CREATE TEMP TABLE cat_pick AS
SELECT row_number() OVER (
        ORDER BY id
    ) AS rn, id AS category_id
FROM category;

CREATE UNIQUE INDEX ON cat_pick (rn);

-- =========================================================
-- 2) Insert job: mỗi company 0..10 job (đều nhau)
-- =========================================================
INSERT INTO
    job (
        category_id,
        company_id,
        title,
        description,
        requirement,
        benefit,
        experience,
        due_date,
        quantity,
        min_salary,
        max_salary,
        qualification,
        work_type,
        working_time,
        created_by
    )
SELECT
    cp.category_id,
    x.company_id,
    x.title,
    'Mô tả công việc: ' || x.title,
    'Yêu cầu: tối thiểu ' || x.exp || ' năm kinh nghiệm, kỹ năng giao tiếp tốt',
    'Lương thưởng hấp dẫn, bảo hiểm đầy đủ, du lịch hàng năm',
    x.exp,
    (
        current_date + (7 + floor(random() * 90))::int
    ),
    1 + floor(random() * 10)::int,
    x.min_salary,
    x.min_salary + (5 + floor(random() * 30))::int * 1000000,
    (
        ARRAY[
            'Trung cấp',
            'Cao đẳng',
            'Đại học',
            'Thạc sĩ'
        ]
    ) [1 + floor(random() * 4)::int],
    (
        ARRAY[
            'Full-time',
            'Part-time',
            'Remote',
            'Hybrid',
            'Freelance'
        ]
    ) [1 + floor(random() * 5)::int],
    (
        ARRAY[
            '08:00 - 17:00',
            '08:30 - 17:30',
            '09:00 - 18:00',
            'Ca xoay',
            'Linh hoạt'
        ]
    ) [1 + floor(random() * 5)::int],
    1
FROM (
        SELECT
            c.id AS company_id, (
                ARRAY[
                    'Backend Developer', 'Frontend Developer', 'Kế toán tổng hợp', 'Chuyên viên Marketing', 'Chuyên viên Nhân sự', 'Nhân viên Kinh doanh', 'Data Analyst', 'Thiết kế đồ họa', 'Tester', 'Quản lý dự án', 'Nhân viên CSKH', 'Trưởng nhóm kinh doanh'
                ]
            ) [1 + floor(random() * 12)::int] AS title, floor(random() * 8)::int AS exp, (5 + floor(random() * 30))::int * 1000000 AS min_salary, 1 + floor(
                random() * (
                    SELECT count(*)
                    FROM cat_pick
                )
            )::int AS cat_rn
        FROM (
                SELECT id, floor(random() * 11)::int AS n -- 0..10 job
                FROM company
            ) c
            CROSS JOIN LATERAL generate_series(1, c.n) AS s (i)
    ) x
    JOIN cat_pick cp ON cp.rn = x.cat_rn;

ANALYZE job;

-- =========================================================
-- 3) Insert job_application
-- =========================================================
DROP TABLE IF EXISTS job_pick;

CREATE TEMP TABLE job_pick AS
SELECT row_number() OVER (
        ORDER BY id
    ) AS rn, id AS job_id
FROM job;

CREATE UNIQUE INDEX ON job_pick (rn);

DROP TABLE IF EXISTS cand_pick;

CREATE TEMP TABLE cand_pick AS
SELECT row_number() OVER (
        ORDER BY c.id
    ) AS rn, c.id AS candidate_id, v.cvs
FROM candidate c
    JOIN (
        SELECT candidate_id, array_agg(id) AS cvs
        FROM cv
        GROUP BY
            candidate_id
    ) v ON v.candidate_id = c.id;

CREATE UNIQUE INDEX ON cand_pick (rn);

ANALYZE job_pick;

ANALYZE cand_pick;

DO $$
DECLARE
n_job   int;
    n_cand  int;
    batch   int := 100000;
    b       int;
BEGIN
SELECT count(*) INTO n_job  FROM job_pick;
SELECT count(*) INTO n_cand FROM cand_pick;

IF n_job = 0 THEN
        RAISE EXCEPTION 'Bảng job đang trống';
END IF;

FOR b IN 0 .. ((n_cand - 1) / batch) LOOP

        INSERT INTO job_application (job_id, candidate_id, cv_id, description, status, created_by)
SELECT
    jp.job_id,
    a.candidate_id,
    a.cvs[1 + floor(random() * array_length(a.cvs, 1))::int],
    'Tôi muốn ứng tuyển vào vị trí này',
    (ARRAY['PENDING','REVIEWING','INTERVIEW','ACCEPTED','REJECTED'])
    [CASE
                    WHEN random() < 0.40 THEN 1
                    WHEN random() < 0.65 THEN 2
                    WHEN random() < 0.80 THEN 3
                    WHEN random() < 0.90 THEN 4
                    ELSE 5
END],
            1
        FROM (
            -- DISTINCT để một candidate không apply trùng cùng một job
            SELECT DISTINCT d.candidate_id, d.cvs, d.job_rn
            FROM (
                SELECT
                    cd.candidate_id,
                    cd.cvs,
                    1 + floor(random() * n_job)::int AS job_rn
                FROM (
                    SELECT candidate_id, cvs,
                           CASE
                               WHEN r < 0.40 THEN 0                        -- 40% không apply
                               WHEN r < 0.70 THEN 1                        -- 30% apply 1
                               WHEN r < 0.85 THEN 2                        -- 15% apply 2
                               WHEN r < 0.95 THEN 3 + floor(random()*3)::int   -- 10% apply 3-5
                               ELSE               6 + floor(random()*5)::int   -- 5% apply 6-10
                           END AS n
                    FROM (
                        SELECT candidate_id, cvs, random() AS r
                        FROM cand_pick
                        WHERE rn BETWEEN b * batch + 1 AND (b + 1) * batch
                    ) t
                ) cd
                CROSS JOIN LATERAL generate_series(1, cd.n) AS s(i)
            ) d
        ) a
        JOIN job_pick jp ON jp.rn = a.job_rn;

RAISE NOTICE 'Done batch % / %', b + 1, ((n_cand - 1) / batch) + 1;
END LOOP;
END $$;

ANALYZE job_application;

-- Question 1:
SELECT
    c.id,
    c.name,
    COALESCE(
        json_agg(
            json_build_object(
                'id', j.id,
                'title', j.title,
                'experience', j.experience,
                'min_salary', j.min_salary,
                'max_salary', j.max_salary,
                'due_date', j.due_date
            )
            ORDER BY j.id
        ) FILTER (WHERE j.id IS NOT NULL),
        '[]'::json
    ) AS jobs
FROM company c
LEFT JOIN job j ON j.company_id = c.id
GROUP BY c.id, c.name
ORDER BY c.id;

-- Question 2:
WITH province_companies AS (
    SELECT DISTINCT
        ca.province_id,
        ca.company_id,
        c.name AS company_name
    FROM company_address ca
    JOIN company c ON c.id = ca.company_id
)
SELECT
    p.id AS province_id,
    p.name AS province_name,
    COUNT(pc.company_id) AS company_count,
    json_agg(
        json_build_object(
            'id', pc.company_id,
            'name', pc.company_name
        )
        ORDER BY pc.company_name
    ) AS companies
FROM province_companies pc
JOIN province p ON p.id = pc.province_id
GROUP BY p.id, p.name
ORDER BY company_count DESC
LIMIT 3;

-- Question 3:
WITH province_company_count AS (
    SELECT
        province_id,
        COUNT(DISTINCT company_id) AS company_count
    FROM company_address
    GROUP BY province_id
)
SELECT
    c.id AS company_id,
    c.name AS company_name,
    p.id AS province_id,
    p.name AS province_name,
    pcc.company_count,
    json_agg(
        json_build_object(
            'id', ca.id,
            'province_id', p.id,
            'province_name', p.name,
            'ward_id', w.id,
            'ward_name', w.name,
            'address_detail', ca.address_detail
        )
        ORDER BY ca.id
    ) AS addresses
FROM company c
JOIN company_address ca ON ca.company_id = c.id
JOIN province p ON p.id = ca.province_id
JOIN ward w ON w.id = ca.ward_id
JOIN province_company_count pcc
    ON pcc.province_id = ca.province_id
GROUP BY
    c.id,
    c.name,
    p.id,
    p.name,
    pcc.company_count
ORDER BY
    pcc.company_count DESC,
    c.name;