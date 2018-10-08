--  Sample table with common fields.

CREATE TABLE `partner`(
    `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(250) NOT NULL,
    `url` VARCHAR(250) NOT NULL,
    `is_public` ENUM('y', 'n') NOT NULL DEFAULT 'n',
    `is_visible` ENUM('y', 'n') NOT NULL DEFAULT 'n' COMMENT 'Show in menu?',
    `has_auth` enum('y','n') NOT NULL DEFAULT 'n' COMMENT 'Does the page has authorization?',
    `price` INT(10) UNSIGNED DEFAULT NULL COMMENT "Base price should always be a long INT field, so any time could add a higher precision than 2 digits,  easily make conversions and calc.",
    `mirror_id` INT(10) UNSIGNED NOT NULL COMMENT 'Same item in multiple languages.',
    `country` CHAR(2) NOT NULL,
    `seq` TINYINT(2) UNSIGNED NOT NULL DEFAULT '1',
    `created_at` INT(10) UNSIGNED NOT NULL,
    `cached_at` TIMESTAMP NULL DEFAULT NULL,
    `modified_at` INT(10) UNSIGNED NOT NULL,
    `lang_id` TINYINT(3) UNSIGNED NOT NULL,
    PRIMARY KEY(`id`),
    UNIQUE INDEX `title`(`title`)
) ENGINE = INNODB DEFAULT CHARACTER SET = UTF8;
