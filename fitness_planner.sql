-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2024 at 09:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness_planner`
--

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `goal` varchar(255) NOT NULL,
  `plan_type` varchar(50) NOT NULL,
  `plan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `username`, `goal`, `plan_type`, `plan`, `created_at`) VALUES
(1, 'Inzamam', 'push up', 'Daily', 'Your Daily plan for push up is ready!', '2024-08-29 05:09:35'),
(2, 'Inzamam', 'weight gain', 'Weekly', 'Weekly Plan:\n', '2024-08-29 05:12:54'),
(3, 'Inzamam', 'Weight Loss', 'Daily', 'Daily Plan for Weight Loss:\nMorning: 30 minutes of moderate cardio (e.g., brisk walking, cycling)\nAfternoon: 20 minutes of strength training (focus on full-body exercises)\nEvening: 15 minutes of yoga or stretching\nDiet: Low-calorie meals, high in protein and vegetables, avoid sugary snacks.\n', '2024-08-29 05:18:13'),
(4, 'Inzamam', 'Muscle Gain', 'Weekly', 'Weekly Plan for Muscle Gain:\nMon, Wed, Fri: Heavy strength training (target different muscle groups)\nTue, Thu: 30 minutes of cardio\nSat: Full-body workout\nSun: Rest and recovery\nDiet: High-protein meals, include post-workout supplements.\n', '2024-08-29 05:18:39'),
(5, 'Inzamam', 'Muscle Gain', 'Weekly', 'Weekly Plan for Muscle Gain:\nMon, Wed, Fri: Heavy strength training (target different muscle groups)\nTue, Thu: 30 minutes of cardio\nSat: Full-body workout\nSun: Rest and recovery\nDiet: High-protein meals, include post-workout supplements.\n', '2024-08-29 05:21:54'),
(6, 'Inzamam', 'Weight Loss', 'Daily', 'Daily Plan for Weight Loss:\nMorning: 30 minutes of moderate cardio (e.g., brisk walking, cycling)\nAfternoon: 20 minutes of strength training (focus on full-body exercises)\nEvening: 15 minutes of yoga or stretching\nDiet: Low-calorie meals, high in protein and vegetables, avoid sugary snacks.\n', '2024-08-30 09:51:54'),
(7, 'Inzamam', 'Weight Loss', 'Daily', 'Daily Plan for Weight Loss:\nMorning: 30 minutes of moderate cardio (e.g., brisk walking, cycling)\nAfternoon: 20 minutes of strength training (focus on full-body exercises)\nEvening: 15 minutes of yoga or stretching\nDiet: Low-calorie meals, high in protein and vegetables, avoid sugary snacks.\n', '2024-08-30 09:53:15'),
(8, 'Inzamam', 'Weight Loss', 'Daily', 'Daily Plan for Weight Loss:\nMorning: 30 minutes of moderate cardio (e.g., brisk walking, cycling)\nAfternoon: 20 minutes of strength training (focus on full-body exercises)\nEvening: 15 minutes of yoga or stretching\nDiet: Low-calorie meals, high in protein and vegetables, avoid sugary snacks.\n', '2024-08-30 09:53:47'),
(9, 'Inzamam', 'Weight Loss', 'Daily', 'Daily Plan for Weight Loss:\nMorning: 30 minutes of moderate cardio (e.g., brisk walking, cycling)\nAfternoon: 20 minutes of strength training (focus on full-body exercises)\nEvening: 15 minutes of yoga or stretching\nDiet: Low-calorie meals, high in protein and vegetables, avoid sugary snacks.\n', '2024-08-30 10:50:56'),
(10, 'Inzamam', 'Weight Loss', 'Daily', 'Daily Plan for Weight Loss:\nMorning: 30 minutes of moderate cardio (e.g., brisk walking, cycling)\nAfternoon: 20 minutes of strength training (focus on full-body exercises)\nEvening: 15 minutes of yoga or stretching\nDiet: Low-calorie meals, high in protein and vegetables, avoid sugary snacks.\n', '2024-08-30 15:43:19'),
(11, 'Inzamam', 'Weight Loss', 'Daily', 'Daily Plan for Weight Loss:\nMorning: 30 minutes of moderate cardio (e.g., brisk walking, cycling)\nAfternoon: 20 minutes of strength training (focus on full-body exercises)\nEvening: 15 minutes of yoga or stretching\nDiet: Low-calorie meals, high in protein and vegetables, avoid sugary snacks.\n', '2024-08-30 15:47:22');

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `workout_done` varchar(255) NOT NULL,
  `diet_followed` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `profile_pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `contact`, `gender`, `height`, `weight`, `profile_pic`) VALUES
(1, 'Inzamam', '$2y$10$7BVdbY6cUaZcIPd0HF9Yf.CckP1rEw/f.cdqyoAuAR8CgVHJvgm3q', 'mmiminzey@gmail.com', '8805074491', 'Male', 160, 60, 'uploads/2ac4b848-706d-40c6-8cad-e4cd561a26d0.jpg'),
(2, 'i', '$2y$10$K4dql5/1DUPZFcDnm0xWbuf654maaivPq9FP4g.p/aSqYbJvvcPLe', 'mmiminzey@gmail.com', '8805074491', 'Male', 160, 60, NULL),
(3, 'i', '$2y$10$sZ4fm0gOEsBJ1A0FEDWLlOWFTE4NmbsQkQozQhAs1KjP7vSPkDZPu', 'mmiminzey@gmail.com', '8805074491', 'Male', 160, 60, NULL),
(4, 'I', '$2y$10$gexlYlbnW5EiCHKghtJ9N.ADW/XUil2wDzcXpjCiIlA6jv41csxXu', 'mmiminzey@gmail.com', '8805074491', 'Male', 140, 56, NULL),
(6, 'rt', '$2y$10$D9TECj/IOfuJHxJwYfIK5OqHHZxuIzcByhzsYgQdqNriPvZ1JSnoy', 'mmiminzey@gmail.com', '8805074491', 'Male', 232, 341, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `height`, `weight`, `created_at`) VALUES
(1, 'I', '$2y$10$cFh/OAZvVtZoVkkfZ2CWeeMrp/QUVjZhRwzl44CzUIx4uKEKUZgf.', 152, 55, '2024-08-29 05:03:35'),
(2, '1', '$2y$10$2Q7nu0LFUTgJ/GrEO2bWNuJLp2yEUGuzGylWekMV.N50lYzZ/vZ9u', 130, 50, '2024-08-29 05:04:54'),
(3, 'Inzamam', '$2y$10$xNxupBDAfmLikpRvkYjLYOgA.agb9DsU3jdi1ZmEXnRLwFKIRaJJG', 130, 50, '2024-08-29 05:05:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE;

--
-- Constraints for table `tracking`
--
ALTER TABLE `tracking`
  ADD CONSTRAINT `tracking_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
