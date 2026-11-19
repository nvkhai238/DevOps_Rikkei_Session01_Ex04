# Ex04 - Thiết lập thư mục ứng dụng và phân quyền sở hữu tối giản

Script: [setup-dirs.sh](setup-dirs.sh) — chạy `sudo bash setup-dirs.sh`

```bash
sudo mkdir -p /opt/quickbite/user-service
sudo chown -R quickbite:quickbite /opt/quickbite
sudo chmod 750 /opt/quickbite
ls -la /opt
```

## Ý nghĩa quyền 750

| Chữ số | Đối tượng | Quyền | Ý nghĩa |
|--------|-----------|-------|---------|
| 7 | Owner (`quickbite`) | `rwx` | Đọc, ghi, truy cập thư mục |
| 5 | Group (`quickbite`) | `r-x` | Đọc và truy cập, không được ghi |
| 0 | Others | `---` | Không có quyền gì |

Chỉ user chạy dịch vụ mới thao tác được; người dùng khác không đọc được file cấu hình chứa thông tin nhạy cảm (nguyên tắc Least Privilege).

Kết quả mong đợi: `drwxr-x--- ... quickbite quickbite ... quickbite`

Ảnh chụp: [permissions.png](permissions.png)
