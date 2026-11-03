# BÀI LÀM – HACKATHON 02

- **Mã đề:01**https://github.com/hathup23-sketch/-HNKS26CNTT3_Nhap_Mon_CNTT_Session_luyen_de- **Họ tên:Pham Thi Thu Ha
- **Lớp:CNTT3
- **Link repository:**
- **Hệ điều hành (Windows/macOS):Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
1.pwd
2.ls -Force
3. mv .\ghi_chu_ban_giao.txt .\docs\
4. mkdir backup
5.cp .\data\dat_san_thang_10.xlsx .\backup\
6.rm .\temp_002.tmp
7.cd .\logs\
8. ls
9. cd ..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
PS C:\Users\DELL\Downloads\Luyen_Tap\starter-kit\starter-kit\san-bong-website> Get-ChildItem -Recurse -Force


    Directory: C:\Users\DELL\Downloads\Luyen_Tap\starter-kit\st
    arter-kit\san-bong-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/3/2026   1:56 PM                backup
d-----         11/3/2026   1:53 PM                data
d-----         11/3/2026   1:55 PM                docs
d-----         11/3/2026   1:52 PM                evidence
d-----         11/3/2026   1:53 PM                logs
d-----         11/3/2026   1:49 PM                web
-a----         11/3/2026   1:49 PM             76 .env
-a----         11/3/2026   1:49 PM            956 access.log
-a----         11/3/2026   1:49 PM           2409 bai_lam.md
-a----         11/3/2026   1:49 PM           6074 dat_san_thang
                                                  _10.xlsx


    Directory: C:\Users\DELL\Downloads\Luyen_Tap\starter-kit\st
    arter-kit\san-bong-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   1:49 PM           6074 dat_san_thang
                                                  _10.xlsx


    Directory: C:\Users\DELL\Downloads\Luyen_Tap\starter-kit\st
    arter-kit\san-bong-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   1:49 PM           6074 dat_san_thang
                                                  _10.xlsx


    Directory: C:\Users\DELL\Downloads\Luyen_Tap\starter-kit\st
    arter-kit\san-bong-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   1:49 PM            154 ghi_chu_ban_g
                                                  iao.txt


    Directory: C:\Users\DELL\Downloads\Luyen_Tap\starter-kit\st
    arter-kit\san-bong-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   1:49 PM            956 access.log


    Directory: C:\Users\DELL\Downloads\Luyen_Tap\starter-kit\st
    arter-kit\san-bong-website\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----         11/3/2026   1:49 PM                images
-a----         11/3/2026   1:49 PM            590 app.js
-a----         11/3/2026   1:49 PM            529 index.html
-a----         11/3/2026   1:49 PM            460 style.css


    Directory: C:\Users\DELL\Downloads\Luyen_Tap\starter-kit\st
    arter-kit\san-bong-website\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   1:49 PM           3101 logo-san-bong
                                                  .png



```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
Get-Content .\logs\access.log | Select-String "500" > .\logs\loi_500.txt

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-10-28 08:24:34 POST /api/thanh-toan status=500
2026-10-28 08:28:45 POST /api/thanh-toan status=500


```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
(Get-Content .\logs\access.log | Select-String "404").Count
```

```text
4
```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\tong_hop.ps1
 Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\tong_hop.ps1

```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO SU CO WEBSITE ===


Count    : 0
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 

```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [ ] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [ ] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 | Network || `logo.png` (Lỗi 404 Not Found)| Sửa lại đường dẫn tên file ảnh trong `web/index.html` cho khớp với tên thực tế trong thư mục `web/images/`. |
| 2 |Console  | `Uncaught TypeError: Cannot read properties of null (reading 'addEventListener')` |Kiểm tra lại cú pháp DOM hoặc ID của phần tử trong file `app.js`.|

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** Khi mở trang web `web/index.html` trên trình duyệt Chrome, giao diện phần script tương tác không hoạt động.
- **Expected:** Trang web tải đầy đủ các thành phần giao diện và kịch bản JavaScript chạy thành công không có ngoại lệ.
- **Actual:** Giao diện bị khựng tính năng và bảng giá trống dữ liệu do script bị ngắt quãng.
- **Log:** 

### Câu tìm kiếm Google

```text
  Uncaught TypeError: Cannot read properties of null (reading 'addEventListener') at app.js:15

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/dat_san_thang_10.xlsx`, không cần ghi vào đây.
