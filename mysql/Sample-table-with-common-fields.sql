--  Sample table with common fields.

CREATE TABLE `partner`(
    `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(250) NOT NULL,
    `url` VARCHAR(250) NOT NULL,
    `is_public` ENUM('y', 'n') NOT NULL DEFAULT 'n' COMMENT 'ENUM is more readable, stricter and faster than VARCHAR.',
    `is_visible` ENUM('y', 'n') NOT NULL DEFAULT 'n' COMMENT 'Show in menu?',
    `has_auth` enum('y','n') NOT NULL DEFAULT 'n' COMMENT 'Does the page has authorization?',
    `status` ENUM('waiting', 'in_progress', 'completed') NOT NULL DEFAULT 'waiting',
    `price` INT(10) UNSIGNED DEFAULT NULL COMMENT "Base price should always be a long INT field, so any time could add a higher precision than 2 digits,  easily make conversions and calc.",
    `mirror_id` INT(10) UNSIGNED NOT NULL COMMENT 'Same item in multiple languages.',
    `country` CHAR(2) NOT NULL,
    `seq` TINYINT(2) UNSIGNED NOT NULL DEFAULT '1',
    `created_at` INT(10) UNSIGNED NOT NULL,
    `cached_at` TIMESTAMP NULL DEFAULT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
    `modified_at` INT(10) UNSIGNED NOT NULL,
    `lang_id` TINYINT(3) UNSIGNED NOT NULL,
     `sys_info` varchar(20) DEFAULT NULL COMMENT 'In case if You need to mark it or add some flag. For inner use. For example, edited 3 JSONs by hand and mark \"#1234 upd\", so they could be identified later.',
              
    PRIMARY KEY(`id`),
    UNIQUE INDEX `title`(`title`)
) ENGINE = INNODB DEFAULT CHARACTER SET = UTF8;
