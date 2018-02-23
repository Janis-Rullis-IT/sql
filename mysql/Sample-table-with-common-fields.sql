--  Sample table with common fields.

CREATE TABLE `partner`(
    `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(250) NOT NULL,
    `url` VARCHAR(250) NOT NULL,
    `is_public` ENUM('y', 'n') NOT NULL DEFAULT 'n',
    `is_visible` ENUM('y', 'n') NOT NULL DEFAULT 'n' COMMENT 'Show in menu?',
    `sequence` TINYINT(2) NOT NULL DEFAULT '1',
    `created_at` INT(10) UNSIGNED NOT NULL,
    `modified_at` INT(10) UNSIGNED NOT NULL,
    `lang_id` TINYINT(3) UNSIGNED NOT NULL,
    PRIMARY KEY(`id`),
    UNIQUE INDEX `title`(`title`)
) ENGINE = INNODB DEFAULT CHARACTER SET = UTF8;
