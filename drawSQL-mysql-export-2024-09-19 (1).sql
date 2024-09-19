CREATE TABLE `classroom`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE `group`(
    `id` BIGINT UNSIGNED NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `teacherid` BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY(`id`)
);
CREATE TABLE `comment`(
    `studentid` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `comment` VARCHAR(255) NOT NULL
);
CREATE TABLE `student`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `firstname` VARCHAR(255) NOT NULL,
    `lastname` VARCHAR(255) NOT NULL,
    `birthdate` DATE NOT NULL,
    `group` BIGINT UNSIGNED NOT NULL
);
CREATE TABLE `teacher`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `firstname` VARCHAR(255) NOT NULL,
    `lastname` VARCHAR(255) NOT NULL,
    `birthdate` DATE NOT NULL
);
ALTER TABLE
    `group` ADD CONSTRAINT `group_teacherid_foreign` FOREIGN KEY(`teacherid`) REFERENCES `teacher`(`id`);
ALTER TABLE
    `student` ADD CONSTRAINT `student_group_foreign` FOREIGN KEY(`group`) REFERENCES `group`(`id`);
ALTER TABLE
    `comment` ADD CONSTRAINT `comment_studentid_foreign` FOREIGN KEY(`studentid`) REFERENCES `student`(`id`);