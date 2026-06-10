# ☕ SIM-C (Sistem Informasi Manajemen Cafe)

Aplikasi manajemen cafe berbasis web yang dirancang untuk membantu pengelolaan operasional cafe secara efisien dan terintegrasi. Dibangun dengan **Laravel 12** dan **Filament Admin v3**.

Sistem ini mencakup reservasi meja online, pengelolaan pesanan & transaksi kasir, menu digital via QR Code, serta laporan analitik bagi pemilik cafe untuk memantau performa bisnis.

---

## 🚀 Fitur Utama

- Reservasi meja online dengan timer konfirmasi 30 menit
- Manajemen status meja (kosong, reservasi, digunakan)
- Menu digital via QR Code
- payment gateway
- Input & pengelolaan pesanan pelanggan
- Manajemen status ketersediaan menu (tersedia/habis)
- Pengiriman pesanan ke dapur/barista
- Pembayaran multi-metode: Tunai, Transfer Bank, QRIS (Midtrans)
- Cetak struk & invoice pembayaran
- Laporan analitik: pendapatan, menu terlaris, jam ramai
- Dashboard Admin berbasis Filament v3
- Desain Fully Responsive (mobile & desktop)

---

## 👥 Pengguna Sistem

**Admin** — mengelola seluruh operasional cafe: memantau meja, mencatat pesanan, memproses transaksi, dan melihat laporan bisnis.

**Pelanggan** — dapat melakukan reservasi online atau datang langsung (walk-in), mengakses menu digital via QR Code, dan melakukan pembayaran di kasir.

---

## 🛠️ Teknologi yang Digunakan

- Laravel 12
- Filament Admin v3
- Livewire
- Blade Template
- Tailwind CSS
- MySQL
- Midtrans (Payment Gateway)

---

## 🧑‍💻 Cara Instalasi (Localhost)

### Requirement
- PHP **8.2+**
- Composer **2.x**
- MySQL
- Node.js & NPM

### Langkah Instalasi

1. Clone repository:
```bash
   git clone https://github.com/username/sim-c.git
   cd sim-c
```

2. Install dependency:
```bash
   composer install
   npm install && npm run build
```

3. Salin file `.env`:
```bash
   cp .env.example .env
```

4. Generate key aplikasi:
```bash
   php artisan key:generate
```

5. Sesuaikan konfigurasi `.env`:
```env
   APP_NAME=sim_c
   APP_ENV=local
   APP_URL=http://127.0.0.1:8000

   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=sim_c
   DB_USERNAME=root
   DB_PASSWORD=

   MIDTRANS_MERCHANT_ID=your_merchant_id
   MIDTRANS_CLIENT_KEY=your_client_key
   MIDTRANS_SERVER_KEY=your_server_key
   MIDTRANS_IS_PRODUCTION=false
```

6. Buat database `sim_c` via phpMyAdmin atau CLI:
```sql
   CREATE DATABASE sim_c;
```

7. Jalankan migrasi & seeder:
```bash
   php artisan migrate --seed
```

8. Buat symbolic link storage:
```bash
   php artisan storage:link
```

9. Jalankan server:
```bash
   php artisan serve
```
   Buka http://127.0.0.1:8000

---

## 🔑 Akses Admin

- URL: `http://127.0.0.1:8000/admin`
- Email: `admin@example.com`
- Password: `password`

Jika user admin belum ada, buat via Tinker:
```bash
php artisan tinker
```
```php
\App\Models\User::create([
  'name' => 'Admin',
  'email' => 'admin@example.com',
  'password' => bcrypt('password'),
]);
```

---

## 🪠 Troubleshooting

| Masalah | Solusi |
|---------|--------|
| `Class not found` saat migrate | Jalankan `composer dump-autoload` |
| Gagal konek ke database | Periksa `DB_*` di `.env` |
| Halaman `/admin` kosong | Jalankan `php artisan migrate --seed` dan pastikan user admin ada |
| Halaman blank / error 500 | Cek log di `storage/logs/laravel.log` |
| Error ekstensi `pdo_mysql` | Aktifkan ekstensi di `php.ini` |
| Upload gambar tidak muncul | Jalankan `php artisan storage:link` |
| Session/cache error | Jalankan `php artisan config:cache` dan `php artisan cache:clear` |

---

## 📦 Perintah Artisan yang Berguna

```bash
composer install           # Install dependency
php artisan migrate        # Jalankan migrasi database
php artisan migrate --seed # Migrasi + isi data awal
php artisan db:seed        # Jalankan seeder saja
php artisan storage:link   # Buat symbolic link untuk upload
php artisan config:cache   # Cache konfigurasi
php artisan cache:clear    # Hapus cache
php artisan serve          # Jalankan server lokal
php artisan tinker         # CLI interaktif
```

---

## 📄 Lisensi

Proyek ini dikembangkan untuk keperluan akademik. Hak cipta milik tim pengembang Kelompok 6, Universitas Syiah Kuala.
