set names utf8;
drop database  if exists xiaoniu;
create database xiaoniu charset=utf8;
use xiaoniu;
create table xn_products(
    pid  INT PRIMARY KEY  AUTO_INCREMENT,
	href     varchar(128),
	pic    	 varchar(128),
    title    varchar(64),
    details  varchar(128),
    price  	 decimal(10,2),
    seq_f1  tinyint(4),
    seq_f2  tinyint(4),
    seq_f3  tinyint(4),
    seq_f4  tinyint(4)
);
insert into xn_products values(null,"product_detaile.html?pid=1","assets/imgs/166.jpg","小牛电动M系列专用中撑","驻车稳固，轻松支起",199.00,1,0,0,0);
insert into xn_products values(null,"product_detaile.html?pid=2","assets/imgs/151.jpg","GIVI B27 尾箱","27升意大利GIVI尾箱",499.00,1,0,0,0);
insert into xn_products values(null,"product_detaile.html?pid=3","assets/imgs/157.jpg","GIVI B360N 尾箱","36升超大意大利GIVI尾箱",299.00,1,0,0,0);
insert into xn_products values(null,"product_detaile.html?pid=4","assets/imgs/158.jpg","夏季透气坐垫","防晒，防水，透气，舒适",999.00,1,0,0,0);
insert into xn_products values(null,"product_detaile.html?pid=5","assets/imgs/152.jpg","NIU M1电池锁夹","防盗抗剪，为M1电池提供防盗保障",99.00,1,0,0,0);
insert into xn_products values(null,"product_detaile.html?pid=6","assets/imgs/144.jpg","小牛电动 通用车衣","防晒防风防雨防泼溅",98.00,1,0,0,0);
insert into xn_products values(null,"product_detaile.html?pid=7","assets/imgs/146.jpg","M1前置挂包","为M1提供收纳空间",299.00,1,0,0,0);
insert into xn_products values(null,"product_detaile.html?pid=8","assets/imgs/147.jpg","小牛电动M系列专用中撑","驻车稳固，轻松支起",89.00,1,0,0,0);
insert into xn_products values(null,"product_detaile.html?pid=9","assets/imgs/145.jpg","小牛电动雨衣","雨天骑行最佳拍档",139.00,1,0,0,0);
insert into xn_products values(null,"product_detaile.html?pid=10","assets/imgs/136.jpg","TRELOCK FS300 折叠锁","三级防盗折叠锁",169.00,1,0,0,0);
insert into xn_products values(null,"product_detaile.html?pid=11","assets/imgs/139.jpg","TRELOCK FS200 折叠锁","轻量级折叠锁",159.00,1,0,0,0);
insert into xn_products values(null,"product_detaile.html?pid=12","assets/imgs/148.jpg","AirPOP Light防霾口罩","轻薄透气",189.00,1,0,0,0);
-- 2楼
insert into xn_products values(null,"product_detaile.html?pid=13","assets/imgs/18.jpg","NIU x F5S 单肩邮差包","够大，够安全的邮差包",486.00,0,2,0,0);
insert into xn_products values(null,"product_detaile.html?pid=14","assets/imgs/113.jpg","NIU 多用途针织风巾","无缝编织，出色保暖",499.00,0,2,0,0);
insert into xn_products values(null,"product_detaile.html?pid=15","assets/imgs/87.jpg","NIU 冬季防寒骑行护膝","简约干练 保暖舒适",329.00,0,2,0,0);
insert into xn_products values(null,"product_detaile.html?pid=16","assets/imgs/88.jpg","NIU 冬季保暖骑行手套","无惧严寒 优雅骑行",999.00,0,2,0,0);
insert into xn_products values(null,"product_detaile.html?pid=17","assets/imgs/fengyi.jpg","NIU x EDCO 骑行风衣","舒适弹性面料 强悍防晒",99.00,0,2,0,0);
insert into xn_products values(null,"product_detaile.html?pid=18","assets/imgs/105.jpg","NIU 装饰车牌","安全的艺术装饰",198.00,0,2,0,0);
insert into xn_products values(null,"product_detaile.html?pid=19","assets/imgs/sjzj.jpg","NIU骑行通用手机支架","绝对稳定 骑行必备",239.00,0,2,0,0);
insert into xn_products values(null,"product_detaile.html?pid=20","assets/imgs/91.jpg","复古安全半盔","一路风景 一路安全",299.00,0,2,0,0);
insert into xn_products values(null,"product_detaile.html?pid=21","assets/imgs/148.jpg","AirPOP Light防霾口罩","轻薄透气",189.00,0,2,0,0);
insert into xn_products values(null,"product_detaile.html?pid=22","assets/imgs/kn1.jpg","KOVIX KN1 碟刹锁","短小精悍 超高性价比",139.00,0,2,0,0);
insert into xn_products values(null,"product_detaile.html?pid=23","assets/imgs/132.jpg","KOVIX KVC1 碟刹锁","双重锁芯 更加强悍",169.00,0,0,2,0);
insert into xn_products values(null,"product_detaile.html?pid=24","assets/imgs/124.jpg","NIU 小牛安全头盔","轻量级折叠锁",159.00,0,2,0,0);
--3楼
insert into xn_products values(null,"product_detaile.html?pid=25","assets/imgs/139.jpg","AirPOP Light防霾口罩","轻薄透气",189.00,0,0,3,0);
insert into xn_products values(null,"product_detaile.html?pid=26","assets/imgs/140.jpg","KOVIX KN1 碟刹锁","短小精悍 超高性价比",139.00,0,0,3,0);
insert into xn_products values(null,"product_detaile.html?pid=27","assets/imgs/141.jpg","KOVIX KVC1 碟刹锁","双重锁芯 更加强悍",169.00,0,0,3,0);
insert into xn_products values(null,"product_detaile.html?pid=28","assets/imgs/142.jpg","NIU 小牛安全头盔","轻量级折叠锁",159.00,0,0,3,0);
--4楼
insert into xn_products values(null,"product_detaile.html?pid=29","assets/imgs/niucover.jpg","M1 牛油保+sim卡流量包","您的人车保障服务",159.00,0,0,0,4);


CREATE TABLE xn_user(
     uid INT PRIMARY KEY AUTO_INCREMENT,
     phone VARCHAR (16) ,
     upwd  VARCHAR (32) 
   
);
INSERT INTO  xn_user VALUES(NULL,18362390860, md5('123456'));
INSERT INTO  xn_user VALUES(NULL,18362390861, md5('123456'));
INSERT INTO  xn_user VALUES(NULL,18362390862, md5('123456'));
