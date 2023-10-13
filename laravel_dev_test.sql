/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : laravel_dev_test

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 13/10/2023 21:40:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Dr.', 'Mr.', 'Voluptas alias ab ipsam. Ad vitae nemo praesentium ut nemo qui et fugit. Rerum voluptas qui beatae incidunt. Amet quasi nisi quia debitis laborum incidunt rerum.', 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (2, 'Prof.', 'Prof.', 'Cumque quam assumenda tenetur consequatur temporibus molestias ut voluptates. Accusamus dolor ullam aut mollitia neque iure. Et voluptas optio maxime necessitatibus consequatur ea est.', 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (3, 'Prof.', 'Mr.', 'Dolores et ipsum et voluptas ut omnis animi. Vitae quis consectetur maxime repellendus modi perspiciatis. Officia dolorum aut vel sunt unde odit.', 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (4, 'Dr.', 'Miss', 'Sed nihil hic similique aliquid rerum. In quas molestias amet rerum dolor. Et dolorum in rem dolor. Eos sit tempora sint velit natus dolores iste cum.', 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (5, 'Dr.', 'Prof.', 'Soluta vitae quia voluptas aut. Sapiente quasi unde nesciunt dolores. Expedita est maxime eos neque facilis nam voluptatum.', 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (6, 'Prof.', 'Dr.', 'Nihil ad aliquam ea expedita. Dicta velit eligendi est velit. Corporis inventore tempora magnam. Maxime qui quo eum. Perferendis dolorem temporibus voluptates exercitationem nobis consequatur sit ullam.', 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (7, 'Prof.', 'Prof.', 'Ea aut dolorem delectus pariatur voluptas dolorem. Voluptatibus sit ut possimus nam. Ut aut fugit sunt commodi aliquid fugiat.', 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (8, 'Prof.', 'Prof.', 'Facilis architecto dolorum unde. Enim nam enim doloremque et est nesciunt est cum. Cumque maiores ex sint voluptas ratione magni asperiores.', 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (9, 'Mr.', 'Mrs.', 'Vel non officia dignissimos et dolores est excepturi. Ad et ut rerum repellat fugiat aut. Ut excepturi sit sint aut rem vel in. Mollitia temporibus sit eum quod velit.', 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (10, 'Mr.', 'Mr.', 'Et eos dolorem perspiciatis. Aut voluptatem et harum laudantium aliquam. Tempore magnam cupiditate deserunt rerum. Consequatur exercitationem ullam qui cum inventore neque expedita.', 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (11, 'Prof.', 'Dr.', 'Recusandae fuga sit id ut possimus. Porro suscipit iste ad reiciendis quibusdam aut quidem fuga. Consequatur beatae eum in facilis.', 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (12, 'Prof.', 'Dr.', 'Est magni mollitia iusto mollitia. Enim nisi illo fuga et quis fuga optio. Eaque modi qui et voluptas qui cum tempora cum. Modi qui sunt ut qui.', 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (13, 'Mrs.', 'Mr.', 'Quaerat quae impedit et autem et aut sunt. Atque laborum voluptas exercitationem dolores atque. Laboriosam est voluptates omnis iure pariatur. Consequatur et ut officiis omnis nam.', 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (14, 'Mr.', 'Prof.', 'Vel quas sapiente exercitationem sint placeat. Id qui doloribus accusantium quia ut odio. Itaque accusantium consectetur cupiditate eius dicta inventore officia. Natus voluptate quia est eaque architecto.', 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (15, 'Prof.', 'Prof.', 'Et itaque velit ducimus et voluptates eum fugiat. Expedita ipsum laudantium ut deleniti quos enim. Sit repudiandae natus magni sit maxime mollitia inventore. Maxime reiciendis repellat ut assumenda debitis. Soluta voluptas iste dolor aliquam.', 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (16, 'Dr.', 'Dr.', 'Voluptates aut mollitia vel fuga. Quos aliquam quod velit. Nostrum nisi harum non eaque esse ipsam perspiciatis. Sint perferendis aut rem enim quae. Natus rerum neque accusamus saepe sed sed.', 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (17, 'Dr.', 'Prof.', 'Odit labore est quidem. Alias et voluptate similique quidem temporibus et. Maiores facilis voluptate et.', 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (18, 'Prof.', 'Mr.', 'Libero blanditiis et nesciunt qui velit non esse. Ipsam non est placeat aliquid. Repudiandae ut consequatur ut exercitationem dolore et et. Reprehenderit explicabo repellendus molestias dolor.', 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (19, 'Dr.', 'Ms.', 'Iste facilis commodi sequi aut vitae. Rerum adipisci id libero laboriosam vitae nemo.', 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (20, 'Dr.', 'Mrs.', 'Ea optio ducimus unde veniam quam nihil accusamus accusantium. Natus repellendus eum neque quis et deserunt tenetur fuga. Quis aut et aperiam et.', 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `categories` VALUES (21, 'Miss', 'Prof.', 'Vitae libero accusamus ipsum in error animi. Ut voluptatem qui illo ut nostrum. Et ad totam voluptas unde ut commodi asperiores.', 1, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `categories` VALUES (22, 'Miss', 'Ms.', 'Iste sit ducimus ut aliquid velit consequatur nisi. Libero dolor qui quia provident enim fugit amet.', 1, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `categories` VALUES (23, 'Mr.', 'Prof.', 'Molestias asperiores temporibus et rerum dolores est numquam assumenda. Ut rerum dignissimos quo autem quibusdam qui. Animi dolor in cupiditate ab et aut quis.', 0, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `categories` VALUES (24, 'Mr.', 'Prof.', 'Sequi iure occaecati et et sit minus. Ex rerum dolor maxime aperiam. Ipsa et omnis occaecati accusantium quam sed. Perferendis labore labore sit ipsa.', 0, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `categories` VALUES (25, 'Ms.', 'Prof.', 'Molestias expedita inventore veritatis enim perspiciatis vel ullam. Nobis rem odio quam quo soluta voluptatem est. Possimus aut vero veniam consequatur ut voluptate.', 0, '2023-10-13 14:39:09', '2023-10-13 14:39:09');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comments_user_id_foreign`(`user_id` ASC) USING BTREE,
  INDEX `comments_product_id_foreign`(`product_id` ASC) USING BTREE,
  CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, NULL, 'Rem ut aliquid itaque aut. Aperiam laborum dolor omnis deleniti architecto reprehenderit omnis. Autem ullam corporis consequuntur non eligendi odit rerum corrupti. Illo nihil vel nostrum et maiores placeat.', 26, 16, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `comments` VALUES (2, NULL, 'Amet maxime et ab voluptatem explicabo repudiandae. Nesciunt doloremque illo libero. Quis beatae deleniti voluptas qui. Eaque magnam id voluptas hic ipsa sunt sit id.', 28, 17, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `comments` VALUES (3, NULL, 'Maiores accusamus nihil eum quis. Nostrum id non ipsum deleniti maxime aut accusamus.', 30, 18, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `comments` VALUES (4, NULL, 'Tempora et maxime doloribus est aut consequuntur hic. Sed dolores necessitatibus sed. Qui vero debitis deserunt eos. Molestiae at veritatis tenetur neque placeat omnis est.', 32, 19, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `comments` VALUES (5, NULL, 'Culpa repudiandae inventore et explicabo iure aut assumenda. Voluptas repellendus dolor suscipit explicabo. Architecto cumque nemo ratione ut minima molestiae sed. Maxime assumenda sint et.', 34, 20, '2023-10-13 14:39:09', '2023-10-13 14:39:09');

-- ----------------------------
-- Table structure for discounts
-- ----------------------------
DROP TABLE IF EXISTS `discounts`;
CREATE TABLE `discounts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `discounts_rate_unique`(`rate` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discounts
-- ----------------------------
INSERT INTO `discounts` VALUES (1, 99, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (2, 62, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (3, 57, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (4, 54, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (5, 73, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (6, 91, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (7, 74, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (8, 47, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (9, 42, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (10, 25, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (11, 92, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (12, 31, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (13, 71, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (14, 43, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (15, 35, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (16, 3, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (17, 40, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (18, 68, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (19, 17, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (20, 27, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `discounts` VALUES (21, 46, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `discounts` VALUES (22, 76, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `discounts` VALUES (23, 52, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `discounts` VALUES (24, 28, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `discounts` VALUES (25, 90, '2023-10-13 14:39:09', '2023-10-13 14:39:09');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `likes_user_id_foreign`(`user_id` ASC) USING BTREE,
  INDEX `likes_product_id_foreign`(`product_id` ASC) USING BTREE,
  CONSTRAINT `likes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES (1, 16, 11, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `likes` VALUES (2, 18, 12, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `likes` VALUES (3, 20, 13, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `likes` VALUES (4, 22, 14, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `likes` VALUES (5, 24, 15, '2023-10-13 14:39:09', '2023-10-13 14:39:09');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2023_10_12_070421_create_discounts_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_10_12_070423_create_categories_table', 1);
INSERT INTO `migrations` VALUES (7, '2023_10_12_070424_create_products_table', 1);
INSERT INTO `migrations` VALUES (8, '2023_10_12_070505_create_likes_table', 1);
INSERT INTO `migrations` VALUES (9, '2023_10_12_070514_create_comments_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `view` int NOT NULL DEFAULT 0,
  `like` int NOT NULL DEFAULT 0,
  `comment` int NOT NULL DEFAULT 0,
  `user_id` bigint UNSIGNED NOT NULL,
  `discount_id` bigint NULL DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `products_user_id_foreign`(`user_id` ASC) USING BTREE,
  INDEX `products_category_id_foreign`(`category_id` ASC) USING BTREE,
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Mireille Quitzon', 'Ms.', 'Aut occaecati ratione vero vel tempore impedit. Quis et iure sit illum nobis quam voluptatibus.', 927, 'https://via.placeholder.com/200x200.png/0033bb?text=commodi', 8, 4, 0, 6, 6, 6, 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (2, 'Mr. Werner Ullrich', 'Dr.', 'Enim id quae qui ut omnis accusantium. Est doloribus quae veritatis cumque quis similique voluptate. Accusantium omnis reprehenderit minima doloribus.', 807, 'https://via.placeholder.com/200x200.png/00cc44?text=debitis', 9, 9, 0, 7, 7, 7, 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (3, 'Kayla Gibson', 'Dr.', 'Porro in aut eum tempora. Dolorem maxime voluptate doloremque illum. Dolores rerum molestiae ut. Suscipit eos corporis corrupti reprehenderit. Quis cupiditate eos est voluptatibus id amet.', 878, 'https://via.placeholder.com/200x200.png/00cc00?text=exercitationem', 0, 8, 0, 8, 8, 8, 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (4, 'Alexa Schimmel', 'Miss', 'Qui laborum quia voluptatem velit. Repellendus enim ut eveniet saepe et est dolores dolorem. Nihil et enim corporis qui.', 261, 'https://via.placeholder.com/200x200.png/00cccc?text=quae', 9, 5, 0, 9, 9, 9, 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (5, 'Else O\'Kon', 'Dr.', 'Debitis debitis suscipit aut ipsum aperiam perferendis. Et deleniti amet reprehenderit alias non eligendi. Cum aspernatur et et omnis incidunt explicabo.', 284, 'https://via.placeholder.com/200x200.png/002233?text=harum', 8, 1, 0, 10, 10, 10, 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (6, 'Marcia Hansen', 'Prof.', 'Aut sed autem qui molestiae sed quo. Sed voluptates impedit repellendus accusamus numquam repellat repellat suscipit.', 881, 'https://via.placeholder.com/200x200.png/00dd99?text=sapiente', 9, 1, 0, 11, 11, 11, 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (7, 'Mr. Billy Moore', 'Dr.', 'Voluptatem odit aspernatur voluptatem inventore dolores. Vero dolorum aut enim quia sint at. Omnis qui aut blanditiis ipsam repellat autem harum ut.', 31, 'https://via.placeholder.com/200x200.png/004433?text=non', 9, 3, 0, 12, 12, 12, 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (8, 'Mr. Rogers Ankunding', 'Miss', 'Tempore consequatur nihil dolorem officiis neque rerum debitis. Dolores animi dolores officia et quibusdam.', 978, 'https://via.placeholder.com/200x200.png/0066ff?text=debitis', 9, 0, 0, 13, 13, 13, 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (9, 'Mrs. Ivy Hill V', 'Prof.', 'Corporis nihil provident aut maiores et eos. Odit ab nobis mollitia aut soluta. Amet qui veniam aut a perferendis saepe quidem rerum.', 728, 'https://via.placeholder.com/200x200.png/00dd88?text=officia', 4, 6, 0, 14, 14, 14, 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (10, 'Taya Orn', 'Miss', 'Nam dolorem doloremque molestiae unde sed dolor voluptatem. Dignissimos ea ea voluptas dolores similique quia. Autem ipsam voluptates expedita eos optio. Ea rem debitis adipisci odit sit.', 200, 'https://via.placeholder.com/200x200.png/006688?text=aut', 8, 3, 0, 15, 15, 15, 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (11, 'Bennie McDermott', 'Mrs.', 'Quod architecto sint eos. Doloribus debitis aperiam atque qui. Voluptas expedita sunt ex fugiat.', 68, 'https://via.placeholder.com/200x200.png/00dddd?text=quia', 4, 1, 0, 17, 16, 16, 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (12, 'Morgan Labadie', 'Dr.', 'Fugiat dignissimos consequatur suscipit quam non quod. Voluptatum dolorem quia provident. Eveniet repudiandae sit inventore dolorem voluptas id et.', 842, 'https://via.placeholder.com/200x200.png/006644?text=non', 0, 0, 0, 19, 17, 17, 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (13, 'Devante Bauch III', 'Dr.', 'Totam omnis quis neque commodi nihil aut mollitia. Tempora molestiae adipisci quo ab. Voluptas dolores voluptatem eos cumque.', 5, 'https://via.placeholder.com/200x200.png/000099?text=quo', 7, 2, 0, 21, 18, 18, 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (14, 'Prof. Ernestina McClure', 'Miss', 'Doloremque minus tenetur nobis repellat delectus. Sed ab in doloribus eum omnis voluptatem ullam eum. Fugit qui autem rerum aut atque voluptas ipsam. Voluptatibus quam fugit eaque facere velit repellat quo.', 407, 'https://via.placeholder.com/200x200.png/00ff55?text=quo', 8, 5, 0, 23, 19, 19, 1, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (15, 'Hilma Wolff', 'Prof.', 'Pariatur iure et eaque perferendis. Cumque eos tempora et alias dignissimos placeat voluptatem. Esse molestiae reprehenderit dignissimos. Culpa iste quas odit saepe sed aliquid.', 881, 'https://via.placeholder.com/200x200.png/002244?text=ut', 8, 8, 0, 25, 20, 20, 0, '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `products` VALUES (16, 'Prof. Evert Kiehn', 'Mr.', 'Similique in sunt minus tempore fugiat eveniet. Amet fugit quo ipsa rerum. Rerum vel magnam minima laborum.', 908, 'https://via.placeholder.com/200x200.png/00ee11?text=minus', 1, 9, 0, 27, 21, 21, 1, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `products` VALUES (17, 'Dr. Don Thiel Sr.', 'Prof.', 'Impedit non molestias sequi voluptates id quidem omnis. Nesciunt illo sed officia non ipsam. Ipsum molestiae voluptatem adipisci qui. Ut sapiente voluptate dignissimos in nihil.', 506, 'https://via.placeholder.com/200x200.png/00cccc?text=iure', 4, 9, 0, 29, 22, 22, 1, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `products` VALUES (18, 'Candido O\'Kon', 'Dr.', 'Veniam et repellendus aut quia. Et enim numquam eos illo ipsum animi. Qui consequatur molestias provident. Expedita nesciunt at id repellat. Facere dolores eum voluptatem quia et ex voluptas.', 759, 'https://via.placeholder.com/200x200.png/00ee77?text=repudiandae', 6, 7, 0, 31, 23, 23, 0, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `products` VALUES (19, 'Nicolette Bartoletti', 'Prof.', 'Veniam ipsa minus ut cupiditate totam. Asperiores et voluptatem repellendus sit quam non id. Ut voluptatem et sed assumenda. Omnis vero voluptatem mollitia a amet vel voluptatem aut.', 894, 'https://via.placeholder.com/200x200.png/0022ff?text=dignissimos', 2, 0, 0, 33, 24, 24, 1, '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `products` VALUES (20, 'Lenore Prohaska', 'Dr.', 'Ullam deserunt facere tempora voluptatibus perspiciatis consequatur. Ipsam sed repellendus fugiat eos nostrum incidunt eum. Sunt nostrum et earum impedit sunt. Beatae ipsum perspiciatis voluptas.', 349, 'https://via.placeholder.com/200x200.png/000033?text=doloribus', 4, 1, 0, 35, 25, 25, 1, '2023-10-13 14:39:09', '2023-10-13 14:39:09');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Josh Braun', 'zvolkman@example.com', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zflatu4VKK', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (2, 'Ned Braun DVM', 'kkonopelski@example.com', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L8KxuvYsek', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (3, 'Kip Jones II', 'alycia04@example.com', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b0cHWAYSDE', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (4, 'Miss Gina Spencer', 'anabelle37@example.com', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1qRI3kWgf4', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (5, 'Prof. Peter Sauer II', 'marvin.golden@example.com', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ii46B64STj', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (6, 'Hettie Hane', 'andy.hettinger@example.org', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FrXXxZZLmA', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (7, 'Dannie Berge', 'xcormier@example.org', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ykpPZ62aZM', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (8, 'Miss Viviane Brakus', 'alberta.halvorson@example.org', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XidyWb1ayr', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (9, 'Verlie Wintheiser', 'maci91@example.org', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uQsQckBetw', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (10, 'Florence Mann Sr.', 'sven.abernathy@example.net', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zGKn6iukop', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (11, 'Ottis Kerluke', 'alivia77@example.org', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AVwYwstxdf', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (12, 'Catharine Buckridge DVM', 'brianne.tromp@example.com', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oxW2xK9zxb', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (13, 'Dino Volkman', 'murray.christa@example.net', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C5IagRuDZ9', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (14, 'Athena Kris', 'rweber@example.net', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vhPLzzC06g', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (15, 'Isaiah Rath', 'gonzalo62@example.com', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0yOtmBhJUE', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (16, 'Roderick Glover', 'darby.hegmann@example.com', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w0sfJpYf2H', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (17, 'Karolann Heathcote', 'vickie08@example.com', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0WvbDFyo0V', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (18, 'Prof. Okey Okuneva', 'johnston.hollie@example.org', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZjJ0fkepd1', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (19, 'Albert Barrows', 'phoebe.batz@example.org', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cpf9cfRxTN', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (20, 'Prof. Monroe Cruickshank MD', 'ohermiston@example.com', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KdAgNw6iMK', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (21, 'Emmitt Weissnat', 'claire86@example.com', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H7hjIsOXiY', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (22, 'Gilda Bosco', 'smith.emiliano@example.org', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'anB32akejs', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (23, 'Brando Mayert I', 'selmer.kuhlman@example.org', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CURqzyvJPb', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (24, 'Brannon D\'Amore', 'delilah94@example.net', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ulAhong8Lj', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (25, 'Aurelie Boehm', 'kertzmann.domenico@example.org', '2023-10-13 14:39:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OAG2AZCE6y', '2023-10-13 14:39:08', '2023-10-13 14:39:08');
INSERT INTO `users` VALUES (26, 'Wilmer Oberbrunner', 'faustino.hoeger@example.net', '2023-10-13 14:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GyeoOrK62Z', '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `users` VALUES (27, 'Eliezer Runte', 'nolan.gonzalo@example.org', '2023-10-13 14:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RqMKFLYh0p', '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `users` VALUES (28, 'Penelope Deckow', 'kris.barrows@example.net', '2023-10-13 14:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hL0fHJhkdX', '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `users` VALUES (29, 'Prof. Shaun Ruecker IV', 'considine.donnie@example.net', '2023-10-13 14:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TJggVrh8el', '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `users` VALUES (30, 'Christine Schiller V', 'daniel.annamae@example.com', '2023-10-13 14:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AL1XzlzQH9', '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `users` VALUES (31, 'Keith Trantow DVM', 'ctillman@example.net', '2023-10-13 14:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bsFp2xnu7w', '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `users` VALUES (32, 'Libbie Bergnaum', 'sipes.jordyn@example.net', '2023-10-13 14:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lNuavdDj0e', '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `users` VALUES (33, 'Marion Hirthe', 'ronny.mcglynn@example.com', '2023-10-13 14:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BG2K6xc7iZ', '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `users` VALUES (34, 'Prof. Napoleon Stiedemann', 'renner.wellington@example.net', '2023-10-13 14:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1NQroJlLVh', '2023-10-13 14:39:09', '2023-10-13 14:39:09');
INSERT INTO `users` VALUES (35, 'Ms. Abagail Swaniawski III', 'forest.lindgren@example.com', '2023-10-13 14:39:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NqiEf0d28O', '2023-10-13 14:39:09', '2023-10-13 14:39:09');

SET FOREIGN_KEY_CHECKS = 1;
