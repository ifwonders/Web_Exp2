CREATE TABLE IF NOT EXISTS `merchant`(
    `id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL ,
    `address` varchar(100) NOT NULL ,
    `mobile` varchar(20) NOT NULL ,
    `create_time` DATETIME,
    `update_time` DATETIME,
    PRIMARY KEY (`id`),
    UNIQUE (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 ;
# 设计原因： 商家表用于存储外卖系统的入驻商家信息。通过设置主键ID，可以唯一标识每个商家。商家名称、地址和联系电话便于用户查找和联系商家。创建时间和更新时间记录商家信息的变动情况。

INSERT INTO `merchant` (`name`, `address`, `mobile`, `create_time`, `update_time`) VALUES
('BurgerJoint', 'Burger St 1', '13800138001',  NOW(), NOW()),
('PizzaPalace', 'Pizza Ave 2', '13800138002', NOW(), NOW()),
('SushiSpot', 'Sushi Blvd 3', '13800138003',  NOW(), NOW()),
('TacoTower', 'Taco Rd 4', '13800138004', NOW(), NOW()),
('NoodleNest', 'Noodle Ct 5', '13800138005',  NOW(), NOW()),
('DessertDome', 'Dessert Ln 6', '13800138006',  NOW(), NOW()),
('CafeCorner', 'Cafe Sq 7', '13800138007',  NOW(), NOW());