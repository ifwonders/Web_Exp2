CREATE TABLE IF NOT EXISTS `order`(
    `id` int NOT NULL AUTO_INCREMENT,
    `customer_id` int NOT NULL ,
    `merchant_id` int NOT NULL ,
    `order_status` TINYINT NOT NULL ,
    `total_price` DECIMAL(10,2) NOT NULL ,
    `create_time` DATETIME,
    `update_time` DATETIME,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`customer_id`) REFERENCES customer(id),
    FOREIGN KEY (`merchant_id`) REFERENCES merchant(id)
) ENGINE=InnoDB AUTO_INCREMENT=10000 ;
# 订单表用于存储用户在外卖系统下的订单信息。通过设置主键ID，可以唯一标识每个订单。用户ID和商家ID作为外键，分别与用户表和商家表建立关联，便于查询订单对应的用户和商家信息。订单状态用于表示订单的进度。订单总金额记录订单的金额。创建时间和更新时间记录订单信息的变动情况。

INSERT INTO `order` (`customer_id`, `merchant_id`, `order_status`, `total_price`, `create_time`, `update_time`) VALUES
(10000, 10000, 0, 35.50, NOW(), NOW()),
(10001, 10001, 1, 42.75, NOW(), NOW()),
(10002, 10002, 2, 19.99, NOW(), NOW()),
(10003, 10003, 3, 22.00, NOW(), NOW()),
(10004, 10004, 4, 50.25, NOW(), NOW()),
(10005, 10005, 5, 15.00, NOW(), NOW()),
(10006, 10006, 0, 27.50, NOW(), NOW());