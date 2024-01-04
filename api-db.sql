DROP DATABASE IF EXISTS epitechmoulibot;
CREATE DATABASE epitechmoulibot;
USE epitechmoulibot;

CREATE TABLE `user` (
    `id` INT unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `email` VARCHAR(100) NOT NULL UNIQUE,
    `password` VARCHAR(100) NOT NULL,
    `discord_user_id` VARCHAR(30) NOT NULL DEFAULT "0",
    `discord_channel_id` VARCHAR(30) NOT NULL DEFAULT "0",
    `phone_topic` VARCHAR(30) NOT NULL DEFAULT "0",
    `last_testRunId` INT unsigned NOT NULL DEFAULT 0,
    `cookies_status` ENUM('new', 'ok', 'expired', 'wait') NOT NULL DEFAULT 'new',
    `discord_status` BOOLEAN NOT NULL DEFAULT 0,
    `phone_status` BOOLEAN NOT NULL DEFAULT 0,
    `email_status` BOOLEAN NOT NULL DEFAULT 0,
    `cookies` LONGTEXT NOT NULL,
    `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
