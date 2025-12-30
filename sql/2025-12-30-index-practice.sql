show engines;

create database db01;

use db01;

create table stu(
    id int primary key auto_increment comment '学生编号',
    stu_num char(6) unique comment '学生学号',
    name varchar(10) not null comment '学生姓名',
    gender char(1) not null comment '性别',
    age tinyint unsigned check ( age>0&&age<200 ) comment '年龄',
    entry_date date comment '入学日期',
    address varchar(30) comment '家庭住址'
);

show create table stu;

create table my_myisam(
    id int,
    name varchar(10)
)engine =Myisam, comment 'myisam 存储引擎' ;

show create table my_myisam;

# c测试数据
create table tb_user(
id int primary key auto_increment comment '主键',
name varchar(50) not null comment '用户名',
phone varchar(11) not null comment '手机号',
email varchar(100) comment '邮箱',
profession varchar(11) comment '专业',
age tinyint unsigned comment '年龄',
gender char(1) comment '性别 , 1: 男, 2: 女',
status char(1) comment '状态',
createtime datetime comment '创建时间'
) comment '系统用户表';

INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('吕布', '17799990000', 'lvbu666@163.com', '软件工程', 23, '1',
'6', '2001-02-02 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('曹操', '17799990001', 'caocao666@qq.com', '通讯工程', 33,
'1', '0', '2001-03-05 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('赵云', '17799990002', '17799990@139.com', '英语', 34, '1',
'2', '2002-03-02 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('孙悟空', '17799990003', '17799990@sina.com', '工程造价', 54,
'1', '0', '2001-07-02 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('花木兰', '17799990004', '19980729@sina.com', '软件工程', 23,
'2', '1', '2001-04-22 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('大乔', '17799990005', 'daqiao666@sina.com', '舞蹈', 22, '2',
'0', '2001-02-07 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('露娜', '17799990006', 'luna_love@sina.com', '应用数学', 24,
'2', '0', '2001-02-08 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('程咬金', '17799990007', 'chengyaojin@163.com', '化工', 38,
'1', '5', '2001-05-23 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('项羽', '17799990008', 'xiaoyu666@qq.com', '金属材料', 43,
'1', '0', '2001-09-18 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('白起', '17799990009', 'baiqi666@sina.com', '机械工程及其自动
化', 27, '1', '2', '2001-08-16 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('韩信', '17799990010', 'hanxin520@163.com', '无机非金属材料工
程', 27, '1', '0', '2001-06-12 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('荆轲', '17799990011', 'jingke123@163.com', '会计', 29, '1',
'0', '2001-05-11 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('兰陵王', '17799990012', 'lanlinwang666@126.com', '工程造价',
44, '1', '1', '2001-04-09 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('狂铁', '17799990013', 'kuangtie@sina.com', '应用数学', 43,
'1', '2', '2001-04-10 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('貂蝉', '17799990014', '84958948374@qq.com', '软件工程', 40,
'2', '3', '2001-02-12 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('妲己', '17799990015', '2783238293@qq.com', '软件工程', 31,
'2', '0', '2001-01-30 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('芈月', '17799990016', 'xiaomin2001@sina.com', '工业经济', 35,
'2', '0', '2000-05-03 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('嬴政', '17799990017', '8839434342@qq.com', '化工', 38, '1',
'1', '2001-08-08 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('狄仁杰', '17799990018', 'jujiamlm8166@163.com', '国际贸易',
30, '1', '0', '2007-03-12 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('安琪拉', '17799990019', 'jdodm1h@126.com', '城市规划', 51,
'2', '0', '2001-08-15 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('典韦', '17799990020', 'ycaunanjian@163.com', '城市规划', 52,
'1', '2', '2000-04-12 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('廉颇', '17799990021', 'lianpo321@126.com', '土木工程', 19,
'1', '3', '2002-07-18 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('后羿', '17799990022', 'altycj2000@139.com', '城市园林', 20,
'1', '0', '2002-03-10 00:00:00');
INSERT INTO tb_user (name, phone, email, profession, age, gender, status,
createtime) VALUES ('姜子牙', '17799990023', '37483844@qq.com', '工程造价', 29,
'1', '4', '2003-05-26 00:00:00');


create index idx_name on tb_user(name);

show index from tb_user;

create unique index idx_phone on tb_user(phone);

create index idx_pro_age_status on tb_user(profession,age,status);


create  index idx_email on tb_user(email);

show index from tb_user;

show variables like 'slow_query_log';

select * from tb_user;

# 模拟 100w数据
CREATE TABLE `tb_sku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `sn` varchar(100) NOT NULL COMMENT '商品条码',
  `name` varchar(200) NOT NULL COMMENT 'SKU名称',
  `price` int(20) NOT NULL COMMENT '价格（分）',
  `num` int(10) NOT NULL COMMENT '库存数量',
  `alert_num` int(11) DEFAULT NULL COMMENT '库存预警数量',
  `image` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `images` varchar(2000) DEFAULT NULL COMMENT '商品图片列表',
  `weight` int(11) DEFAULT NULL COMMENT '重量（克）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `category_name` varchar(200) DEFAULT NULL COMMENT '类目名称',
  `brand_name` varchar(100) DEFAULT NULL COMMENT '品牌名称',
  `spec` varchar(200) DEFAULT NULL COMMENT '规格',
  `sale_num` int(11) DEFAULT '0' COMMENT '销量',
  `comment_num` int(11) DEFAULT '0' COMMENT '评论数',
  `status` char(1) DEFAULT '1' COMMENT '商品状态 1-正常，2-下架，3-删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

show variables like 'local_infile';

set global local_infile  = 1;

load data local infile 'D:/develop/tb_sku1.sql'
    into table `tb_sku` fields terminated by ',' lines terminated by '\n';

load data local infile 'D:/develop/tb_sku2.sql'
    into table `tb_sku` fields terminated by ',' lines terminated by '\n';
load data local infile 'D:/develop/tb_sku3.sql'
    into table `tb_sku` fields terminated by ',' lines terminated by '\n';
load data local infile 'D:/develop/tb_sku4.sql'
    into table `tb_sku` fields terminated by ',' lines terminated by '\n';
load data local infile 'D:/develop/tb_sku5.sql'
    into table `tb_sku` fields terminated by ',' lines terminated by '\n';

select  count(*) from tb_sku;

select * from tb_user;
select * from tb_user where id = 1;
select * from tb_user where name = '白起';

explain select * from tb_user where id = 1;

select * from tb_sku where id = 1;

SELECT * FROM  tb_sku  WHERE sn = '100000003145001';

create index idx_sn_sku on tb_sku(sn);

explain select * from tb_user where profession = '软件工厂' and age = 31 and status = '0';


explain select * from tb_user where profession = '软件工厂' and age = 31 ;

explain select * from tb_user where profession = '软件工厂' ;

explain select * from tb_user where  age = 31 and status = '0';

explain select * from tb_user where profession = '软件工厂'  and status = '0';

explain select * from tb_user where profession = '软件工程' and age > 30 and status
= '0';

explain select * from tb_user where profession = '软件工厂' and age = 31 and status = '0';

explain select * from tb_user where profession = '软件工程' and age >= 30 and
status = '0';

explain select * from tb_user where name like '白%';
explain select * from tb_user where name like '%尚%';
explain select * from tb_user where substr(name,1) = '起';

explain select * from tb_user where phone = 17799990000;
show index from tb_user;
explain select * from tb_user where id = 1 or age = 10;

explain select * from tb_user where tb_user.profession is not null ;
explain select * from tb_user where tb_user.profession is null ;

show create table tb_user;

create index idx_pro on tb_user(profession);

explain select * from tb_user where tb_user.profession = '软件工程' ;

explain select * from tb_user force index(idx_pro_age_status) where tb_user.profession = '软件工程' ;

explain select * from tb_user where profession = '软件工厂' and age = 31 and status = '0';
explain select id from tb_user where profession = '软件工厂' and age = 31 and status = '0';
explain select id,profession from tb_user where profession = '软件工厂' and age = 31 and status = '0';

drop index idx_email on tb_user;

create index idx_email on tb_user(email(5));

show index from tb_user;

select  count(distinct email) / count(*)   from  tb_user ;

select  count(distinct substring(email,1,5)) / count(*)  from  tb_user ;

explain select phone from tb_user order by phone desc ;

explain select age from tb_user order by age desc ;

show index from tb_user;

explain select profession, count(*) from tb_user group by profession ;

drop index idx_pro on tb_user;
drop index idx_pro_age_status on tb_user;

create index idx_pro_age_status on tb_user(profession,age,status);

explain select age, count(*) from tb_user group by age;

explain select profession, age, count(*) from tb_user group by profession, age;
 select profession, age, count(*) from tb_user group by profession, age;

select * from tb_sku limit 1000000,10;
select * from tb_sku limit 9000000,10;

explain   select  *  from  tb_sku  t  ,  (select  id  from  tb_sku  order  by  id
limit  9000000,10)  a  where t.id  =  a.id;


