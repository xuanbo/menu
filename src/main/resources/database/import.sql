DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT 0,
  `menu_name` varchar(30) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `level` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO menu(id, parent_id, menu_name, icon, url, level) VALUE (1, 0, '游戏', '', '', '1');
INSERT INTO menu(id, parent_id, menu_name, icon, url, level) VALUE (2, 0, '音乐', '', '', '2');
INSERT INTO menu(id, parent_id, menu_name, icon, url, level) VALUE (3, 0, '书籍', '', '', '3');
INSERT INTO menu(id, parent_id, menu_name, icon, url, level) VALUE (4, 0, '体育', '', '', '4');
INSERT INTO menu(id, parent_id, menu_name, icon, url, level) VALUE (5, 1, 'lol', '', 'http://www.baidu.com', '1.1');
INSERT INTO menu(id, parent_id, menu_name, icon, url, level) VALUE (6, 1, 'dota2', '', 'http://www.baidu.com', '1.2');
INSERT INTO menu(id, parent_id, menu_name, icon, url, level) VALUE (7, 2, '欧美', '', 'http://www.baidu.com', '2.1');
INSERT INTO menu(id, parent_id, menu_name, icon, url, level) VALUE (8, 2, '华语', '', 'http://www.baidu.com', '2.2');
INSERT INTO menu(id, parent_id, menu_name, icon, url, level) VALUE (9, 3, '小说', '', 'http://www.baidu.com', '3.1');
INSERT INTO menu(id, parent_id, menu_name, icon, url, level) VALUE (10, 3, '文学', '', 'http://www.baidu.com', '3.2');
INSERT INTO menu(id, parent_id, menu_name, icon, url, level) VALUE (11, 4, '篮球', '', 'http://www.baidu.com', '4.1');
INSERT INTO menu(id, parent_id, menu_name, icon, url, level) VALUE (12, 4, '足球', '', 'http://www.baidu.com', '4.2');
INSERT INTO menu(id, parent_id, menu_name, icon, url, level) VALUE (13, 4, '乒乓球', '', 'http://www.baidu.com', '4.3');
