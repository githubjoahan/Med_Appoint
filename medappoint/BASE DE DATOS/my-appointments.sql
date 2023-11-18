-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2023 a las 22:34:57
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `my-appointments`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialty_id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `scheduled_date` date NOT NULL,
  `scheduled_time` time NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Reservada'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `appointments`
--

INSERT INTO `appointments` (`id`, `description`, `specialty_id`, `doctor_id`, `patient_id`, `scheduled_date`, `scheduled_time`, `type`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Dolor de cabeza', 3, 3, 2, '2021-08-12', '09:00:00', 'Examen', '2021-08-09 22:30:00', '2021-08-18 04:49:58', 'Cancelada'),
(2, 'Tengo Dolor de estomago', 3, 3, 2, '2021-08-12', '16:00:00', 'Consulta', '2021-08-10 03:48:50', '2021-08-18 05:42:44', 'Cancelada'),
(3, 'tengo dolor de estomago', 3, 3, 2, '2021-08-19', '08:00:00', 'Consulta', '2021-08-18 04:54:31', '2021-08-18 04:40:24', 'Confirmada'),
(4, 'Quisquam dolore tempora ipsa repellat.', 3, 58, 29, '2020-12-10', '00:50:01', 'Operación', '2021-08-18 17:16:41', '2021-08-18 17:16:41', 'Cancelada'),
(5, 'Debitis iusto quod explicabo.', 3, 60, 49, '2020-10-06', '20:56:07', 'Consulta', '2021-08-18 17:16:41', '2021-08-18 17:16:41', 'Atendida'),
(6, 'Cumque accusantium veritatis officia.', 2, 58, 38, '2021-08-08', '08:24:53', 'Examen', '2021-08-18 17:16:41', '2021-08-18 17:16:41', 'Cancelada'),
(7, 'Vero aut magni quis et.', 3, 56, 43, '2021-05-26', '14:33:47', 'Examen', '2021-08-18 17:16:41', '2021-08-18 17:16:41', 'Cancelada'),
(8, 'Qui et dolorum ducimus.', 1, 54, 32, '2021-04-04', '04:54:06', 'Consulta', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(9, 'Accusamus at aut est.', 1, 61, 39, '2020-08-22', '10:14:13', 'Examen', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(10, 'Beatae ut odit ullam in.', 3, 54, 26, '2021-01-05', '10:31:32', 'Examen', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Atendida'),
(11, 'Ut quaerat et ut magnam deleniti ipsum.', 2, 55, 8, '2021-01-31', '07:51:24', 'Operación', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(12, 'Culpa sed ut accusantium.', 2, 62, 10, '2021-04-17', '03:21:56', 'Consulta', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(13, 'Ea et vitae sunt deleniti repudiandae provident.', 3, 61, 17, '2021-02-04', '22:46:27', 'Consulta', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Atendida'),
(14, 'Porro qui quam voluptas quod est eos.', 2, 58, 6, '2020-11-20', '06:57:56', 'Operación', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Atendida'),
(15, 'Quibusdam corporis tempora quaerat praesentium ab.', 3, 61, 24, '2021-07-05', '10:15:32', 'Operación', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(16, 'Et neque maiores quidem incidunt.', 1, 54, 34, '2020-11-21', '14:52:18', 'Consulta', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(17, 'Excepturi maiores aut eius.', 3, 61, 33, '2020-11-01', '09:10:19', 'Operación', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(18, 'Necessitatibus voluptates consequatur sit laborum dolorum.', 3, 62, 7, '2021-06-13', '22:43:26', 'Examen', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Atendida'),
(19, 'Aliquid quis numquam autem ducimus dolor quo.', 1, 60, 25, '2021-04-03', '23:37:04', 'Examen', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(20, 'Omnis nemo est doloribus quo nesciunt.', 3, 57, 14, '2021-05-18', '00:14:48', 'Consulta', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(21, 'Ad eligendi vitae alias nisi eum.', 3, 62, 29, '2021-01-07', '21:01:12', 'Examen', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(22, 'Aliquam ut dicta enim ipsa.', 3, 58, 20, '2021-02-10', '04:44:37', 'Examen', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Atendida'),
(23, 'Non rerum optio laudantium omnis id.', 2, 59, 41, '2021-01-23', '02:09:39', 'Consulta', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(24, 'Omnis porro sit est et eum amet.', 1, 62, 37, '2021-08-08', '16:12:06', 'Examen', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(25, 'Vel quo sunt aut harum voluptatem.', 2, 60, 36, '2021-07-09', '10:07:35', 'Operación', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Atendida'),
(26, 'Et eum beatae autem ab.', 2, 57, 43, '2021-08-14', '02:22:46', 'Operación', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(27, 'Deleniti voluptatem et reprehenderit omnis aut maiores.', 3, 59, 25, '2021-02-25', '08:03:56', 'Consulta', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Cancelada'),
(28, 'Fugiat qui consequatur porro.', 2, 54, 45, '2021-04-06', '00:08:06', 'Consulta', '2021-08-18 17:16:42', '2021-08-18 17:16:42', 'Atendida'),
(29, 'Maxime dolorum eius sit et.', 2, 3, 40, '2021-02-21', '13:18:42', 'Examen', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(30, 'Veniam ad aperiam sed animi consequuntur.', 1, 61, 28, '2021-03-31', '10:23:32', 'Examen', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Cancelada'),
(31, 'Libero dolores asperiores libero delectus qui repellat.', 3, 56, 51, '2021-03-17', '13:57:51', 'Consulta', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(32, 'Recusandae rerum iste ut hic quis.', 1, 3, 22, '2021-03-07', '15:40:26', 'Operación', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(33, 'Ullam qui voluptas ratione ab.', 3, 59, 24, '2020-10-22', '08:15:52', 'Consulta', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Cancelada'),
(34, 'Minus cum optio occaecati natus.', 3, 57, 50, '2021-01-25', '14:47:45', 'Examen', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Cancelada'),
(35, 'Quis qui aliquid reprehenderit amet.', 3, 54, 31, '2020-09-29', '09:55:57', 'Examen', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Cancelada'),
(36, 'Iure laudantium culpa eligendi reiciendis commodi dolores.', 3, 3, 10, '2020-09-03', '22:51:10', 'Consulta', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Cancelada'),
(37, 'Ipsum beatae quas est dolor.', 3, 62, 2, '2021-06-02', '08:07:28', 'Operación', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(38, 'Perferendis eligendi dolorem velit maxime aliquam.', 1, 54, 5, '2021-03-14', '21:21:12', 'Examen', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(39, 'Qui maxime repellat doloribus.', 3, 56, 51, '2020-09-26', '09:52:30', 'Operación', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(40, 'Corrupti quam et sed ipsum ut non.', 2, 56, 19, '2020-12-19', '05:36:32', 'Examen', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(41, 'In voluptates repellat est dolorem.', 3, 3, 27, '2021-07-13', '10:18:03', 'Examen', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(42, 'Ut ut perspiciatis explicabo sunt.', 2, 61, 41, '2020-09-17', '00:13:06', 'Examen', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(43, 'Quos aliquam veniam nihil ea sed qui.', 2, 59, 11, '2021-07-27', '10:09:45', 'Consulta', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(44, 'Nihil neque ex placeat voluptas eius enim.', 2, 60, 19, '2021-01-23', '00:48:24', 'Consulta', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(45, 'Quibusdam doloremque fuga earum vitae qui.', 1, 61, 51, '2020-11-06', '16:39:26', 'Operación', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Cancelada'),
(46, 'Laborum laborum quisquam illo.', 1, 57, 18, '2020-12-05', '17:31:45', 'Consulta', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Cancelada'),
(47, 'Eos qui exercitationem iure rerum.', 3, 62, 18, '2020-08-29', '04:35:43', 'Consulta', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(48, 'Aut nisi suscipit repudiandae.', 1, 56, 26, '2020-08-27', '12:44:13', 'Consulta', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Cancelada'),
(49, 'Sapiente sapiente atque laboriosam consequuntur unde.', 1, 58, 44, '2020-12-04', '23:24:15', 'Consulta', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Cancelada'),
(50, 'Quia non iusto consequatur enim est dolores.', 3, 58, 13, '2021-03-23', '09:58:56', 'Operación', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Cancelada'),
(51, 'Hic eum et necessitatibus beatae quod.', 2, 54, 48, '2021-05-19', '17:18:18', 'Examen', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Cancelada'),
(52, 'Ut maiores minima nostrum.', 1, 62, 40, '2021-05-10', '00:38:43', 'Consulta', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Cancelada'),
(53, 'Pariatur occaecati est sunt et facere ipsam.', 3, 58, 42, '2021-03-25', '04:25:16', 'Consulta', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(54, 'Ea sit possimus error non.', 2, 54, 5, '2021-02-21', '15:02:40', 'Examen', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(55, 'Numquam consequatur officia aperiam.', 3, 61, 2, '2020-11-20', '04:36:42', 'Operación', '2021-08-18 17:16:43', '2021-08-18 17:16:43', 'Atendida'),
(56, 'Id explicabo dolorum facilis ad non.', 3, 59, 49, '2020-09-05', '01:59:25', 'Operación', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(57, 'Alias sed iure perferendis sequi dolorem.', 3, 61, 29, '2021-01-29', '17:57:13', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(58, 'Rem quas id aspernatur qui minus temporibus.', 3, 58, 37, '2020-10-12', '00:42:10', 'Operación', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(59, 'Dolor voluptate voluptatem culpa.', 1, 57, 8, '2021-02-01', '05:41:32', 'Operación', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(60, 'Ducimus voluptates aut dicta.', 3, 56, 39, '2021-05-30', '14:58:34', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Atendida'),
(61, 'Omnis eaque mollitia inventore autem laboriosam natus ut.', 2, 55, 9, '2021-04-16', '08:56:02', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(62, 'Voluptatem fugiat omnis itaque et doloribus voluptas.', 2, 57, 50, '2020-12-08', '05:00:33', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(63, 'Praesentium cupiditate qui quasi vitae ut dolorum.', 3, 3, 36, '2020-12-15', '23:50:46', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Atendida'),
(64, 'Dolores suscipit ab omnis.', 2, 54, 52, '2021-08-11', '11:25:08', 'Consulta', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(65, 'Saepe illum dolorem distinctio.', 3, 55, 5, '2020-09-22', '23:57:06', 'Operación', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(66, 'Quas iure soluta possimus.', 3, 54, 35, '2020-10-27', '12:37:20', 'Operación', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Atendida'),
(67, 'Molestiae blanditiis recusandae animi.', 1, 55, 7, '2021-04-10', '15:59:53', 'Operación', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Atendida'),
(68, 'Consequatur sit ea illo sequi.', 2, 55, 49, '2020-10-01', '08:50:22', 'Consulta', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Atendida'),
(69, 'Veniam reprehenderit ipsam aspernatur dolorem in odio.', 1, 55, 53, '2021-05-11', '17:24:32', 'Operación', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(70, 'Iure eligendi soluta nihil.', 2, 62, 13, '2020-12-04', '14:43:57', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Atendida'),
(71, 'Accusantium quis et blanditiis dolores.', 2, 62, 42, '2020-11-21', '09:22:13', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Atendida'),
(72, 'Mollitia necessitatibus voluptatem modi libero nam ut.', 1, 58, 41, '2021-05-12', '06:17:56', 'Operación', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Atendida'),
(73, 'Error velit ipsum aut.', 3, 57, 2, '2021-06-09', '19:13:11', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(74, 'Doloribus corrupti totam modi.', 3, 62, 14, '2020-09-06', '03:35:24', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(75, 'Beatae tempora distinctio fuga est minus sunt.', 1, 57, 42, '2020-11-25', '14:03:58', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Atendida'),
(76, 'Rerum error quia maiores alias modi assumenda.', 1, 3, 48, '2021-07-02', '22:41:43', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(77, 'Eos possimus et quia.', 3, 56, 4, '2020-11-28', '15:20:33', 'Consulta', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(78, 'Omnis autem est est labore aliquid.', 3, 54, 27, '2021-08-14', '17:04:11', 'Consulta', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(79, 'Est iure et rerum consequatur voluptatem.', 3, 58, 32, '2021-06-26', '06:54:49', 'Operación', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Atendida'),
(80, 'Ullam dolores id totam aut.', 2, 62, 49, '2020-10-03', '13:08:11', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Atendida'),
(81, 'Ut tempore enim aut maiores et.', 3, 60, 48, '2021-08-03', '23:10:27', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Atendida'),
(82, 'Fugit nam aliquid animi quia.', 2, 61, 49, '2020-10-10', '19:09:02', 'Examen', '2021-08-18 17:16:44', '2021-08-18 17:16:44', 'Cancelada'),
(83, 'Aspernatur laudantium iure nisi.', 3, 58, 8, '2021-01-15', '15:38:31', 'Consulta', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Atendida'),
(84, 'Ut expedita quia qui.', 1, 57, 47, '2021-01-04', '21:23:36', 'Examen', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Atendida'),
(85, 'Totam omnis vel dolores.', 3, 62, 38, '2020-12-24', '18:09:02', 'Operación', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Cancelada'),
(86, 'Quos ducimus in maiores consequatur consequatur minus.', 2, 57, 42, '2020-08-21', '20:27:57', 'Operación', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Atendida'),
(87, 'Quibusdam ad deserunt ea iusto et similique.', 1, 59, 40, '2021-08-08', '23:52:02', 'Operación', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Atendida'),
(88, 'Fugit minus dolorem eaque nihil.', 3, 54, 44, '2021-04-11', '18:48:07', 'Operación', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Cancelada'),
(89, 'Quis blanditiis facilis quibusdam sit reiciendis qui.', 3, 60, 36, '2021-05-28', '03:30:54', 'Consulta', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Cancelada'),
(90, 'Qui pariatur vitae qui animi aperiam.', 3, 62, 12, '2021-03-18', '20:48:19', 'Operación', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Atendida'),
(91, 'Aut eos totam dolores.', 3, 55, 10, '2020-12-25', '21:13:12', 'Operación', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Cancelada'),
(92, 'Molestias voluptatem accusantium facilis eveniet.', 3, 54, 47, '2020-11-10', '05:48:32', 'Examen', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Atendida'),
(93, 'Eveniet sit modi odit quis.', 1, 61, 29, '2020-10-29', '16:21:27', 'Operación', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Cancelada'),
(94, 'Quia ut fugiat ipsa vel praesentium.', 3, 3, 10, '2021-04-08', '09:16:09', 'Examen', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Atendida'),
(95, 'Totam incidunt tenetur nemo inventore sed.', 3, 56, 15, '2020-12-15', '18:32:15', 'Operación', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Cancelada'),
(96, 'Omnis cum vitae quia molestiae.', 3, 3, 45, '2021-05-24', '21:29:09', 'Consulta', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Atendida'),
(97, 'Ut iste doloribus tempora aut.', 2, 57, 14, '2020-10-04', '11:03:11', 'Examen', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Cancelada'),
(98, 'Natus provident non aliquam.', 3, 61, 35, '2020-10-26', '08:47:20', 'Consulta', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Cancelada'),
(99, 'Quia sint ratione sit vitae.', 1, 54, 28, '2021-04-26', '23:50:22', 'Consulta', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Cancelada'),
(100, 'Et voluptatibus labore impedit accusantium.', 1, 57, 37, '2021-07-24', '22:54:48', 'Operación', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Cancelada'),
(101, 'Molestiae aut minus cumque ut enim.', 3, 55, 10, '2021-02-12', '06:15:09', 'Examen', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Atendida'),
(102, 'Eius quam nihil quia sint eaque.', 1, 59, 22, '2021-04-01', '15:02:53', 'Examen', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Atendida'),
(103, 'Eos aut et adipisci.', 2, 57, 28, '2020-09-10', '10:30:27', 'Operación', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Atendida'),
(104, 'Cum quam labore veritatis.', 2, 54, 4, '2021-07-28', '08:56:29', 'Operación', '2021-08-18 17:16:45', '2021-08-18 17:16:45', 'Cancelada'),
(105, 'Dignissimos consequuntur molestiae et totam.', 2, 61, 33, '2020-11-29', '13:34:31', 'Examen', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(106, 'Consequatur magnam expedita facere.', 3, 56, 13, '2021-04-05', '16:05:48', 'Consulta', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(107, 'Aut rerum mollitia nostrum.', 3, 60, 37, '2021-07-12', '20:27:59', 'Examen', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Cancelada'),
(108, 'Est unde provident quae dignissimos id.', 2, 54, 43, '2020-08-24', '01:33:03', 'Examen', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Cancelada'),
(109, 'Cum rerum et odit facere rerum.', 3, 61, 16, '2021-01-30', '07:32:23', 'Consulta', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Cancelada'),
(110, 'Aut autem sed sit.', 2, 61, 22, '2021-03-10', '14:43:15', 'Consulta', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(111, 'Amet alias architecto qui voluptates ratione.', 2, 62, 18, '2021-06-22', '14:58:52', 'Operación', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(112, 'Vero vel tempora aut qui.', 2, 60, 16, '2021-06-30', '17:09:12', 'Operación', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(113, 'Minima iure numquam molestiae.', 1, 60, 36, '2020-08-25', '05:21:20', 'Consulta', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Cancelada'),
(114, 'Nihil eaque neque unde.', 3, 61, 46, '2020-10-10', '15:25:27', 'Consulta', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(115, 'Sequi quaerat eveniet esse velit est eaque.', 3, 59, 38, '2021-03-11', '14:27:06', 'Operación', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Cancelada'),
(116, 'Consequatur ut nulla aut ullam consequatur.', 1, 59, 8, '2021-04-28', '05:11:07', 'Operación', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(117, 'In et quia iste quaerat.', 2, 60, 15, '2021-04-05', '23:36:54', 'Consulta', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(118, 'Suscipit qui at dolorem nemo qui.', 1, 57, 7, '2021-04-20', '07:04:03', 'Consulta', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(119, 'Deleniti suscipit ipsum minus vel modi.', 3, 55, 44, '2021-05-26', '11:34:22', 'Consulta', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Cancelada'),
(120, 'Sunt eos aliquid aliquid dolorum et commodi.', 3, 59, 30, '2020-10-22', '10:35:50', 'Operación', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Cancelada'),
(121, 'Praesentium harum voluptatem iusto.', 2, 54, 12, '2020-09-07', '06:29:59', 'Operación', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(122, 'Sed consequatur fugit quis.', 2, 59, 42, '2021-03-08', '08:35:28', 'Examen', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(123, 'Odit ea fugiat modi expedita consequuntur.', 3, 55, 23, '2021-05-10', '17:10:50', 'Examen', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(124, 'Ipsum numquam dolor perspiciatis ipsam qui quia.', 1, 62, 27, '2020-11-24', '19:24:53', 'Consulta', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Cancelada'),
(125, 'Quasi sunt ab et facere ipsum.', 1, 58, 43, '2021-07-20', '10:16:49', 'Operación', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(126, 'In quas non excepturi.', 1, 60, 18, '2021-08-11', '22:44:28', 'Consulta', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(127, 'Labore dolor vel nam atque.', 2, 56, 35, '2021-06-21', '13:46:03', 'Examen', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Cancelada'),
(128, 'Suscipit consequatur dicta non omnis.', 3, 54, 49, '2020-11-14', '07:53:25', 'Operación', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Cancelada'),
(129, 'Praesentium consequatur non omnis pariatur corporis voluptas.', 1, 57, 34, '2020-12-13', '00:04:38', 'Examen', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(130, 'Facilis excepturi voluptas ea.', 2, 61, 5, '2020-12-03', '22:30:15', 'Examen', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Cancelada'),
(131, 'Facilis est minus eligendi tempore vel.', 1, 54, 39, '2020-09-01', '06:48:20', 'Examen', '2021-08-18 17:16:46', '2021-08-18 17:16:46', 'Atendida'),
(132, 'Laudantium et est voluptatum et vitae.', 3, 59, 23, '2021-06-08', '14:56:16', 'Examen', '2021-08-18 17:16:47', '2021-08-18 17:16:47', 'Cancelada'),
(133, 'Labore et in et excepturi voluptas quo.', 1, 54, 13, '2020-12-27', '12:50:02', 'Consulta', '2021-08-18 17:16:47', '2021-08-18 17:16:47', 'Atendida'),
(134, 'Occaecati et odio quaerat natus voluptate.', 3, 56, 30, '2021-03-19', '23:59:17', 'Consulta', '2021-08-18 17:16:47', '2021-08-18 17:16:47', 'Atendida'),
(135, 'At expedita sequi omnis repellat.', 1, 58, 6, '2021-02-06', '11:50:02', 'Consulta', '2021-08-18 17:16:47', '2021-08-18 17:16:47', 'Atendida'),
(136, 'Ea mollitia placeat nisi consequatur.', 1, 60, 48, '2021-01-07', '13:16:07', 'Operación', '2021-08-18 17:16:47', '2021-08-18 17:16:47', 'Atendida'),
(137, 'Est rerum doloremque ut ducimus.', 1, 60, 46, '2021-03-14', '21:54:10', 'Operación', '2021-08-18 17:16:47', '2021-08-18 17:16:47', 'Atendida'),
(138, 'Enim quis nulla ad.', 2, 56, 2, '2021-03-15', '17:50:28', 'Operación', '2021-08-18 17:16:47', '2021-08-18 17:16:47', 'Atendida'),
(139, 'Asperiores quo quaerat velit facilis eveniet.', 3, 3, 21, '2021-07-14', '13:03:08', 'Operación', '2021-08-18 17:16:47', '2021-08-18 17:16:47', 'Atendida'),
(140, 'Quibusdam velit voluptatem est quia est molestiae.', 2, 56, 9, '2020-12-15', '21:34:12', 'Examen', '2021-08-18 17:16:47', '2021-08-18 17:16:47', 'Cancelada'),
(141, 'Quae in ipsum commodi.', 3, 56, 39, '2020-09-01', '13:00:46', 'Examen', '2021-08-18 17:16:47', '2021-08-18 17:16:47', 'Cancelada'),
(142, 'Libero maxime reiciendis rerum voluptates reprehenderit necessitatibus.', 1, 62, 12, '2020-09-19', '18:02:51', 'Examen', '2021-08-18 17:16:47', '2021-08-18 17:16:47', 'Cancelada'),
(143, 'Vero itaque ratione quasi dicta.', 3, 60, 35, '2021-03-12', '00:49:12', 'Consulta', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(144, 'Consectetur sapiente velit qui nam qui aut.', 3, 56, 42, '2021-02-28', '11:32:59', 'Consulta', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(145, 'Quas ab sit aliquam sit.', 3, 54, 40, '2021-03-18', '18:35:13', 'Examen', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(146, 'Labore nisi unde quae ducimus.', 3, 58, 51, '2021-08-16', '18:13:24', 'Examen', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(147, 'Aut doloribus dicta amet dolor et commodi.', 3, 61, 17, '2021-03-25', '09:24:01', 'Consulta', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(148, 'Pariatur est et et.', 1, 55, 52, '2020-09-15', '21:31:24', 'Examen', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(149, 'Sit eum deleniti pariatur amet quia.', 3, 58, 11, '2021-07-01', '22:43:15', 'Operación', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(150, 'Porro aut libero laudantium eos voluptatem sed.', 2, 59, 6, '2020-09-19', '05:02:40', 'Consulta', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(151, 'Dolor in enim eveniet.', 1, 3, 12, '2021-07-12', '13:37:07', 'Examen', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(152, 'Vero beatae praesentium vel similique ipsam.', 1, 54, 25, '2020-09-28', '07:55:40', 'Consulta', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(153, 'Ducimus aliquam ea eius veritatis.', 3, 59, 37, '2021-05-08', '22:55:45', 'Operación', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(154, 'Qui voluptates pariatur vero amet.', 3, 61, 25, '2021-03-10', '03:51:26', 'Examen', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(155, 'Optio est est id quaerat.', 2, 61, 8, '2021-04-10', '17:22:45', 'Operación', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(156, 'Illum quos velit sit.', 1, 62, 17, '2021-06-16', '13:49:15', 'Operación', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(157, 'Nam dolorum fugiat praesentium.', 2, 59, 12, '2021-05-05', '01:40:19', 'Operación', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(158, 'Molestiae itaque repudiandae iure.', 3, 54, 31, '2021-01-18', '09:31:39', 'Consulta', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(159, 'Consequuntur libero minus id quod.', 2, 54, 28, '2020-10-19', '08:55:28', 'Consulta', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(160, 'Eius porro a dolores.', 3, 58, 45, '2020-11-05', '21:03:34', 'Consulta', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(161, 'Facilis harum aliquam aut dolores.', 3, 55, 32, '2020-10-20', '06:36:37', 'Operación', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(162, 'Voluptatem enim distinctio molestias dolorem magni.', 2, 56, 41, '2020-10-24', '12:23:45', 'Operación', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(163, 'Unde quis sit explicabo.', 3, 58, 7, '2021-06-09', '08:45:53', 'Examen', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(164, 'Occaecati qui omnis qui dolorem.', 3, 57, 13, '2021-04-26', '19:51:06', 'Examen', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(165, 'Officiis sed placeat autem minima hic.', 2, 62, 37, '2020-11-25', '07:28:06', 'Consulta', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(166, 'Velit debitis id neque maxime cumque.', 2, 56, 12, '2020-09-26', '10:09:34', 'Operación', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(167, 'Aliquid itaque maiores fugit deserunt tempora culpa.', 3, 60, 15, '2021-01-17', '03:24:22', 'Examen', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(168, 'Dolor laboriosam iure maiores.', 2, 57, 20, '2020-12-04', '07:26:15', 'Consulta', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(169, 'In dolorum quaerat natus voluptas labore praesentium.', 2, 54, 51, '2020-11-25', '07:47:44', 'Operación', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Atendida'),
(170, 'Autem neque ab enim.', 3, 59, 50, '2020-10-24', '15:27:56', 'Operación', '2021-08-18 17:16:48', '2021-08-18 17:16:48', 'Cancelada'),
(171, 'Vel nemo iusto quia omnis.', 3, 55, 42, '2020-11-17', '14:52:28', 'Examen', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(172, 'Vel praesentium quis recusandae nobis.', 1, 3, 30, '2021-03-10', '20:14:29', 'Consulta', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(173, 'Quam et vel debitis consequatur perferendis autem.', 2, 59, 41, '2021-07-11', '01:56:58', 'Consulta', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(174, 'Quia magnam consequatur tempore.', 1, 57, 52, '2020-12-18', '02:55:40', 'Examen', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(175, 'Optio velit aut cum.', 1, 60, 13, '2021-01-11', '20:04:26', 'Operación', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(176, 'Ab commodi itaque est est.', 3, 59, 45, '2020-08-30', '15:19:32', 'Operación', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(177, 'Molestiae doloremque dolor accusamus tenetur dicta sed.', 1, 54, 46, '2020-10-29', '22:20:34', 'Operación', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Cancelada'),
(178, 'Voluptas veniam et atque consequatur id optio odit.', 3, 60, 8, '2021-04-09', '13:53:21', 'Operación', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Cancelada'),
(179, 'Ab perferendis doloribus repudiandae.', 3, 62, 20, '2021-02-28', '04:21:50', 'Operación', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Cancelada'),
(180, 'Voluptas natus et eum dolorum nulla.', 2, 58, 51, '2021-06-28', '15:03:42', 'Operación', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(181, 'Totam perferendis voluptatibus blanditiis aut consequatur.', 1, 54, 25, '2020-09-04', '21:24:22', 'Consulta', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(182, 'Explicabo numquam ratione non voluptatem numquam.', 3, 3, 16, '2020-11-03', '13:05:54', 'Operación', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Cancelada'),
(183, 'Voluptatem est beatae ipsa magni voluptatem.', 1, 56, 47, '2021-07-10', '15:08:49', 'Consulta', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(184, 'Quia aliquid atque similique et.', 3, 55, 25, '2021-01-13', '16:05:45', 'Consulta', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Cancelada'),
(185, 'Aut velit laudantium repellat fuga repudiandae non.', 1, 57, 42, '2021-03-11', '11:26:21', 'Examen', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Cancelada'),
(186, 'A et corrupti id vitae.', 3, 3, 39, '2021-07-15', '18:51:12', 'Operación', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Cancelada'),
(187, 'Repudiandae aspernatur veritatis voluptatibus.', 3, 59, 28, '2021-04-17', '21:45:39', 'Examen', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Cancelada'),
(188, 'Porro at eum perferendis veritatis eveniet sit.', 2, 3, 38, '2021-06-16', '11:42:50', 'Consulta', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Cancelada'),
(189, 'Voluptatem sed amet nostrum expedita sint atque.', 3, 58, 15, '2021-03-27', '09:14:51', 'Consulta', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Cancelada'),
(190, 'Deleniti itaque ut maxime perferendis aut consectetur.', 3, 54, 19, '2021-03-07', '11:32:13', 'Consulta', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Cancelada'),
(191, 'Est molestiae id quia vel soluta.', 2, 54, 32, '2021-02-21', '01:12:11', 'Operación', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(192, 'Repudiandae natus cupiditate quis maxime.', 2, 59, 36, '2021-03-28', '16:40:31', 'Operación', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(193, 'Iusto aut modi sequi ratione.', 1, 57, 32, '2020-12-03', '15:29:10', 'Examen', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(194, 'Voluptas corporis aut aut ipsam.', 3, 59, 28, '2021-01-11', '13:40:10', 'Consulta', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(195, 'Tempora quisquam et minus velit.', 2, 3, 50, '2021-03-23', '19:44:32', 'Operación', '2021-08-18 17:16:49', '2021-08-18 17:16:49', 'Atendida'),
(196, 'Pariatur est enim explicabo praesentium.', 3, 56, 34, '2020-08-26', '06:54:46', 'Consulta', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Atendida'),
(197, 'Omnis quo corrupti autem nemo dolorem.', 1, 62, 48, '2020-08-22', '20:00:18', 'Consulta', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Atendida'),
(198, 'Debitis in atque excepturi.', 2, 3, 5, '2021-08-16', '00:26:31', 'Operación', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Atendida'),
(199, 'Numquam cum id praesentium nisi.', 2, 55, 11, '2020-09-16', '16:19:52', 'Examen', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Cancelada'),
(200, 'Illum quo cumque consectetur quia aut.', 1, 3, 10, '2021-02-19', '06:56:07', 'Examen', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Cancelada'),
(201, 'Ut omnis voluptatum voluptatum ut consectetur temporibus.', 2, 3, 22, '2021-08-10', '13:24:35', 'Consulta', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Atendida'),
(202, 'Aut inventore est quae ut voluptate.', 3, 58, 19, '2021-06-15', '10:32:30', 'Operación', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Atendida'),
(203, 'Voluptatem nostrum fuga numquam officiis est ipsa.', 2, 56, 22, '2020-11-16', '15:58:57', 'Examen', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Cancelada'),
(204, 'At velit facere in voluptas.', 2, 61, 47, '2021-02-24', '08:02:48', 'Consulta', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Atendida'),
(205, 'Quidem corrupti sint libero sed ullam eveniet.', 3, 57, 29, '2021-04-16', '13:52:25', 'Operación', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Cancelada'),
(206, 'Minima rem voluptate veniam.', 2, 62, 10, '2021-02-11', '01:28:30', 'Consulta', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Cancelada'),
(207, 'Magnam facere accusamus ut.', 1, 56, 24, '2021-08-07', '16:57:58', 'Consulta', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Cancelada'),
(208, 'Rerum ea dolor in in sunt voluptas.', 1, 61, 22, '2020-08-24', '06:14:20', 'Consulta', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Atendida'),
(209, 'Ut magni quia dolores libero aut.', 2, 54, 2, '2021-03-29', '05:37:56', 'Consulta', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Cancelada'),
(210, 'Error qui sit non et enim.', 3, 55, 31, '2021-01-08', '00:16:15', 'Operación', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Cancelada'),
(211, 'Eos omnis et expedita quia.', 1, 61, 34, '2020-11-09', '01:22:20', 'Operación', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Cancelada'),
(212, 'Eum labore aut occaecati aspernatur id.', 2, 54, 7, '2021-01-07', '09:27:00', 'Consulta', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Atendida'),
(213, 'Voluptate libero optio at.', 1, 59, 6, '2021-04-16', '04:08:27', 'Consulta', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Atendida'),
(214, 'Excepturi id quasi quas beatae et laboriosam.', 1, 60, 37, '2021-02-22', '10:36:38', 'Examen', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Atendida'),
(215, 'In omnis vitae nisi rem.', 3, 61, 8, '2020-09-16', '21:35:24', 'Examen', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Atendida'),
(216, 'Dolor nisi unde saepe consequuntur.', 1, 54, 42, '2021-04-19', '10:41:44', 'Operación', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Atendida'),
(217, 'Illum dolores sed sequi.', 2, 3, 11, '2021-01-31', '12:38:44', 'Operación', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Atendida'),
(218, 'Quibusdam et beatae tempore.', 2, 56, 4, '2021-08-08', '04:29:14', 'Operación', '2021-08-18 17:16:50', '2021-08-18 17:16:50', 'Cancelada'),
(219, 'Quo nemo corporis hic sit.', 1, 56, 2, '2021-05-07', '16:35:52', 'Consulta', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(220, 'Accusamus et sint dignissimos animi ipsa.', 2, 3, 25, '2021-01-24', '06:08:02', 'Examen', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(221, 'Doloremque perferendis et vero qui enim totam.', 1, 57, 30, '2021-02-08', '03:24:21', 'Examen', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(222, 'Nobis rerum est et omnis quo.', 3, 60, 27, '2021-05-17', '22:07:28', 'Examen', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Cancelada'),
(223, 'Blanditiis eveniet eos consectetur nam dicta.', 1, 60, 46, '2020-09-08', '13:43:16', 'Consulta', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(224, 'Iste nobis in facere ut sit.', 2, 54, 5, '2021-07-04', '23:58:49', 'Consulta', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Cancelada'),
(225, 'Nobis nemo possimus temporibus officiis recusandae est.', 3, 57, 26, '2020-11-28', '11:45:16', 'Examen', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(226, 'Laudantium numquam voluptatem est cumque vero ut.', 1, 58, 18, '2021-03-28', '19:47:22', 'Examen', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(227, 'Consequatur sit voluptatem ipsa ut et.', 1, 57, 6, '2020-11-23', '15:44:11', 'Examen', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(228, 'Officiis officiis esse est.', 1, 56, 38, '2021-06-06', '20:43:56', 'Examen', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(229, 'Blanditiis voluptatem culpa maiores in dignissimos unde.', 1, 55, 22, '2020-10-03', '11:44:19', 'Examen', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Cancelada'),
(230, 'Dignissimos voluptas quidem voluptatem accusamus et sunt.', 2, 57, 18, '2021-01-02', '16:23:30', 'Operación', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Cancelada'),
(231, 'Est minima illo molestiae aut hic eos.', 2, 60, 27, '2021-01-28', '13:43:58', 'Consulta', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(232, 'Mollitia ut voluptas et consequatur.', 2, 56, 9, '2021-03-12', '22:26:59', 'Examen', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Cancelada'),
(233, 'Sint ullam consectetur nam laborum.', 2, 60, 28, '2021-06-06', '02:10:21', 'Operación', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Cancelada'),
(234, 'Suscipit quam ipsam nihil reprehenderit sit.', 1, 57, 38, '2020-10-15', '22:39:12', 'Consulta', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Cancelada'),
(235, 'Ducimus quae omnis amet aut.', 2, 55, 30, '2021-07-20', '06:58:46', 'Examen', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Cancelada'),
(236, 'Aut vitae beatae nobis corrupti.', 3, 55, 4, '2021-01-02', '03:04:39', 'Examen', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Cancelada'),
(237, 'Id et ea accusantium ut maiores.', 2, 62, 36, '2020-11-02', '19:04:11', 'Consulta', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(238, 'Harum laborum non doloribus quaerat.', 3, 62, 50, '2021-03-11', '02:52:59', 'Operación', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Cancelada'),
(239, 'Delectus ut nobis pariatur quasi eaque.', 1, 60, 35, '2021-07-13', '08:44:25', 'Examen', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(240, 'Voluptas qui totam et veniam ut.', 1, 62, 24, '2021-03-29', '09:50:44', 'Operación', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Cancelada'),
(241, 'Quam quas omnis pariatur.', 2, 55, 19, '2020-11-23', '21:23:28', 'Consulta', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(242, 'Et incidunt illo molestias ipsa repudiandae ut.', 2, 3, 25, '2021-04-25', '10:41:22', 'Operación', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(243, 'Earum neque ut quam expedita.', 3, 61, 4, '2021-07-02', '09:23:55', 'Operación', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Atendida'),
(244, 'Cupiditate et optio provident ea asperiores.', 2, 3, 11, '2021-04-01', '05:19:58', 'Consulta', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Cancelada'),
(245, 'Natus natus est repellendus.', 1, 54, 6, '2020-12-26', '03:05:56', 'Consulta', '2021-08-18 17:16:51', '2021-08-18 17:16:51', 'Cancelada'),
(246, 'Quod aut aperiam asperiores.', 3, 55, 22, '2021-05-23', '16:16:26', 'Consulta', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Atendida'),
(247, 'Voluptatem autem ipsa quae veritatis.', 3, 60, 24, '2021-02-17', '18:14:15', 'Operación', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Cancelada'),
(248, 'Et esse ut voluptas.', 1, 61, 48, '2020-10-09', '10:54:37', 'Operación', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Cancelada'),
(249, 'Voluptatum tenetur libero earum.', 2, 54, 51, '2021-07-26', '04:32:45', 'Examen', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Atendida'),
(250, 'Quo est quas est soluta id officia.', 3, 54, 34, '2021-01-30', '21:06:51', 'Examen', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Atendida'),
(251, 'Consequatur saepe voluptatum necessitatibus aut qui cum.', 1, 58, 40, '2021-02-28', '11:24:34', 'Examen', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Cancelada'),
(252, 'Labore earum qui distinctio.', 1, 62, 43, '2020-09-16', '06:23:28', 'Examen', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Atendida'),
(253, 'Minus beatae quod aut ea accusamus blanditiis.', 3, 58, 45, '2021-04-10', '07:43:57', 'Operación', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Cancelada'),
(254, 'Sit voluptatem et vitae voluptas.', 2, 3, 14, '2021-02-06', '12:01:33', 'Consulta', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Cancelada'),
(255, 'Corrupti odio libero et.', 1, 57, 22, '2020-09-15', '19:19:48', 'Operación', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Atendida'),
(256, 'Repellat expedita blanditiis magni voluptatem molestias.', 2, 54, 29, '2021-01-28', '18:29:24', 'Consulta', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Cancelada'),
(257, 'Sunt vitae ut et iure assumenda repudiandae.', 3, 59, 51, '2021-06-01', '22:37:02', 'Operación', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Atendida'),
(258, 'Ipsa atque omnis quidem.', 2, 61, 2, '2021-08-07', '03:29:47', 'Examen', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Atendida'),
(259, 'Quisquam dicta officiis nostrum quis.', 1, 54, 7, '2021-08-02', '10:24:50', 'Operación', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Atendida'),
(260, 'Similique perferendis minus quo nostrum sed.', 2, 58, 20, '2020-08-31', '07:04:48', 'Operación', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Cancelada'),
(261, 'Nostrum sit odio nihil.', 3, 60, 41, '2021-01-19', '11:00:53', 'Consulta', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Atendida'),
(262, 'Modi nostrum et quia sequi.', 3, 56, 23, '2020-11-18', '09:22:22', 'Examen', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Atendida'),
(263, 'Saepe delectus repellendus dolorem.', 1, 62, 6, '2021-06-18', '02:53:15', 'Consulta', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Cancelada'),
(264, 'Nam eius odit voluptas.', 3, 58, 28, '2020-10-27', '16:16:08', 'Operación', '2021-08-18 17:16:52', '2021-08-18 17:16:52', 'Cancelada'),
(265, 'Consectetur distinctio est quia.', 3, 55, 53, '2020-11-28', '04:35:38', 'Operación', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Cancelada'),
(266, 'Doloremque quasi autem perferendis blanditiis et.', 2, 58, 43, '2021-05-15', '01:16:49', 'Operación', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Atendida'),
(267, 'Voluptatem vel numquam neque.', 3, 54, 52, '2020-09-04', '17:43:00', 'Examen', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Atendida'),
(268, 'Fuga atque sunt neque.', 2, 56, 50, '2021-05-21', '00:15:08', 'Consulta', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Atendida'),
(269, 'Consequatur iusto reprehenderit consectetur aliquid necessitatibus eaque.', 2, 62, 42, '2021-05-13', '02:48:14', 'Examen', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Cancelada'),
(270, 'Fugiat mollitia quo quos incidunt accusantium quaerat.', 3, 57, 36, '2021-01-28', '09:41:08', 'Examen', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Cancelada'),
(271, 'Quis accusantium deleniti dolorem exercitationem numquam voluptates rem.', 1, 54, 16, '2021-07-23', '05:42:00', 'Examen', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Cancelada'),
(272, 'Impedit eum cumque in.', 3, 55, 21, '2021-06-29', '23:29:55', 'Examen', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Cancelada'),
(273, 'Commodi autem aut aliquam veritatis laboriosam.', 1, 62, 20, '2020-10-01', '02:19:45', 'Consulta', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Cancelada'),
(274, 'Perferendis maiores quia beatae magni.', 1, 54, 31, '2020-08-21', '01:45:49', 'Operación', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Atendida'),
(275, 'Sint quae voluptas natus.', 3, 54, 20, '2021-04-12', '11:58:51', 'Examen', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Atendida'),
(276, 'Voluptatem quaerat ut repudiandae nobis eligendi.', 3, 54, 44, '2020-09-11', '16:20:15', 'Consulta', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Atendida'),
(277, 'Nobis quam labore exercitationem dolorum.', 2, 61, 14, '2021-05-30', '21:03:20', 'Consulta', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Cancelada'),
(278, 'Repellendus aut ex sunt sit explicabo.', 3, 62, 42, '2020-09-28', '21:49:06', 'Consulta', '2021-08-18 17:16:53', '2021-08-18 17:16:53', 'Cancelada'),
(279, 'Illum fugiat nobis nihil enim fugit.', 1, 60, 9, '2021-04-02', '20:00:35', 'Operación', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Cancelada'),
(280, 'Nihil consectetur nihil voluptatem et quod enim.', 3, 55, 53, '2021-02-06', '01:43:33', 'Consulta', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Atendida'),
(281, 'Voluptatem sunt et soluta maxime.', 1, 62, 10, '2021-02-06', '01:57:36', 'Examen', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Cancelada'),
(282, 'Dolorum rerum cupiditate odit perferendis aut.', 2, 58, 12, '2021-06-20', '08:24:57', 'Operación', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Atendida'),
(283, 'Est sed harum cumque deleniti architecto.', 2, 55, 53, '2021-02-28', '20:00:42', 'Operación', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Atendida'),
(284, 'Eveniet voluptatibus similique amet.', 3, 59, 12, '2021-03-31', '13:27:20', 'Consulta', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Cancelada'),
(285, 'Quas ipsam autem recusandae et eaque illo.', 3, 56, 6, '2020-10-23', '16:47:17', 'Examen', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Atendida'),
(286, 'Eligendi aut sed ea vero consequatur.', 3, 57, 45, '2021-04-06', '01:31:21', 'Consulta', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Cancelada'),
(287, 'Eum voluptatem soluta veniam aut.', 2, 60, 9, '2021-07-21', '10:07:06', 'Operación', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Atendida'),
(288, 'Quisquam dolores et asperiores ut voluptatum illum.', 2, 62, 36, '2020-11-01', '00:30:30', 'Consulta', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Cancelada'),
(289, 'Voluptas aut ut possimus.', 2, 62, 30, '2021-07-09', '06:21:26', 'Operación', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Atendida'),
(290, 'Quaerat delectus molestiae ex et odio ex.', 3, 57, 8, '2020-10-11', '17:54:33', 'Examen', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Atendida'),
(291, 'Dolor est sit et ut.', 1, 55, 46, '2021-07-23', '21:59:27', 'Consulta', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Cancelada'),
(292, 'Rerum porro ut doloremque quos numquam quis.', 1, 61, 38, '2021-08-05', '04:54:48', 'Examen', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Atendida'),
(293, 'Molestias voluptate nihil quaerat.', 1, 62, 53, '2021-04-20', '00:02:57', 'Consulta', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Cancelada'),
(294, 'Et doloribus et eaque ut quam sed.', 3, 61, 16, '2020-12-30', '09:26:45', 'Operación', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Cancelada'),
(295, 'Vitae ea eos nihil sit sed accusamus.', 2, 54, 7, '2020-12-17', '15:05:30', 'Examen', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Cancelada'),
(296, 'Velit ea dolorem ut.', 3, 57, 18, '2021-07-31', '06:03:00', 'Examen', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Atendida'),
(297, 'Est vero expedita omnis.', 3, 60, 2, '2021-07-24', '10:29:19', 'Consulta', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Atendida'),
(298, 'Eum neque dolor quis in possimus ipsa.', 2, 55, 51, '2020-12-31', '18:02:57', 'Operación', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Atendida'),
(299, 'Dolorum omnis neque perspiciatis quo laudantium.', 3, 3, 50, '2021-06-27', '02:38:47', 'Examen', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Atendida'),
(300, 'Dolorem consectetur sunt voluptatem.', 1, 60, 32, '2020-09-29', '21:56:24', 'Operación', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Cancelada'),
(301, 'Explicabo unde temporibus qui.', 3, 57, 8, '2021-04-29', '05:04:07', 'Consulta', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Atendida'),
(302, 'Neque unde enim et voluptatum dolor.', 2, 57, 2, '2020-12-11', '14:56:45', 'Operación', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Cancelada'),
(303, 'Eaque nemo hic autem.', 3, 58, 18, '2021-04-17', '01:02:47', 'Consulta', '2021-08-18 17:16:54', '2021-08-18 17:16:54', 'Cancelada'),
(304, 'tengo dolor de diente', 1, 65, 66, '2021-08-20', '10:30:00', 'Consulta', '2021-08-19 22:40:08', '2021-08-19 22:40:08', 'Reservada'),
(305, 'tengo dolor del corazon', 3, 3, 2, '2021-08-19', '15:30:00', 'Examen', '2021-08-19 23:34:32', '2021-08-19 23:34:58', 'Cancelada'),
(306, 'Gripe fuerte con sintomas del OMICRON', 1, 65, 2, '2022-03-11', '18:30:00', 'Consulta', '2022-03-11 22:41:14', '2022-03-11 22:47:32', 'Cancelada'),
(307, 'Gripe fuerte con sintomas del OMICRON', 3, 3, 2, '2022-03-17', '08:00:00', 'Consulta', '2022-03-11 22:42:54', '2022-03-11 22:50:07', 'Confirmada'),
(308, 'Gripe fuerte con sintomas del OMICRON', 3, 3, 2, '2022-03-12', '07:00:00', 'Consulta', '2022-03-11 22:45:26', '2022-03-11 22:50:58', 'Confirmada'),
(309, 'Gripe fuerte con sintomas del OMICRON', 3, 3, 2, '2022-03-17', '08:30:00', 'Consulta', '2022-03-11 22:46:24', '2022-03-11 22:50:36', 'Confirmada'),
(310, 'Gripe fuerte con sintomas del OMICRON', 3, 3, 2, '2022-03-17', '09:00:00', 'Examen', '2022-03-11 22:48:19', '2022-03-11 22:50:18', 'Confirmada'),
(311, 'Sintomas del COVID 19 en fase II', 3, 3, 2, '2022-03-17', '16:00:00', 'Examen', '2022-03-11 22:52:17', '2022-03-11 22:52:17', 'Reservada'),
(312, 'Sintomas del COVID 19 en fase II', 3, 3, 2, '2022-03-17', '15:00:00', 'Examen', '2022-03-11 22:56:26', '2022-03-11 22:56:26', 'Reservada'),
(313, 'examen de sangre', 3, 3, 73, '2023-04-29', '06:00:00', 'Consulta', '2023-04-04 19:36:05', '2023-04-04 19:36:05', 'Reservada'),
(314, 'examen de sangre', 1, 54, 74, '2023-04-05', '09:00:00', 'Examen', '2023-04-04 20:01:56', '2023-04-04 20:03:23', 'Confirmada'),
(315, 'examen de sangre', 1, 54, 74, '2023-04-04', '09:00:00', 'Consulta', '2023-04-04 20:02:34', '2023-04-04 20:02:34', 'Reservada'),
(316, 'Limpieza de caries', 1, 54, 74, '2023-04-05', '16:00:00', 'Examen', '2023-04-04 20:05:47', '2023-04-04 20:05:47', 'Reservada'),
(317, 'Extracción de dientes superiores e inferiores', 1, 54, 74, '2023-04-04', '13:00:00', 'Operación', '2023-04-04 20:06:44', '2023-04-04 20:06:44', 'Reservada'),
(318, 'Extraccion de muelas', 1, 54, 74, '2023-04-06', '17:00:00', 'Operación', '2023-04-04 20:11:41', '2023-04-04 20:11:41', 'Reservada'),
(319, 'Examen de caries y limpieza de dientes', 1, 54, 76, '2023-04-07', '09:00:00', 'Examen', '2023-04-04 20:27:57', '2023-04-04 20:27:57', 'Reservada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancelled_appointments`
--

CREATE TABLE `cancelled_appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `appointment_id` int(10) UNSIGNED NOT NULL,
  `justification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_by_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cancelled_appointments`
--

INSERT INTO `cancelled_appointments` (`id`, `appointment_id`, `justification`, `cancelled_by_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'Me surgio un problema a ultimo momento. Lo siento... me comunicare por el telefono para coordinar mejor', 2, '2021-08-18 05:42:44', '2021-08-18 05:42:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(69, '2014_10_12_000000_create_users_table', 1),
(70, '2014_10_12_100000_create_password_resets_table', 1),
(71, '2021_07_27_032003_create_specialties_table', 1),
(72, '2021_07_29_145946_create_work_days_table', 1),
(73, '2021_07_30_004057_create_appointments_table', 1),
(74, '2021_07_30_162051_create_specialty_user_table', 1),
(75, '2021_08_10_160300_add_status_to_appointments', 2),
(76, '2021_08_18_002121_create_cancelled_appointments_table', 3),
(77, '2021_08_17_221405_rename_cancelled_by_in_cancelled_appointments_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specialties`
--

CREATE TABLE `specialties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `specialties`
--

INSERT INTO `specialties` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Oftalmologia', 'Primera Area', '2021-08-06 04:43:34', '2022-03-11 21:49:19'),
(2, 'Pediatria', 'Segunda area', '2021-08-06 04:43:35', '2022-03-11 21:49:28'),
(3, 'Neurologia', 'Tercera Area', '2021-08-06 04:43:35', '2022-03-11 21:49:38'),
(8, 'Cardiologia', 'Cuarta Area', '2022-03-11 22:24:20', '2022-03-11 22:24:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specialty_user`
--

CREATE TABLE `specialty_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `specialty_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `specialty_user`
--

INSERT INTO `specialty_user` (`id`, `user_id`, `specialty_id`, `created_at`, `updated_at`) VALUES
(1, 54, 1, '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(2, 55, 1, '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(3, 56, 1, '2021-08-06 04:43:35', '2021-08-06 04:43:35'),
(4, 57, 2, '2021-08-06 04:43:35', '2021-08-06 04:43:35'),
(5, 58, 2, '2021-08-06 04:43:35', '2021-08-06 04:43:35'),
(6, 59, 2, '2021-08-06 04:43:35', '2021-08-06 04:43:35'),
(7, 60, 3, '2021-08-06 04:43:35', '2021-08-06 04:43:35'),
(8, 61, 3, '2021-08-06 04:43:35', '2021-08-06 04:43:35'),
(9, 62, 3, '2021-08-06 04:43:35', '2021-08-06 04:43:35'),
(10, 3, 3, '2021-08-06 04:43:35', '2021-08-06 04:43:35'),
(11, 65, 1, '2021-08-19 22:31:20', '2021-08-19 22:31:20'),
(12, 54, 3, '2023-04-04 19:52:22', '2023-04-04 19:52:22'),
(13, 55, 8, '2023-04-04 19:52:38', '2023-04-04 19:52:38'),
(14, 56, 2, '2023-04-04 19:53:02', '2023-04-04 19:53:02'),
(15, 56, 3, '2023-04-04 19:53:02', '2023-04-04 19:53:02'),
(16, 56, 8, '2023-04-04 19:53:02', '2023-04-04 19:53:02'),
(17, 57, 1, '2023-04-04 19:53:22', '2023-04-04 19:53:22'),
(18, 57, 3, '2023-04-04 19:53:22', '2023-04-04 19:53:22'),
(19, 57, 8, '2023-04-04 19:53:22', '2023-04-04 19:53:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `dni`, `address`, `phone`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nestor Caceres', 'nes@gmail.com', NULL, '$2y$10$zD9tUsu6Rcfn2SKDqOP2GuBYMeSCXtW7ujGoy4Dv4XCz1A8SFpmRK', '12345678', '', '', 'admin', 'ngA0SKK0IKdSkFzGyU9dpGAXI5Iid44DHQvAPGKVIHR8SkmY5eMDINaOxmxx', '2021-08-06 04:43:31', '2021-08-06 04:43:31'),
(2, 'paciente maicol', 'paciente@gmail.com', NULL, '$2y$10$qClx3RGRCB4mxGJov6VPGO8GkJn0lMxFd6lkqf1KHtg5RM8cS6HXi', '12345678', '', '', 'patient', '0lwA9cBfNhUSzwnLNOUUqZjCDG1M6xVVh2pshcplvxGW5TQbAFvI4bhDOdrp', '2021-08-06 04:43:31', '2021-08-06 04:43:31'),
(3, 'Dra. mayumi huamani', 'mayu@gmail.com', NULL, '$2y$10$dzr1IQktbHJ2ruWATkb39ewp68781/FJSsmMpJV47HecQle/eUQBe', '12345678', 'Abancay', '12345678', 'doctor', 'HU97Hegf5H2vOKObuTLEpopLXMAUPv3N1JKswE7MtWVbZhh5UYA7r0W7h6h3', '2021-08-06 04:43:31', '2021-08-19 23:26:33'),
(4, 'vanessa beltran', 'vane@gmail.com', NULL, '$2y$10$8g6ucj5tdNFP1SJNQUNvCOatx9vm.jeeolQuJQPFlr2f9M/n9u9h2', '76952860', 'CUSCO', '12345678', 'admin', 'To4vBv1qSC', '2021-08-06 04:43:31', '2021-08-19 22:15:27'),
(5, 'Dr. Theresa Kemmer', 'agnes@gmail.com', NULL, '$2y$10$s3UyiFNOezppoCwLc3EQ.eD1q8qvTvwJrXj.O0qA8aJMZdFMo4KjG', '12345678', '7478 Von Walk Suite 736Port Ricardoborough, OR 01002-2534', '12345678', 'patient', 'NK6xKy4wdz', '2021-08-06 04:43:31', '2021-08-19 22:16:17'),
(6, 'Jamie Crist', 'cyrus.price@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '78553827', '73237 Rogahn Gateway Suite 133\nPort Lennaside, CA 51868-8716', '+8458095730725', 'patient', '5I08znKTty', '2021-08-06 04:43:31', '2021-08-06 04:43:31'),
(7, 'Naomie Hessel', 'dbuckridge@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '54868151', '599 Annetta Plains Suite 608\nNorth Charleyborough, IA 69103-8696', '+8309038203235', 'patient', 'rxGOxil71g', '2021-08-06 04:43:31', '2021-08-06 04:43:31'),
(8, 'Janis Pollich IV', 'ocorkery@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '54525810', '713 Cruickshank Pass Apt. 875\nMarlonview, IA 63837-6840', '+8894539000781', 'patient', '9i9Qk2eAK4', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(9, 'Luna Hauck', 'jacey.schoen@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '78826674', '1045 Helga Shoal Suite 124\nSwaniawskiborough, AR 43654', '+3079477662638', 'patient', 'c273USfmXb', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(10, 'Dr. Erin Ward Jr.', 'tillman.reggie@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '60093907', '507 DuBuque Estates Apt. 632\nLake Angelineview, OH 88019-1316', '+6865265084539', 'patient', 'mEFcLZjf9w', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(11, 'Vivianne Olson III', 'moses.konopelski@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '55191216', '1952 Hugh Creek\nFlatleyhaven, TN 62991', '+2260610579917', 'patient', '1WLVU7ZxSG', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(12, 'Jo Vandervort', 'altenwerth.alberta@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '93654286', '399 Stracke Shoal\nErdmanhaven, OR 98725-8743', '+4498558714116', 'patient', 'zMr5fLQGZ4', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(13, 'Aida Parisian', 'wuckert.jaylen@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '81658468', '15994 Walter Burgs Apt. 470\nGusikowskiport, NC 13581-1141', '+2908093988076', 'patient', '9CrfY7h2ym', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(14, 'Charity Fadel', 'deontae.morissette@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '40493519', '485 Muriel Highway Suite 523\nSouth Laurence, KY 71061-6636', '+1630907748248', 'patient', 'A4ZMfPBG9P', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(15, 'Sister Zemlak', 'eldred20@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '48922294', '21784 Twila Village Apt. 417\nHaagborough, PA 06808-1219', '+7602634497474', 'patient', 'kNKtDxlpoB', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(16, 'Dr. Una Cummerata Sr.', 'jewel.beier@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '24431379', '599 Jennings Spurs\nPort Fred, ME 27942', '+4138666539674', 'patient', 'LAMjmoPulc', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(17, 'Dr. Jakob Thompson IV', 'schowalter.garrick@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '57689413', '5008 Abbott Mission\nChadrickmouth, MO 24476', '+2845309511568', 'patient', '0X7pflFpUC', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(18, 'Jovani Osinski', 'nroberts@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '11240137', '661 Bahringer Mill Apt. 993\nPort Grahamshire, WY 36234-5190', '+1537793207837', 'patient', 'kIZf2ILwHr', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(19, 'Prof. Esteban Baumbach', 'gustave.osinski@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '25711730', '248 Zulauf Mills\nWest Lillie, OH 71671-6788', '+1055485352692', 'patient', 'eSdscfbeA5', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(20, 'Reba Adams DVM', 'mary38@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '39967069', '898 Lucile Inlet Apt. 472\nMaeganside, OH 06062-7863', '+7801324147485', 'patient', '4wjGYxTVYf', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(21, 'Cindy Gleason', 'cullen96@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '86416983', '711 Roob Ridge\nLake Uriahbury, NE 52425-4496', '+9437174206776', 'patient', 'P81ITez63F', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(22, 'Elbert Bailey', 'alice.predovic@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '25755674', '7222 Bethany Path Suite 214\nEdmundmouth, SC 04197-9372', '+9885429560420', 'patient', 'AgAWwYRevR', '2021-08-06 04:43:32', '2021-08-06 04:43:32'),
(23, 'Damien Yundt', 'xokeefe@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '42578694', '16139 Dino Forks\nHoegershire, MN 68652-5601', '+1779615496656', 'patient', 'GSfDGRP0Vr', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(24, 'Patrick Nolan', 'wstiedemann@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '66331128', '98967 Merritt Crossing\nGrahamport, MD 68097-7560', '+2501729358656', 'patient', 'vvMt1w3dcC', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(25, 'Wilhelmine Nikolaus', 'holden17@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '27291436', '44617 Kaley Fort\nCieloton, AZ 83416', '+1719002450273', 'patient', 'k3C8woJOqx', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(26, 'Janelle Beer', 'brycen92@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '97914117', '857 Christopher Lights\nPort Cydneybury, TX 70034', '+8951020427393', 'patient', 'LSGVdO6qG5', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(27, 'Zackary Little', 'owolff@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '93790883', '8485 Brandyn Street\nWest Rozella, WA 96482-7728', '+7752679699769', 'patient', 'up24xPsiiC', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(28, 'Lessie Price I', 'feeney.christa@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '23303162', '2132 Homenick Springs\nNew Milanland, ND 51428', '+5417782763458', 'patient', 'YOPmP1iAJH', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(29, 'Mr. Marcelo Gaylord', 'epagac@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '24655838', '1243 Clovis Throughway Suite 861\nKutchshire, IA 98470-1783', '+7013078716469', 'patient', 'knlaVPFAoy', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(30, 'Clement Smith', 'hollie94@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '16020368', '723 Powlowski Turnpike Suite 144\nNorth Alessandro, VT 34098-8836', '+7008644542159', 'patient', 'cWCYlO5iNN', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(31, 'Clovis Hintz', 'murazik.austen@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '67835676', '1023 Zita Gardens Apt. 746\nAlyceburgh, UT 74156', '+9542999041190', 'patient', 'cMwD57FGZD', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(32, 'Hassan Kreiger', 'travon.bartell@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '81018041', '33592 Lee Extension Suite 019\nProhaskaton, WV 00458', '+5654700266307', 'patient', '8Nq9yDvC6P', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(33, 'Dr. Chyna Jacobson Sr.', 'jeanie86@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '44130395', '899 Lorenza Village Suite 977\nSouth Russel, IL 09653-7770', '+3374550666503', 'patient', 'aRxwPxiM2a', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(34, 'Mr. Craig Beatty Jr.', 'elwyn64@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '19250077', '97788 Chaya Shore\nBettyeborough, CO 40370-7151', '+6627367080257', 'patient', 'aEXsjtVSuD', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(35, 'Jaylon Goyette', 'qgreenfelder@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '34888531', '73900 Walter Street Suite 066\nWest Nikita, AK 53602-1398', '+4687852056042', 'patient', 'uAfs2ITPrw', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(36, 'Levi Hudson II', 'mgraham@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '93742035', '928 Kaylie Neck\nMartinland, CT 81337', '+9812206919746', 'patient', 'f6aemMlryO', '2021-08-06 04:43:33', '2021-08-06 04:43:33'),
(37, 'Paris Adams', 'tracy.cassin@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '88124063', '179 Lakin Roads Apt. 243\nEmardborough, DE 84776-3562', '+5720334295037', 'patient', 'VuULOAUJ3V', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(38, 'Dr. Karli Lindgren III', 'koby.kessler@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '78619424', '54274 Walker Spring Apt. 179\nKirkfurt, NJ 23245-2500', '+5941105783179', 'patient', 'wikfPzJKBo', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(39, 'Savannah Conn', 'coby31@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '64064759', '171 Wendell Causeway\nPort Gudrunborough, OK 54285-9437', '+7174465760632', 'patient', 'EhWrN5Ngt3', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(40, 'Dr. Julien Kuhn', 'zharvey@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '26305253', '1187 Tyrese Valley Apt. 266\nRebekaland, AR 05015-8115', '+2239015190235', 'patient', '3Ir5MQnyP6', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(41, 'Malika Jacobs', 'mateo03@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '42181415', '23651 Erick Passage\nStrackeburgh, OR 51762', '+3560362424529', 'patient', '5UqTZZmjce', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(42, 'Mr. Davonte Stamm II', 'boyer.kyler@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '20537401', '31009 Lacy Prairie Suite 457\nNorth Brett, MS 26200', '+9719271048511', 'patient', 'guKDdu6Zt6', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(43, 'Ewell Dach PhD', 'dpacocha@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '18707319', '84653 Mueller Heights Apt. 186\nNew Daron, CT 86862', '+4284676128723', 'patient', 'SChmDDcRGx', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(44, 'Mrs. Bethel Erdman DVM', 'jbashirian@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '74652782', '60983 Willms Square\nFramiland, NC 33387', '+2600020188243', 'patient', 'bT7rXJGgh8', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(45, 'Greg Wisozk', 'clement44@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '59495692', '688 Liza Fork\nNew Amina, CA 97415-9731', '+6452328691813', 'patient', 'VLxVmf7oLF', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(46, 'Dr. Aliya Rodriguez DDS', 'rogahn.stevie@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '46513409', '1913 Ritchie Villages\nPort Jo, CA 13182-3099', '+6360917145563', 'patient', 'dW7vvORymh', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(47, 'Kendrick Smitham', 'ylowe@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '77653257', '39428 Vilma Row Suite 074\nSouth Emmaside, DE 27491', '+3617429356805', 'patient', 'tKkkVqrVqg', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(48, 'Earline Metz', 'lreichel@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '90779874', '231 Rosa Underpass\nNorth Alvena, ND 78658-5552', '+3893732566715', 'patient', 'Y9XqdkMUgP', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(49, 'Prof. Cruz Koch', 'bechtelar.jevon@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '79066580', '60066 Wisoky Throughway\nNorth Teaganberg, SD 42723-8572', '+3147755405396', 'patient', 'paS6qVpW0E', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(50, 'Dr. Kariane Kuhic IV', 'emily.kautzer@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '62889577', '9051 Jordan Avenue\nGeneralfort, NY 31754-8287', '+1774001501200', 'patient', 'OcbcO0KQbu', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(51, 'Dr. Hazle Stark Jr.', 'dnicolas@example.com', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '80305989', '32363 Scotty Dam Apt. 007\nNew Deontae, NE 26090-3207', '+6634606303116', 'patient', '5cyKq6omTQ', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(52, 'Oswaldo Gusikowski', 'ezequiel07@example.net', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '99754613', '8666 Hegmann Crescent\nNorth Emmanuelleburgh, TX 71378', '+8144401155775', 'patient', 'D68YFIv1mi', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(53, 'Dr. Antone O\'Reilly', 'nwillms@example.org', NULL, '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '92235367', '603 Ted Route\nPort Alia, RI 81753-1604', '+2067545901538', 'patient', 'foABftvlVv', '2021-08-06 04:43:34', '2021-08-06 04:43:34'),
(54, 'Laura Sanchez', 'laura@gmail.com', NULL, '$2y$10$p.H4qD7O59IRDtLVLJj6HexQ9lyuGkQ.ha.eC6.R/5Zab1RLgH5oq', '27625760', '3736 Herzog FreewayOberbrunnerton, KS 73998', '+8352344702643', 'doctor', 'PXZ6Mslu0VgIZVFbmNs6qqT87o0lm2MJiAv7PqVbifERd0UjdwOw3sYO3c35', '2021-08-06 04:43:34', '2023-04-04 19:46:43'),
(55, 'Isabel Huel', 'isabel@gmail.com', NULL, '$2y$10$3n6NAU4wa1Tnh1Q9gnPx1.fjW/OKJA1v49N20i/HjvDPuFr7YvDNm', '44855738', '37881 Ritchie RoadNorth Bettye, AL 91784-0116', '+8576501757842', 'doctor', '58QX8Z8QhHvqDXn8d85zpu7c7ek9qV7TC8o1v3colJhJfgPnuuKkmTtvcchx', '2021-08-06 04:43:34', '2023-04-04 19:47:18'),
(56, 'Felipe Garay', 'felipe@gmail.com', NULL, '$2y$10$f7ZHZa0htHG43BczWUkbkuLFXKI3cEC.XUe.GCPjYh9O0SinGuumO', '85281596', '4312 Spencer Locks Apt. 120Lake Veronicaside, MT 86586', '+7489829499676', 'doctor', 'J429vlNXvH24ZXw4bEFeosBPWgchzGwXdNuc7xmA7kFbrC8Kpe1W8smt1P4C', '2021-08-06 04:43:34', '2023-04-04 19:48:00'),
(57, 'Erica perez', 'erica@gmail.com', NULL, '$2y$10$wDcImhTHh0HBoDgNXBDGD.Zly1hI/D1i6UUo7vSBr0yTpLcS6PGSG', '45855063', '279 Dicki Village Suite 255North Deborahmouth, WY 74321', '+3779277132608', 'doctor', 'UBvw6Cp8efMAd7IiOeVSkt4DxbVBipPqqJyl2nYtWNyKOrwfzknSEwMzYFUw', '2021-08-06 04:43:35', '2023-04-04 19:48:45'),
(58, 'Maria carrillo', 'maria@gmail.com', NULL, '$2y$10$Lo2XkDEtedfreoevJHBequNMSk0FZ31JPBgVAEcQV.YDPQLXxLArG', '80891510', '11278 Bradtke LocksNorth Herbertburgh, AZ 61509', '+9143229841387', 'doctor', '138KBsbkfJOKWg4hfQ87jOXu7eU8B1gO3NTT6pZokqWmg8xOe3KZAQ4go938', '2021-08-06 04:43:35', '2023-04-04 19:49:26'),
(59, 'Alvina portillo', 'alvina@gmail.com', NULL, '$2y$10$pwGQeKsXftFtYe1vOgnirOMKKlGtDcceGM4.sborfoTksNdnkM1Za', '81387281', '85557 Bahringer Viaduct Suite 955Port Jarrett, TN 47955', '+5801700045559', 'doctor', '5voXKJWHHeTcCTXR6Lqb9ExlXZHVOWDmkSJ498WzyrpwbyJrXkZh8m5skKEf', '2021-08-06 04:43:35', '2023-04-04 19:49:58'),
(60, 'Neiser ballon', 'jonathan32@example.net', NULL, '$2y$10$hDbK5tBtpe1zgQoHJgCuHuID16rpC4axCe/T0x36oxsV/MH5D09uy', '25978098', '14167 Gutmann ForestJohnstonborough, OH 51509', '+4265641127693', 'doctor', '2Zp84wNIQZ', '2021-08-06 04:43:35', '2023-04-04 19:50:18'),
(61, 'Marina chacon', 'marina@gmail.com', NULL, '$2y$10$IAhvydpGtjBHb5TLMBvxXe9suRHBTD4XJ8LFjHDsj186BGtbsFoiG', '97679779', '782 Ellsworth FreewayReingerside, VA 82701-0154', '+3084082889466', 'doctor', 'UlSWuTqpmS', '2021-08-06 04:43:35', '2023-04-04 19:51:07'),
(62, 'Mario Fuentes', 'mario@gmail.com', NULL, '$2y$10$AF4Buon4Y2ho4xodAxPZVOdTnESBb.ZTSf8n/UwAlZ4GUPTkP9IqK', '91756733', '1041 Britney CoveDooleyview, MO 62103', '+8679518822135', 'doctor', '7liiueT1bf', '2021-08-06 04:43:35', '2023-04-04 19:51:33'),
(64, 'yonatan', 'yona@gmail.com', NULL, '$2y$10$nkP50whKTx2B.b2nRAp.JeKjOjFOx9.h1ziv5ZxruFE37a3ksV4Xy', '14789632', 'Abancay', '123456', 'patient', NULL, '2021-08-19 22:14:10', '2021-08-19 22:14:10'),
(65, 'juan torres', 'juan@gmail.com', NULL, '$2y$10$mTcUWtXWjsP47q.EoJP1yObKSY8827jxvjNwb.IQFxlWpn6K8rhDa', '12345678', 'Abancay', '12345678', 'doctor', 'kkiavhPxIUye52FPhg1U1zoNcEWqEehmz41QjtiLgV6st5TnvlujBySlYZDA', '2021-08-19 22:31:20', '2021-08-19 22:31:20'),
(66, 'carmen', 'carmen@gmail.com', NULL, '$2y$10$xPF9nESKLnYM7PQS/jZ8iOLwDTY4E9ALk6Ss9kfTX7Z3D2uwZoIC2', '12345678', 'CUSCO', '12345678', 'patient', 'LJpHEMIMW2iQ7Af61G5YH2OHkzGE90hyaYFyPqzfzdZcCyumoI14mBqUnJuo', '2021-08-19 22:32:36', '2021-08-19 22:35:39'),
(71, 'vanessa', 'vanessa@gmail.com', NULL, '$2y$10$oqVA35ysYv3KgKgAPWJD7.VD7Zf0YUScpVyLhVSmpy8nbJHk.K.s.', NULL, NULL, NULL, 'admin', 'A68JrXSqnLNe9G0XBbMiOqR3s1OLUwJf2ZQoaZOjQnXkqVVQttiJYLN2B7il', '2022-12-07 12:46:33', '2022-12-07 12:46:33'),
(72, 'vanessa coras', 'vanessa123@gmail.com', NULL, '$2y$10$iv92mea/i18iicEG/6PqS.1xaUY8mbSitq.u8Ddg6uO6sXSRMEitO', NULL, NULL, NULL, NULL, 'CtGfFrbCt3OHp5UXV1NcY306AH1ZTJ8FOC3nlERVKvXbzxlRIA8yKiCFAhCy', '2022-12-07 15:44:48', '2022-12-07 15:44:48'),
(73, 'viky', 'viky@gmail.com', NULL, '$2y$10$thNk2kJuyLXMKHc1TXxPUOdCURFUq9ciFWmvb/VlwKNv5gbVRHmWe', NULL, NULL, NULL, 'paciente', 'ZaugGqxILXwevpcdTCH7JF9Z0hnOuiBGJNzdOVHnPdwT1AuEEksB8IRaQ75U', '2023-04-04 19:32:00', '2023-04-04 19:32:00'),
(74, 'Claudio Rojas Ramos', 'claudio@gmail.com', NULL, '$2y$10$zwU02oFSs6Mok0JjCceh9.eav2q.J95Qm/TJ.B0Di7KhT1I573Ey6', NULL, NULL, NULL, 'patient', 'R4mMzEuxrhphtVoN5NxYgTty6dpqGEYITO3Cfum9BoPRoj28nuF4ISNGFIou', '2023-04-04 19:55:32', '2023-04-04 19:55:32'),
(75, 'Marco Escalante Peña', 'marco@gmail.com', NULL, '$2y$10$2f3KTjOqUVusgKjIYzQeL.uIOGgNvZFANGnn7mWgRKnUEGcFs6S2i', NULL, NULL, NULL, 'patient', 'NwZeHTYxQJUPpr2a2ZRdK7k8S2PC0AVwh29nwzFf4CKl0IZdHlLzpKOFnuh5', '2023-04-04 20:25:34', '2023-04-04 20:25:34'),
(76, 'Margot Peña', 'margot@gmail.com', NULL, '$2y$10$34tbqVR4lkNYpTrZGsWc9OJJt85BsOwpp1pPcRze050V/dKWXCj42', NULL, NULL, NULL, 'patient', '0b0xsOioDzMoC2s0ISOfXnGYfwf7CZYAg2wlf8ShfqB3Pz4oGo2wicfhgQMf', '2023-04-04 20:27:16', '2023-04-04 20:27:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `work_days`
--

CREATE TABLE `work_days` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` smallint(5) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL,
  `morning_start` time NOT NULL,
  `morning_end` time NOT NULL,
  `afternoon_start` time NOT NULL,
  `afternoon_end` time NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `work_days`
--

INSERT INTO `work_days` (`id`, `day`, `active`, `morning_start`, `morning_end`, `afternoon_start`, `afternoon_end`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 0, 0, '06:00:00', '05:00:00', '13:00:00', '13:00:00', 3, '2021-08-06 04:43:35', '2022-03-11 22:44:38'),
(2, 1, 0, '06:00:00', '05:00:00', '13:00:00', '13:00:00', 3, '2021-08-06 04:43:35', '2022-03-11 22:44:38'),
(3, 2, 0, '06:00:00', '05:00:00', '13:00:00', '13:00:00', 3, '2021-08-06 04:43:35', '2022-03-11 22:44:38'),
(4, 3, 1, '07:00:00', '09:30:00', '15:00:00', '18:00:00', 3, '2021-08-06 04:43:36', '2022-03-11 22:44:38'),
(5, 4, 0, '06:00:00', '05:00:00', '13:00:00', '13:00:00', 3, '2021-08-06 04:43:36', '2022-03-11 22:44:38'),
(6, 5, 1, '06:00:00', '11:00:00', '14:30:00', '22:00:00', 3, '2021-08-06 04:43:36', '2022-03-11 22:44:38'),
(7, 6, 0, '06:00:00', '05:00:00', '13:00:00', '13:00:00', 3, '2021-08-06 04:43:36', '2022-03-11 22:44:38'),
(8, 0, 0, '06:00:00', '05:00:00', '13:00:00', '13:00:00', 65, '2021-08-19 22:38:26', '2021-08-19 22:38:26'),
(9, 1, 0, '06:00:00', '05:00:00', '13:00:00', '13:00:00', 65, '2021-08-19 22:38:26', '2021-08-19 22:38:26'),
(10, 2, 0, '06:00:00', '05:00:00', '13:00:00', '13:00:00', 65, '2021-08-19 22:38:26', '2021-08-19 22:38:26'),
(11, 3, 0, '06:00:00', '05:00:00', '13:00:00', '13:00:00', 65, '2021-08-19 22:38:26', '2021-08-19 22:38:26'),
(12, 4, 1, '09:00:00', '11:00:00', '15:00:00', '20:00:00', 65, '2021-08-19 22:38:26', '2021-08-19 22:38:26'),
(13, 5, 0, '06:00:00', '05:00:00', '13:00:00', '13:00:00', 65, '2021-08-19 22:38:26', '2021-08-19 22:38:26'),
(14, 6, 0, '06:00:00', '05:00:00', '13:00:00', '13:00:00', 65, '2021-08-19 22:38:26', '2021-08-19 22:38:26'),
(15, 0, 1, '06:30:00', '11:30:00', '13:00:00', '22:00:00', 54, '2023-04-04 19:59:06', '2023-04-04 20:03:52'),
(16, 1, 1, '06:00:00', '10:30:00', '13:00:00', '22:00:00', 54, '2023-04-04 19:59:06', '2023-04-04 20:03:52'),
(17, 2, 1, '09:00:00', '10:00:00', '15:30:00', '21:30:00', 54, '2023-04-04 19:59:06', '2023-04-04 20:03:52'),
(18, 3, 1, '09:30:00', '11:30:00', '15:00:00', '20:30:00', 54, '2023-04-04 19:59:06', '2023-04-04 20:03:52'),
(19, 4, 1, '06:30:00', '10:30:00', '14:30:00', '19:30:00', 54, '2023-04-04 19:59:06', '2023-04-04 20:03:52'),
(20, 5, 1, '07:30:00', '08:30:00', '13:30:00', '22:00:00', 54, '2023-04-04 19:59:06', '2023-04-04 20:03:52'),
(21, 6, 1, '06:30:00', '11:30:00', '13:30:00', '21:30:00', 54, '2023-04-04 19:59:06', '2023-04-04 20:03:52'),
(22, 0, 1, '06:00:00', '11:30:00', '13:00:00', '22:00:00', 55, '2023-04-04 20:16:12', '2023-04-04 20:16:12'),
(23, 1, 1, '07:30:00', '10:00:00', '16:00:00', '20:00:00', 55, '2023-04-04 20:16:12', '2023-04-04 20:16:12'),
(24, 2, 1, '08:00:00', '09:00:00', '17:30:00', '22:00:00', 55, '2023-04-04 20:16:12', '2023-04-04 20:16:12'),
(25, 3, 1, '06:00:00', '09:30:00', '21:00:00', '22:30:00', 55, '2023-04-04 20:16:12', '2023-04-04 20:16:12'),
(26, 4, 1, '06:00:00', '10:30:00', '15:30:00', '21:30:00', 55, '2023-04-04 20:16:12', '2023-04-04 20:16:12'),
(27, 5, 1, '06:00:00', '11:00:00', '13:00:00', '22:30:00', 55, '2023-04-04 20:16:12', '2023-04-04 20:16:12'),
(28, 6, 1, '06:00:00', '08:30:00', '19:00:00', '21:30:00', 55, '2023-04-04 20:16:12', '2023-04-04 20:16:12'),
(29, 0, 1, '06:00:00', '10:30:00', '13:00:00', '20:30:00', 56, '2023-04-04 20:17:46', '2023-04-04 20:17:46'),
(30, 1, 1, '06:00:00', '08:30:00', '13:00:00', '18:00:00', 56, '2023-04-04 20:17:46', '2023-04-04 20:17:46'),
(31, 2, 1, '06:00:00', '07:30:00', '13:00:00', '13:00:00', 56, '2023-04-04 20:17:46', '2023-04-04 20:17:46'),
(32, 3, 1, '06:00:00', '10:00:00', '13:00:00', '21:30:00', 56, '2023-04-04 20:17:46', '2023-04-04 20:17:46'),
(33, 4, 1, '06:00:00', '11:00:00', '13:00:00', '20:30:00', 56, '2023-04-04 20:17:46', '2023-04-04 20:17:46'),
(34, 5, 1, '06:00:00', '09:00:00', '13:00:00', '20:00:00', 56, '2023-04-04 20:17:47', '2023-04-04 20:17:47'),
(35, 6, 1, '06:00:00', '09:00:00', '13:00:00', '21:30:00', 56, '2023-04-04 20:17:47', '2023-04-04 20:17:47'),
(36, 0, 1, '06:00:00', '10:00:00', '13:00:00', '15:30:00', 57, '2023-04-04 20:19:11', '2023-04-04 20:19:11'),
(37, 1, 1, '06:00:00', '07:30:00', '13:00:00', '20:30:00', 57, '2023-04-04 20:19:11', '2023-04-04 20:19:11'),
(38, 2, 1, '06:00:00', '11:00:00', '13:00:00', '19:30:00', 57, '2023-04-04 20:19:11', '2023-04-04 20:19:11'),
(39, 3, 1, '06:00:00', '10:00:00', '13:00:00', '21:30:00', 57, '2023-04-04 20:19:11', '2023-04-04 20:19:11'),
(40, 4, 1, '06:00:00', '10:30:00', '13:00:00', '21:00:00', 57, '2023-04-04 20:19:11', '2023-04-04 20:19:11'),
(41, 5, 1, '06:00:00', '10:30:00', '13:00:00', '21:00:00', 57, '2023-04-04 20:19:11', '2023-04-04 20:19:11'),
(42, 6, 1, '06:00:00', '08:00:00', '13:00:00', '21:30:00', 57, '2023-04-04 20:19:11', '2023-04-04 20:19:11'),
(43, 0, 1, '06:00:00', '09:30:00', '13:00:00', '16:30:00', 58, '2023-04-04 20:20:46', '2023-04-04 20:20:46'),
(44, 1, 1, '06:00:00', '11:00:00', '13:00:00', '19:00:00', 58, '2023-04-04 20:20:46', '2023-04-04 20:20:46'),
(45, 2, 1, '06:00:00', '08:30:00', '13:00:00', '22:00:00', 58, '2023-04-04 20:20:46', '2023-04-04 20:20:46'),
(46, 3, 1, '06:00:00', '09:30:00', '13:00:00', '21:00:00', 58, '2023-04-04 20:20:46', '2023-04-04 20:20:46'),
(47, 4, 1, '06:00:00', '09:30:00', '13:00:00', '21:00:00', 58, '2023-04-04 20:20:46', '2023-04-04 20:20:46'),
(48, 5, 1, '06:00:00', '11:00:00', '13:00:00', '19:30:00', 58, '2023-04-04 20:20:46', '2023-04-04 20:20:46'),
(49, 6, 1, '06:00:00', '11:30:00', '13:00:00', '19:30:00', 58, '2023-04-04 20:20:46', '2023-04-04 20:20:46'),
(50, 0, 1, '07:00:00', '07:00:00', '13:00:00', '21:30:00', 59, '2023-04-04 20:22:14', '2023-04-04 20:22:14'),
(51, 1, 1, '06:00:00', '08:30:00', '13:00:00', '22:00:00', 59, '2023-04-04 20:22:14', '2023-04-04 20:22:14'),
(52, 2, 1, '06:00:00', '11:00:00', '13:00:00', '19:00:00', 59, '2023-04-04 20:22:14', '2023-04-04 20:22:14'),
(53, 3, 1, '06:00:00', '10:30:00', '13:00:00', '22:00:00', 59, '2023-04-04 20:22:14', '2023-04-04 20:22:14'),
(54, 4, 1, '06:00:00', '07:30:00', '13:00:00', '21:00:00', 59, '2023-04-04 20:22:14', '2023-04-04 20:22:14'),
(55, 5, 1, '06:00:00', '10:00:00', '13:00:00', '20:30:00', 59, '2023-04-04 20:22:14', '2023-04-04 20:22:14'),
(56, 6, 1, '06:00:00', '11:30:00', '13:00:00', '22:00:00', 59, '2023-04-04 20:22:14', '2023-04-04 20:22:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_specialty_id_foreign` (`specialty_id`),
  ADD KEY `appointments_doctor_id_foreign` (`doctor_id`),
  ADD KEY `appointments_patient_id_foreign` (`patient_id`);

--
-- Indices de la tabla `cancelled_appointments`
--
ALTER TABLE `cancelled_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cancelled_appointments_appointment_id_foreign` (`appointment_id`),
  ADD KEY `cancelled_appointments_cancelled_by_foreign` (`cancelled_by_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `specialty_user`
--
ALTER TABLE `specialty_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialty_user_user_id_foreign` (`user_id`),
  ADD KEY `specialty_user_specialty_id_foreign` (`specialty_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `work_days`
--
ALTER TABLE `work_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_days_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT de la tabla `cancelled_appointments`
--
ALTER TABLE `cancelled_appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `specialties`
--
ALTER TABLE `specialties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `specialty_user`
--
ALTER TABLE `specialty_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `work_days`
--
ALTER TABLE `work_days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appointments_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appointments_specialty_id_foreign` FOREIGN KEY (`specialty_id`) REFERENCES `specialties` (`id`);

--
-- Filtros para la tabla `cancelled_appointments`
--
ALTER TABLE `cancelled_appointments`
  ADD CONSTRAINT `cancelled_appointments_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`),
  ADD CONSTRAINT `cancelled_appointments_cancelled_by_foreign` FOREIGN KEY (`cancelled_by_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `specialty_user`
--
ALTER TABLE `specialty_user`
  ADD CONSTRAINT `specialty_user_specialty_id_foreign` FOREIGN KEY (`specialty_id`) REFERENCES `specialties` (`id`),
  ADD CONSTRAINT `specialty_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `work_days`
--
ALTER TABLE `work_days`
  ADD CONSTRAINT `work_days_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
