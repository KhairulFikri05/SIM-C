-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2026 pada 16.47
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sim_c`
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
(1, 'Perjalanan Kuliner Kami', 'Kami membawa pengalaman kuliner terbaik dengan bahan-bahan segar dan koki yang penuh gairah.', 'Memasak adalah seni, dan kami adalah pelukisnya.', 'https://picsum.photos/400/500?random=1', 2008, '2026-04-15 01:59:11', '2026-04-15 01:59:11');

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
(1, 'bi-star', 'Bahan Berkualitas', 'Kami hanya menggunakan bahan-bahan segar dan berkualitas tinggi dalam setiap hidangan.', 0, '2026-04-15 01:59:11', '2026-04-15 01:59:11'),
(2, 'bi-people', 'Pelayanan Ramah', 'Staf kami siap menyambut Anda dengan senyuman dan pelayanan terbaik.', 0, '2026-04-15 01:59:11', '2026-04-15 01:59:11'),
(3, 'bi-heart', 'Rasa yang Tak Terlupakan', 'Setiap gigitan dirancang untuk menciptakan kenangan kuliner yang istimewa.', 0, '2026-04-15 01:59:11', '2026-04-15 01:59:11');

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
(1, '15', 'Tahun Pengalaman', 1, '2026-04-15 01:59:11', '2026-04-15 01:59:11'),
(2, '2500', 'Pelanggan Puas', 2, '2026-04-15 01:59:11', '2026-04-15 01:59:11'),
(3, '120', 'Menu Tersedia', 3, '2026-04-15 01:59:11', '2026-04-15 01:59:11'),
(4, '25', 'Penghargaan', 4, '2026-04-15 01:59:11', '2026-04-15 01:59:11');

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
('sim_c_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1780842549),
('sim_c_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1780842549;', 1780842549),
('sim_c_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1780840453),
('sim_c_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1780840453;', 1780840453);

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
(1, 'Chef Andi Pratama', 'Executive Chef', 'Dengan pengalaman lebih dari 20 tahun, Chef Andi menghadirkan cita rasa khas yang memikat di setiap hidangan.', 'https://picsum.photos/400/500?random=10', '[\"Best Asian Cuisine 2018\",\"Gold Medal Culinary Festival 2020\"]', 1, '2026-04-15 01:59:12', '2026-04-15 01:59:12'),
(2, 'Chef Lestari Widya', 'Pastry Chef', 'Ahli dalam seni membuat dessert dengan tampilan memukau dan rasa yang menggoda.', 'https://picsum.photos/400/500?random=11', '[\"Top Pastry Innovator 2019\"]', 2, '2026-04-15 01:59:12', '2026-04-15 01:59:12'),
(3, 'Chef Rio Santoso', 'Sous Chef', 'Chef muda berbakat yang terus mengeksplorasi teknik memasak modern dan tradisional.', 'https://picsum.photos/400/500?random=12', '[]', 3, '2026-04-15 01:59:12', '2026-04-15 01:59:12');

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
(1, 'info@king-coffee.com', 'support@king-coffee.com', '+62 812 3456 7890', 'Jl. Teuku Umar, Lamtemen Tim., Kec. Jaya Baru, Kota Banda Aceh, Aceh 23232', 'Senin - Jumat: 09.00 - 17.00 WIB', '2026-04-15 01:59:12', '2026-06-03 23:35:16');

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
(1, 'Wedding', 100, 'Rayakan hari bahagiamu bersama kami!', 'bi-calendar-event', '2026-04-15 01:59:12', '2026-04-15 01:59:12'),
(2, 'Corporate', 50, 'Cocok untuk acara bisnis atau gathering perusahaan.', 'bi-briefcase', '2026-04-15 01:59:12', '2026-04-15 01:59:12'),
(3, 'Birthday Party', 30, 'Buat pesta ulang tahunmu jadi lebih spesial.', 'bi-gift', '2026-04-15 01:59:12', '2026-04-15 01:59:12');

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
(1, 'Live Music Night', '2025-08-15', '19:00', 'Cafe Katumiri Hall', 'Nikmati malam penuh musik dan suasana hangat bersama musisi lokal terbaik.', 'https://picsum.photos/600/400?random=21', '2026-04-15 01:59:12', '2026-04-15 01:59:12'),
(2, 'Cooking Class: Pasta Edition', '2025-08-20', '14:00', 'Dapur Utama Cafe Katumiri', 'Belajar langsung dari chef kami bagaimana membuat pasta autentik Italia.', 'https://picsum.photos/600/400?random=22', '2026-04-15 01:59:12', '2026-04-15 01:59:12'),
(3, 'Family Brunch Special', '2025-08-25', '10:00', 'Teras Taman Cafe Katumiri', 'Ajak keluarga menikmati brunch lezat dengan menu spesial dan suasana hangat.', 'https://picsum.photos/600/400?random=23', '2026-04-15 01:59:12', '2026-04-15 01:59:12');

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
(1, 'Selamat Datang di King Coffee', 'Nikmati pengalaman kuliner terbaik dengan pemandangan indah dan hidangan lezat.', 'hero-sliders/01KP8MX0PZN18VFWYVCGQVEY5R.jpeg', 'Lihat Menu', '#menu', 1, 1, '2026-04-15 01:59:11', '2026-04-15 06:34:08'),
(2, 'Reservasi Mudah dan Cepat', 'Pesan meja Anda secara online dan rasakan kenyamanan dalam setiap kunjungan.', 'hero-sliders/01KP8N6QQC977E18NG7FQRMV4Y.jpeg', 'Pesan Sekarang', '#reservation', 2, 1, '2026-04-15 01:59:11', '2026-04-15 06:29:25'),
(3, 'Acara Spesial di Tempat Kami', 'Rayakan momen istimewa bersama keluarga dan sahabat di Cafe Katumiri.', 'hero-sliders/01KPAKG8YGFATJC38GFQXCXF96.jpeg', 'Lihat Event', '#events', 3, 1, '2026-04-15 01:59:11', '2026-04-16 00:36:17');

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
(1, 'Jl. Teuku Umar, Lamtemen Tim., Kec. Jaya Baru, Kota Banda Aceh, Aceh 23232', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3971.174484579993!2d95.30808837311031!3d5.541125233802989!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30403a0f5f3fc80f%3A0x292fcfb97abecbf9!2sJl.%20Teuku%20Umar%2C%20Kota%20Banda%20Aceh%2C%20Aceh!5e0!3m2!1sid!2sid!4v1780554531944!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Senin - Jumat: 10.00 - 22.00\nSabtu - Minggu: 09.00 - 23.00', '+62 812 3456 7890', '2026-04-15 01:59:12', '2026-06-03 23:29:56');

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
(1, 'Starters', 'starters', '2026-04-15 01:59:11', '2026-04-15 01:59:11'),
(2, 'Main Course', 'main-course', '2026-04-15 01:59:11', '2026-04-15 01:59:11'),
(3, 'Desserts', 'desserts', '2026-04-15 01:59:11', '2026-04-15 01:59:11'),
(4, 'Drinks', 'drinks', '2026-04-15 01:59:11', '2026-04-15 01:59:11');

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
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `image_url` varchar(255) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `description`, `price`, `is_available`, `image_url`, `tags`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 2, 'Sop Buntut', 'Spp buntut yang menyegarkan dengan rempah tradisional', 100000.00, 1, 'menu-images/01KTH6J0EBX2FT0D6XFNR0D2YE.jpg', 'maincourse,light', 1, '2026-04-15 01:59:11', '2026-06-07 07:07:31'),
(2, 2, 'Grilled Beef Steak', 'Daging sapi panggang disajikan dengan saus lada hitam dan kentang tumbuk.', 125000.00, 1, 'menu-images/01KTH60K5V0W1WC65WCRYJB2D3.jpg', 'beef,grill', 1, '2026-04-15 01:59:11', '2026-06-07 06:58:41'),
(3, 3, 'Chocolate Lava Cake', 'Kue coklat hangat dengan lelehan coklat di dalamnya, disajikan dengan es krim.', 45000.00, 1, 'menu-images/01KTH6SG1FYPA37HJVJE77MYJQ.jpg', 'sweet,dessert', 0, '2026-04-15 01:59:11', '2026-06-07 07:13:18'),
(4, 4, 'Iced Matcha Latte', 'Minuman segar dari campuran matcha dan susu, disajikan dingin.', 30000.00, 1, 'menu-images/01KTH74ZFTT2GEGJRVF9AW4TC2.jpg', 'cold,matcha', 0, '2026-04-15 01:59:11', '2026-06-07 07:18:56'),
(5, 2, 'Salmon Teriyaki', 'Ikan salmon panggang dengan saus teriyaki spesial, disajikan dengan nasi dan sayur.', 95000.00, 1, 'menu-images/01KTH7R0MJ98N1N268XBME8FYF.jpg', 'fish,japanese', 1, '2026-04-15 01:59:11', '2026-06-07 07:28:16');

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
(16, '2025_07_01_042308_create_featured_events_table', 1),
(17, '2026_06_04_052107_create_tables_table', 2),
(18, '2026_06_04_053637_add_table_id_to_reservations_table', 3),
(19, '2026_06_04_061350_add_is_available_to_menu_items_table', 4),
(20, '2026_06_04_074016_create_orders_table', 5),
(21, '2026_06_04_074025_create_order_items_table', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` int(11) NOT NULL DEFAULT 0,
  `status` enum('menunggu','dimasak','disajikan','selesai','dibatalkan') NOT NULL DEFAULT 'menunggu',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `table_id`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'menunggu', '2026-06-07 07:15:14', '2026-06-07 07:15:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `menu_item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `menu_item_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 125000, '2026-06-07 07:15:14', '2026-06-07 07:15:14');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `table_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `email`, `phone`, `people`, `date`, `time`, `message`, `status`, `created_at`, `updated_at`, `table_id`) VALUES
