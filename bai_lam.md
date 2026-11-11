# BÀI LÀM – HACKATHON 02

- **Mã đề:** 08
- **Họ tên:** Võ Hoàng Thuận
- **Lớp:** CNTT02
- **Link repository:** https://github.com/thuanVht/CNTT02_Nhap-mon_CNTT_Hackathon02
- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
# Ghi lần lượt các lệnh đã chạy, mỗi lệnh một dòng
pwd
dir
mv quy_trinh_thu_am.txt docs
mkdir backup
cp '.\data\Lich_Thu_Thang 8.xlsx' backup
rm *.tmp
cd logs
Get-ChildItem
cd ..
Get-ChildItem -Recurse -Force
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text


    Directory: C:\Users\Admin\Downloads\starter-kit\starter-kit\phong-thu-am-wedsite


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   1:42 PM                backup
d-----        11/11/2026   1:36 PM                data
d-----        11/11/2026   1:39 PM                docs
d-----        11/11/2026   1:35 PM                evidence
d-----        11/11/2026   1:36 PM                logs
d-----        11/11/2026   1:31 PM                web
------         11/3/2026   7:08 AM             74 .env
-a----         11/3/2026   7:08 AM           2409 bai_lam.md


    Directory: C:\Users\Admin\Downloads\starter-kit\starter-kit\phong-thu-am-wedsite\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM           6136 Lich_Thu_Thang 8.xlsx


    Directory: C:\Users\Admin\Downloads\starter-kit\starter-kit\phong-thu-am-wedsite\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM           6136 Lich_Thu_Thang 8.xlsx


    Directory: C:\Users\Admin\Downloads\starter-kit\starter-kit\phong-thu-am-wedsite\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM            157 quy_trinh_thu_am.txt


    Directory: C:\Users\Admin\Downloads\starter-kit\starter-kit\phong-thu-am-wedsite\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM            992 studio.log


    Directory: C:\Users\Admin\Downloads\starter-kit\starter-kit\phong-thu-am-wedsite\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   1:31 PM                images
------         11/3/2026   7:08 AM            586 app.js
------         11/3/2026   7:08 AM            514 index.html
------         11/3/2026   7:08 AM            460 style.css


    Directory: C:\Users\Admin\Downloads\starter-kit\starter-kit\phong-thu-am-wedsite\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
------         11/3/2026   7:08 AM           3097 logo-soundlab.png



```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
Select-String "status=500" logs/studio.log > ./logs/loi_500.txt

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
logs\studio.log:8:2026-08-28 08:25:34 POST /api/dat-lich status=500
logs\studio.log:11:2026-08-28 08:34:07 POST /api/thanh-toan status=500


```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
 Select-String "status=404" logs/studio.log | Measure-Object -line
```

```text

Lines Words Characters Property
----- ----- ---------- --------
    4

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\tong_hop.ps1
```

### Nội dung file logs/tong_hop.txt

```text
2026-08-28 08:16:01 GET /tin-tuc status=404
2026-08-28 08:47:51 GET /san-pham-cu status=404
2026-08-28 08:58:24 GET /images/phong-thu-2.jpg status=404
2026-08-28 09:00:35 GET /images/phong-thu-2.jpg status=404




Count    : 6
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 




```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [ ] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [ ] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [ ] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 | network| GET file:///C:/Users/Admin/Downloads/starter-kit/starter-kit/phong-thu-am-wedsite/web/images/logo-sound.png net::ERR_FILE_NOT_FOUND | sửa thành logo-soundlab.png |
| 2 |  console |app.js:18 Uncaught ReferenceError: hienThiGoiThuAm is not defined  |tại dòng 18 của java sửa từ hiển thị gói thu mm sang hien thi goi thu  |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** 
- **Expected:** 
- **Actual:** 
- **Log:** 

### Câu tìm kiếm Google

```text
site:stackoverflow.com "Uncaught ReferenceError"

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/lich_thu_thang_8.xlsx`, không cần ghi vào đây.
