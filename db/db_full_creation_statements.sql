CREATE DATABASE crescendo;
USE crescendo;
CREATE TABLE `users` (
`id` SERIAL PRIMARY KEY,
`f_name` VARCHAR(255),
`l_name` VARCHAR(255),
`email` VARCHAR(255),
`phone` VARCHAR(255),
`password` VARCHAR(255),
`ship_street` VARCHAR(255),
`ship_apt` VARCHAR(255),
`ship_city` VARCHAR(255),
`ship_state` VARCHAR(255),
`ship_postal` VARCHAR(255),
`bill_street` VARCHAR(255),
`bill_apt` VARCHAR(255),
`bill_city` VARCHAR(255),
`bill_state` VARCHAR(255),
`bill_postal` VARCHAR(255)
);
INSERT INTO `users` (`f_name`, `l_name`, `email`, `phone`, `password`, `ship_street`, `ship_apt`, `ship_city`, `ship_state`, `ship_postal`, `bill_street`, `bill_apt`, `bill_city`, `bill_state`, `bill_postal`) VALUES ("Jason", "Awbrey", "jason.s.awbrey@gmail.com", "503-939-9407", "password", "123 Test Street", "APT 32", "Portland", "OR", "97212", "123 Test Streeet", "APT 32", "Portland", "OR", "97212")
CREATE TABLE `orders` (
  `id` SERIAL PRIMARY KEY,
  `user_id` INTEGER,
  `ship_type` INT,
  `date` DATE
);
CREATE TABLE `shipping_types` (
    `id` SERIAL PRIMARY KEY,
    `type` VARCHAR(255)
);
INSERT INTO shipping_types (type) VALUES ("Free Shipping"), ("Ground"), ("2 Day"), ("Overnight");
CREATE TABLE `product_types` (
    `id` SERIAL PRIMARY KEY,
    `type` VARCHAR(255)
);
INSERT INTO `product_types` (type) VALUES ("shirt"), ("pants"), ("shoes"), ("jacket");
CREATE TABLE `products` (
  `id` SERIAL PRIMARY KEY,
  `type_id` INT,
  `name` VARCHAR(255),
  `description` VARCHAR(255),
  `img` VARCHAR(255)
);
INSERT INTO `products` (type_id, name, description, img) VALUES (1, "Blue Shirt", "This is a stylish shirt!", "~/crescendo/assets/img/blue_shirt.jpg"), (2, "Blue Pants", "These are some stylist pants!", "~/crescendo/assets/img/blue_pants.jpg"), (3, "Black Shoes", "These are some neat kicks!", "~/crescendo/assets/img/black_shoes.jpg"), (4, "Red Jacket", "This jacket is totes warm", "~/crescendo/assets/img/red_jacket.jpg");
CREATE TABLE `order_details` (
  `id` SERIAL PRIMARY KEY,
  `order_id` INTEGER,
  `product_id` INTEGER,
  `qty` INTEGER
);