(4, 'Dewi Kusuma', 'dewi@example.com', '+62 812 4444 4444', 5, '2025-07-13', '17:00:00', NULL, 'Pending', '2026-04-15 01:59:12', '2026-06-03 23:12:29', 2),
(5, 'Bayu Nugraha', 'bayu@example.com', '+62 812 5555 5555', 6, '2025-07-14', '19:30:00', 'Mohon siapkan kursi bayi.', 'Pending', '2026-04-15 01:59:12', '2026-04-15 01:59:12', NULL),
(6, 'didin', 'didin@gmail.com', '082368798699', 6, '2026-04-24', '00:34:00', 'utdfyiguihyuoip[op]', 'Cancelled', '2026-04-15 06:31:08', '2026-04-15 06:32:43', NULL);

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
('caDqXmtlheDJbQjZAqhajK1Hbxemt1yyI9x2y4k4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoib01KaGZtd01iMm1PTzZqTHhjOWJrYXQ3Qm5FV1NISHE4bjlwZjBFMyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9tZW51LWl0ZW1zLzUvZWRpdCI7czo1OiJyb3V0ZSI7czo0MDoiZmlsYW1lbnQuYWRtaW4ucmVzb3VyY2VzLm1lbnUtaXRlbXMuZWRpdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjY0OiI4ZmMxZGNkMzRkOTY2NjhhMTY5ODkzMWU3MjZjNGJjOWI5Zjg2YTFiNGQ2MDFkYTQ3YjM4ZjljNmJkNGU3YzdhIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1780843541);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tables`
--

CREATE TABLE `tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `table_number` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `status` enum('kosong','reservasi','digunakan') NOT NULL DEFAULT 'kosong',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tables`
--

INSERT INTO `tables` (`id`, `table_number`, `capacity`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 10, 'kosong', '2026-06-03 22:35:30', '2026-06-03 23:09:08'),
(2, '2', 5, 'reservasi', '2026-06-03 23:11:39', '2026-06-03 23:12:29');

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
(1, 'Andi Pratama', 'Pengusaha', 'Tempat yang luar biasa! Makanannya enak dan pelayanannya sangat ramah. Pasti akan kembali lagi!', 5, 'https://picsum.photos/100/100?random=1', '2026-04-15 01:59:11', '2026-04-15 01:59:11'),
(2, 'Siti Lestari', 'Desainer Interior', 'Suasana restorannya sangat nyaman. Cocok banget buat dinner romantis.', 4, 'https://picsum.photos/100/100?random=2', '2026-04-15 01:59:12', '2026-04-15 01:59:12'),
(3, 'Bayu Nugraha', 'Dosen', 'Saya suka konsep dan presentasi makanannya. Sangat elegan!', 5, 'https://picsum.photos/100/100?random=3', '2026-04-15 01:59:12', '2026-04-15 01:59:12'),
(4, 'Dewi Kusuma', 'Ibu Rumah Tangga', 'Anak-anak saya sangat suka dessert di sini. Pasti akan sering mampir!', 4, 'https://picsum.photos/100/100?random=4', '2026-04-15 01:59:12', '2026-04-15 01:59:12'),
(5, 'Rian Kurniawan', 'Musisi', 'Live music dan makanannya bikin malam saya sempurna. Recommended banget!', 5, 'https://picsum.photos/100/100?random=5', '2026-04-15 01:59:12', '2026-04-15 01:59:12');

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
(1, 'Admin King Coffee', 'admin@example.com', '2026-04-15 01:59:11', '$2y$12$ZLMip6aEY2NdrsLf80CEBO5mLaSp2LpZ/N607XHr4CPSZ9lrCw4sG', 'HIkELG1cNRoI1oLmmVNlL5kiA38vY2jBcQGHRb5V0FPvkSYbAPqOUTxa19W3', '2026-04-15 01:59:11', '2026-04-15 01:59:11');

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
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_table_id_foreign` (`table_id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_menu_item_id_foreign` (`menu_item_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_table_id_foreign` (`table_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tables_table_number_unique` (`table_number`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tables`
--
ALTER TABLE `tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `menu_categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`) ON DELETE SET NULL;
COMMIT;

ALTER TABLE `orders`
ADD `payment_status` ENUM('unpaid', 'paid', 'failed') NOT NULL DEFAULT 'unpaid' AFTER `status`,
ADD `snap_token` VARCHAR(255) NULL AFTER `payment_status`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
