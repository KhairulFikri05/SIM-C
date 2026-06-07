-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 22 Sep 2025 pada 16.43
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe_katumiri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_contents`
--

CREATE TABLE `about_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `chef_quote` text NOT NULL,
  `chef_image` varchar(255) NOT NULL,
  `establishment_year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about_contents`
--

INSERT INTO `about_contents` (`id`, `title`, `description`, `chef_quote`, `chef_image`, `establishment_year`, `created_at`, `updated_at`) VALUES
(1, 'Perjalanan Kuliner Kami', 'Kami membawa pengalaman kuliner terbaik dengan bahan-bahan segar dan koki yang penuh gairah.', 'Memasak adalah seni, dan kami adalah pelukisnya.', 'about/chef-images/01JZ7GWFA43RTDSP5CR0FBZ4T4.png', 2008, '2025-07-02 21:26:02', '2025-08-28 07:34:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_features`
--

CREATE TABLE `about_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon_class` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `order_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about_features`
--

INSERT INTO `about_features` (`id`, `icon_class`, `title`, `description`, `order_number`, `created_at`, `updated_at`) VALUES
(1, 'bi-star', 'Bahan Berkualitas', 'Kami hanya menggunakan bahan-bahan segar dan berkualitas tinggi dalam setiap hidangan.', 0, '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(2, 'bi-people', 'Pelayanan Ramah', 'Staf kami siap menyambut Anda dengan senyuman dan pelayanan terbaik.', 0, '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(3, 'bi-heart', 'Rasa yang Tak Terlupakan', 'Setiap gigitan dirancang untuk menciptakan kenangan kuliner yang istimewa.', 0, '2025-07-02 21:26:02', '2025-07-02 21:26:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_stats`
--

CREATE TABLE `about_stats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stat_number` varchar(255) NOT NULL,
  `stat_label` varchar(255) NOT NULL,
  `order_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about_stats`
--

INSERT INTO `about_stats` (`id`, `stat_number`, `stat_label`, `order_number`, `created_at`, `updated_at`) VALUES
(1, '15', 'Tahun Pengalaman', 1, '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(2, '2500', 'Pelanggan Puas', 2, '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(3, '120', 'Menu Tersedia', 3, '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(4, '25', 'Penghargaan', 4, '2025-07-02 21:26:02', '2025-07-02 21:26:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('kape_cihanjuang_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1758548189),
('kape_cihanjuang_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1758548189;', 1758548189),
('kape_cihanjuang_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:3;', 1758548019),
('kape_cihanjuang_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1758548019;', 1758548019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `chefs`
--

CREATE TABLE `chefs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `awards` text DEFAULT NULL,
  `order_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `chefs`
--

INSERT INTO `chefs` (`id`, `name`, `role`, `bio`, `image_url`, `awards`, `order_number`, `created_at`, `updated_at`) VALUES
(1, 'Chef Andi Pratama', 'Executive Chef', 'Dengan pengalaman lebih dari 20 tahun, Chef Andi menghadirkan cita rasa khas yang memikat di setiap hidangan.', 'chefs/01JZ7GPW8YMFDNKKHBPJQQWFH6.png', '[\"Best Asian Cuisine 2018\",\"Gold Medal Culinary Festival 2020\"]', 1, '2025-07-02 21:26:02', '2025-07-02 23:48:43'),
(2, 'Chef Lestari Widya', 'Pastry Chef', 'Ahli dalam seni membuat dessert dengan tampilan memukau dan rasa yang menggoda.', 'chefs/01JZ7GRP0TTQF4E89QHB3ENDZ0.png', '[\"Top Pastry Innovator 2019\"]', 2, '2025-07-02 21:26:02', '2025-07-02 23:49:42'),
(3, 'Chef Rio Santoso', 'Sous Chef', 'Chef muda berbakat yang terus mengeksplorasi teknik memasak modern dan tradisional.', 'chefs/01JZ7GSXYD2A7EH6W1Q7QNFQVQ.png', '[]', 3, '2025-07-02 21:26:02', '2025-07-02 23:50:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_1` varchar(255) NOT NULL,
  `email_2` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `office_hours` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `email_1`, `email_2`, `phone`, `address`, `office_hours`, `created_at`, `updated_at`) VALUES
(1, 'info@cafe-katumiri.com', 'support@cafe-katumiri.com', '+62 812 3456 7890', 'Jl. Raya No. 123, Bandung, Indonesia', 'Senin - Jumat: 09.00 - 17.00 WIB', '2025-07-02 21:26:02', '2025-07-02 21:26:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `event_types`
--

CREATE TABLE `event_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `event_types`
--

INSERT INTO `event_types` (`id`, `name`, `capacity`, `description`, `icon_class`, `created_at`, `updated_at`) VALUES
(1, 'Wedding', 100, 'Rayakan hari bahagiamu bersama kami!', 'bi-calendar-event', '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(2, 'Corporate', 50, 'Cocok untuk acara bisnis atau gathering perusahaan.', 'bi-briefcase', '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(3, 'Birthday Party', 30, 'Buat pesta ulang tahunmu jadi lebih spesial.', 'bi-gift', '2025-07-02 21:26:02', '2025-07-02 21:26:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `featured_events`
--

CREATE TABLE `featured_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `featured_events`
--

INSERT INTO `featured_events` (`id`, `event_name`, `date`, `time`, `location`, `description`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Live Music Night', '2025-08-15', '19:00', 'Cafe Katumiri Hall', 'Nikmati malam penuh musik dan suasana hangat bersama musisi lokal terbaik.', 'events/01K3REFA3CSB3635D9BWM8RV88.jpg', '2025-07-02 21:26:02', '2025-08-28 06:39:30'),
(2, 'Cooking Class: Pasta Edition', '2025-08-20', '14:00', 'Dapur Utama Cafe Katumiri', 'Belajar langsung dari chef kami bagaimana membuat pasta autentik Italia.', 'events/01K3REMFYS7K8D5KTW7RYK3SP8.jpg', '2025-07-02 21:26:02', '2025-08-28 06:42:20'),
(3, 'Family Brunch Special', '2025-08-25', '10:00', 'Teras Taman Cafe Katumiri', 'Ajak keluarga menikmati brunch lezat dengan menu spesial dan suasana hangat.', 'events/01K3RENQMSGQ4T5QQV4TEJ21NC.jpg', '2025-07-02 21:26:02', '2025-08-28 06:43:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hero_sliders`
--

CREATE TABLE `hero_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `order_number` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hero_sliders`
--

INSERT INTO `hero_sliders` (`id`, `title`, `description`, `image_url`, `button_text`, `button_link`, `order_number`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Selamat Datang di Kape Cihanjuang', 'Nikmati pengalaman kuliner terbaik dengan pemandangan indah dan hidangan lezat.', 'hero-sliders/01K5RT60D080T1HHH8WE19BTE5.jpg', 'Lihat Menu', '#menu', 1, 1, '2025-07-02 21:26:02', '2025-09-22 06:35:32'),
(2, 'Reservasi Mudah dan Cepat', 'Pesan meja Anda secara online dan rasakan kenyamanan dalam setiap kunjungan.', 'hero-sliders/01JZ7D26ED2J60CXTKSPDBYM8A.jpg', 'Pesan Sekarang', '#reservation', 2, 1, '2025-07-02 21:26:02', '2025-07-02 22:44:59'),
(3, 'Acara Spesial di Tempat Kami', 'Rayakan momen istimewa bersama keluarga dan sahabat di Cafe Katumiri.', 'hero-sliders/01JZ7D2XXXWTQVQZ7Z68A6BY3J.jpg', 'Lihat Event', '#events', 3, 1, '2025-07-02 21:26:02', '2025-07-02 22:45:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `map_embed` text NOT NULL,
  `hours` text NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `locations`
--

INSERT INTO `locations` (`id`, `address`, `map_embed`, `hours`, `contact_phone`, `created_at`, `updated_at`) VALUES
(1, 'Jl. Raya No. 123, Bandung, Indonesia', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.093649236475!2d144.95373531532974!3d-37.81721397975265!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f11fd81%3A0xf577d9b5a40c8c0!2sFederation%20Square!5e0!3m2!1sen!2sid!4v1631069127958!5m2!1sen!2sid\" width=\"100%\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Senin - Jumat: 10.00 - 22.00\nSabtu - Minggu: 09.00 - 23.00', '+62 812 3456 7890', '2025-07-02 21:26:02', '2025-07-02 21:26:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_categories`
--

CREATE TABLE `menu_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu_categories`
--

INSERT INTO `menu_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Starters', 'starters', '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(2, 'Main Course', 'main-course', '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(3, 'Desserts', 'desserts', '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(4, 'Drinks', 'drinks', '2025-07-02 21:26:02', '2025-07-02 21:26:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `image_url`, `tags`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bruschetta', 'Roti panggang dengan topping tomat segar, bawang putih, dan basil.', '35000.00', 'menu-images/01JZ7AV6PHYQR6GE852FEJEG3H.png', 'vegetarian,light', 1, '2025-07-02 21:26:02', '2025-07-02 22:06:13'),
(2, 2, 'Grilled Chicken Steak', 'Daging ayam panggang disajikan dengan saus lada hitam dan kentang tumbuk.', '75000.00', 'menu-images/01JZ7AVNE7NJGCYKASEGAHDSY0.png', 'chicken,grill', 1, '2025-07-02 21:26:02', '2025-07-02 22:06:28'),
(3, 3, 'Chocolate Lava Cake', 'Kue coklat hangat dengan lelehan coklat di dalamnya, disajikan dengan es krim.', '45000.00', 'menu-images/01JZ7AVZVSHQY4K9CWBJ9ZRV3R.png', 'sweet,dessert', 0, '2025-07-02 21:26:02', '2025-07-02 22:06:39'),
(4, 4, 'Iced Matcha Latte', 'Minuman segar dari campuran matcha dan susu, disajikan dingin.', '30000.00', 'menu-images/01JZ7AWP8M08B8H19B1Y2EGSQW.png', 'cold,matcha', 1, '2025-07-02 21:26:02', '2025-07-02 22:07:22'),
(5, 2, 'Salmon Teriyaki', 'Ikan salmon panggang dengan saus teriyaki spesial, disajikan dengan nasi dan sayur.', '95000.00', 'menu-images/01K3RGYYN14FCP0VHVDM70E6WM.jpg', 'fish,japanese', 1, '2025-07-02 21:26:02', '2025-08-28 07:37:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_01_042037_create_hero_sliders_table', 1),
(5, '2025_07_01_042304_create_about_contents_table', 1),
(6, '2025_07_01_042305_create_about_features_table', 1),
(7, '2025_07_01_042305_create_about_stats_table', 1),
(8, '2025_07_01_042305_create_menu_categories_table', 1),
(9, '2025_07_01_042306_create_menu_items_table', 1),
(10, '2025_07_01_042306_create_testimonials_table', 1),
(11, '2025_07_01_042307_create_chefs_table', 1),
(12, '2025_07_01_042307_create_locations_table', 1),
(13, '2025_07_01_042307_create_reservations_table', 1),
(14, '2025_07_01_042308_create_contacts_table', 1),
(15, '2025_07_01_042308_create_event_types_table', 1),
(16, '2025_07_01_042308_create_featured_events_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `people` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `email`, `phone`, `people`, `date`, `time`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Andi Pratama', 'andi@example.com', '+62 812 1111 1111', 2, '2025-07-10', '18:30:00', 'Meja dekat jendela jika memungkinkan.', 'Pending', '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(2, 'Siti Lestari', 'siti@example.com', '+62 812 2222 2222', 4, '2025-07-11', '19:00:00', '', 'Pending', '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(3, 'Rio Santoso', 'rio@example.com', '+62 812 3333 3333', 3, '2025-07-12', '20:00:00', 'Rayakan ulang tahun istri saya.', 'Pending', '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(4, 'Dewi Kusuma', 'dewi@example.com', '+62 812 4444 4444', 5, '2025-07-13', '17:00:00', '', 'Pending', '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(5, 'Bayu Nugraha', 'bayu@example.com', '+62 812 5555 5555', 6, '2025-07-14', '19:30:00', 'Mohon siapkan kursi bayi.', 'Pending', '2025-07-02 21:26:02', '2025-07-02 21:26:02'),
(6, 'asep', 'dsad@gmail.com', '09786876575', 5, '2025-08-29', '01:42:00', 'dsadsadsa', 'Confirmed', '2025-08-28 06:37:51', '2025-08-28 06:38:11'),
(7, 'Eka', 'eka@gmail.com', '098765678765', 3, '2025-08-29', '23:20:00', 'pesan kursi no smoking area', 'Confirmed', '2025-08-28 07:20:54', '2025-08-28 07:21:21'),
(8, 'Pratama', 'mail@mail.com', '0897984328743', 2, '2025-08-28', '21:39:00', 'area smoking', 'Confirmed', '2025-08-28 07:40:05', '2025-08-28 07:40:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AiwpYfrQg3T9uMAuW99Dx0zCdRS8fVMkgu3wRNHa', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidUF3dDVQb2dsNVZ5SElSYnNPWWRTQmoxSUlCU3B6czlpYlpZelk1RSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fX0=', 1758550276);

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `rating` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `role`, `message`, `rating`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Andi Pratama', 'Pengusaha', 'Tempat yang luar biasa! Makanannya enak dan pelayanannya sangat ramah. Pasti akan kembali lagi!', 5, 'testimonials/01K3RESFJPBW1C73M7H1XWYXD9.png', '2025-07-02 21:26:02', '2025-08-28 06:45:03'),
(2, 'Siti Lestari', 'Desainer Interior', 'Suasana restorannya sangat nyaman. Cocok banget buat dinner romantis.', 4, 'testimonials/01K3RF0QJJE0H2B4SFE162ZYVN.png', '2025-07-02 21:26:02', '2025-08-28 06:49:01'),
(3, 'Bayu Nugraha', 'Dosen', 'Saya suka konsep dan presentasi makanannya. Sangat elegan!', 5, 'testimonials/01K3RF2NCQ44P7Y29VZDSMX5KW.png', '2025-07-02 21:26:02', '2025-08-28 06:50:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Kape Cihanjuang', 'admin@example.com', '2025-07-02 21:26:01', '$2y$12$DpkMJ0bFrC8AfdXaXjl5geruApFm2uJt/PcOdInm3rEGrRjE.5M5u', 'aeum69E5Lc9yWFR7kXIKNx9FSQVnvD3nVc9jB8WxaXepvZLBRcznNFcRmIyY', '2025-07-02 21:26:02', '2025-07-02 21:26:02');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about_contents`
--
ALTER TABLE `about_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `about_features`
--
ALTER TABLE `about_features`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `about_stats`
--
ALTER TABLE `about_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `chefs`
--
ALTER TABLE `chefs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `featured_events`
--
ALTER TABLE `featured_events`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hero_sliders`
--
ALTER TABLE `hero_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_categories`
--
ALTER TABLE `menu_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about_contents`
--
ALTER TABLE `about_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `about_features`
--
ALTER TABLE `about_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `about_stats`
--
ALTER TABLE `about_stats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `chefs`
--
ALTER TABLE `chefs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `event_types`
--
ALTER TABLE `event_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `featured_events`
--
ALTER TABLE `featured_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `hero_sliders`
--
ALTER TABLE `hero_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menu_categories`
--
ALTER TABLE `menu_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `menu_categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
