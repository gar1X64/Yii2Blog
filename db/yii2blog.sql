-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-12-2020 a las 21:16:24
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `yii2blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `body` longtext NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `article`
--

INSERT INTO `article` (`id`, `title`, `body`, `created_at`, `updated_at`, `created_by`, `updated_by`, `slug`) VALUES
(1, 'Yii2 es la leche', 'yii2 es el mejor frameworkk', 1605811451, 1605811451, 3, NULL, 'yii2-es-la-leche'),
(2, 'demo articulo', '\r\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Tempora modi perspiciatis at optio voluptas consequatur suscipit, doloribus alias labore vitae fugit eos eaque quod numquam voluptatem quia ipsam a placeat.\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque libero iste quisquam commodi ipsam! Voluptatem voluptas, nostrum corporis officia saepe, sit temporibus alias ad magni nesciunt nisi architecto inventore eaque!\r\nEligendi quam optio porro aliquam vel facilis ducimus labore tenetur architecto numquam praesentium, quas ut sapiente molestiae! Nulla aut quos eaque dolorum numquam incidunt, rem dolores. Necessitatibus commodi atque accusantium!\r\nQuos numquam libero corrupti molestiae quis necessitatibus magni impedit asperiores? Voluptatem sint atque natus. Recusandae eligendi voluptatibus aliquid animi officiis sit rerum officia quas nulla vel, dolores voluptate dolore praesentium.', 1605812039, 1605812039, 3, NULL, 'demo-articulo'),
(4, 'juan', 'juan\r\n', 1605825334, 1605825334, 4, 4, 'juan'),
(5, 'hola que tal estas', 'jkdjskljkdlasfldkdfjkaldfjajfjkadjfasjfajfjafjkdljfasjfajl', 1605950173, 1605950173, 4, 4, 'hola-que-tal-estas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) NOT NULL,
  `access_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`, `access_token`) VALUES
(1, 'admin', 'admin', 'key1', 'token1'),
(2, 'pablo', '$2y$13$wbktfP/gnT10skWh0MSeaOY2ZB7ltash4NG.bpSeoZZ0Ye03oL0G6', 'EROGv5dCeWaRpoBw9KiVOrSnDhg4AEIV', 'IRkxy6VVfCnC31yhejsyygdMpie5OsNk'),
(3, 'admin', '$2y$13$FxocS96JnPpnhE2C4oT2YexQqdUBh3U.psgn6VU9Nk.IjX7m39Wli', 'A8wuSVPvlrT4N66fGm0cYbjk31GmioXw', '_dADBDJuA02V6ScFja96iynXlXHAbKNA'),
(4, 'juan', '$2y$13$EOEnvPOmb.ar.sl6X6bbJOEFWtUcZGME.g7yVgE/2uxMSDIjU/rju', 'K35vpyHZ86TDaY5n2OnHiKhweDwzl055', 'jBJzjEAwnb6ZV5H19dMYEOKAuEG1rGPe'),
(5, 'pablo', '$2y$13$OhfDUJ9KMEb5TtoZXfze/.J2FfcR1Jmr2y22JwnR3GcsBgJ/A7b7K', 'iu3CwpjrxB30k2OJdsVzK4uTr0iFb9VP', 'K4Bp4Cx1k-gMmseabgDlrXz1jz0vgpZ1'),
(6, 'jose', '$2y$13$kt9/dWBGnqL4pRv0wsbwxOXxBSoywgFkztLne1p.eiYm81NB56N6a', 'jwEb8u3AM2uTJ9HIZEAb-gt7zvripTv7', 'GvlFfj6aqmBwGc5uJl_M4Gu7mfXrYZt9'),
(7, 'alberto', '$2y$13$90PyFl553y1OdDoXQD6iqu1rc.CFlmXrcFntG7W8bupb0FOoSUN0S', 'FC65RMQQP9xvucUndWlPQBLakXlW4f0N', 'DNo0KcMv6ZM7VcSUZks44nvnr31XA6JB'),
(8, 'josebas', '$2y$13$zpRBT.yX9UpkgyIuMZ7WM.NiVxKh555B4Bys1PRJZe7lbIkliqIbO', 'yGQY2X-4DnCW1cdq-EjZKS18vNYbX3lZ', 'UWd7TsARLmzvYUGby2onz19LnxywL2Pm'),
(9, 'joseaa', '$2y$13$HwvojDP.CS1Wg3xsB2Y8KeKZ8gt.2USepyOXKD4YfUWYevvPWNqYO', 'zv4Uk2iToor0T_y6LxDtj2s49fk2AaTO', 'SSkoRx5OrZZD5T5WnoSSWBkWcj1b4xyh'),
(10, 'carajon1', '$2y$13$BnBwuRprnGO0XasV1OG.cOdCrWGP9kb/Z/.z36DzXAC0nRaA70qIC', '-D3tsJho7milFIMF_wX0DM_RjQrdmteo', 'YbXmnY_Cq9RQKPa4dnNzPdCMYPHN_NPp'),
(11, 'carlos', '$2y$13$QTtCfH6wMtvHmbPQ2d38wu.rGu4ueG76Eu553SMC4hmiJf.PpY45y', '2myZMnX2CPT3TBz5XiChS2EFY5MCN733', 'ObpL9JvUrnUFYhTNf6G52PTrNnQqw2p4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_user_updated_by_fk` (`updated_by`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_user_updated_by_fk` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
