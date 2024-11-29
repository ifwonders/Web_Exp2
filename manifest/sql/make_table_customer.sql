CREATE TABLE IF NOT EXISTS `customer` (
    `id` int NOT NULL AUTO_INCREMENT,
    `customername` varchar(50) NOT NULL,
    `password` varchar(50) NOT NULL,
    `mobile` varchar(20) NOT NULL,
    `email` varchar(50) DEFAULT NULL,
    `create_time` DATETIME,
    `update_time` DATETIME,
    PRIMARY KEY (`id`),
    UNIQUE (`customername`),
    UNIQUE (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 ;
# 设计原因： 用户表用于存储外卖系统的注册用户信息。通过设置主键ID，可以唯一标识每个用户。用户名和密码用于登录验证，手机号和邮箱可用于找回密码和接收通知。创建时间和更新时间记录用户信息的变动情况。

INSERT INTO `customer` (`customername`, `password`, `mobile`, `email`, `create_time`, `update_time`) VALUES
('john_doe', 'johnPass123', '13900139001', 'john@example.com', NOW(), NOW()),
('jane_smith', 'janePass456', '13900139002', 'jane@example.com', NOW(), NOW()),
('mike_brown', 'mikePass789', '13900139003', NULL, NOW(), NOW()),
('sarah_white', 'sarahPass101', '13900139004', 'sarah@example.com', NOW(), NOW()),
('tom_black', 'tomPass202', '13900139005', 'tom@example.com', NOW(), NOW()),
('lisa_green', 'lisaPass303', '13900139006', 'lisa@example.com', NOW(), NOW()),
('peter_yellow', 'peterPass404', '13900139007', 'peter@example.com', NOW(), NOW());