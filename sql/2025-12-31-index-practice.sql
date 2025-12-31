create view user_v_1 as
select id, name
from tb_user
where id <= 10;

show create view user_v_1;

select *
from user_v_1;

select *
from user_v_1
where id = 1;

create or replace view user_v_1 as
select id, name, profession
from tb_user
where id <= 10;

alter view user_v_1 as select id, name, profession
                       from tb_user
                       where id < 10;

drop view user_v_1;

create or replace view user_v_1 as
select name, age
from tb_user
where age <= 20;

select *
from user_v_1;

show create table tb_user;

create or replace view user_v_1 as
select name, phone
from tb_user
where age <= 20;

select *
from user_v_1;

insert into user_v_1 value ('李廷风', '123456789');

create or replace view user_v_1 as
select name, phone, age
from tb_user
where age <= 20;

insert into user_v_1 value ('张明天', '1234567890', 17);

select *
from user_v_1;

insert into user_v_1 value ('石楷滔', '12345678901', 18);

delete
from user_v_1
where name = '石楷滔';

insert into user_v_1 value ('石楷滔', '12345678901', 30);

select *
from user_v_1;

create view user_v_2 as
select name, phone, age
from tb_user
where age <= 20
with check option;

insert into user_v_2 value ('翠花', '123456', 38);
insert into user_v_2 value ('翠花', '123456', 20);

create table user_logs
(
    id             int(11)     not null auto_increment,
    operation      varchar(20) not null comment '操作类型, insert/update/delete',
    operate_time   datetime    not null comment '操作时间',
    operate_id     int(11)     not null comment '操作的ID',
    operate_params varchar(500) comment '操作参数',
    primary key (`id`)
) engine = innodb
  default charset = utf8;


create trigger tb_user_insert_trigger
    after insert
    on tb_user
    for each row
begin
    insert into user_logs (operation, operate_time, operate_id, operate_params) value (
                                                                                       'insert', now(), NEW.id,
                                                                                       concat('插入的内容为：id=',
                                                                                              NEW.id, ', name=',
                                                                                              NEW.name,
                                                                                              ', phone=', new.phone,
                                                                                              ', email=', new.email,
                                                                                              ', profession=',
                                                                                              NEW.profession)
        );

end;

show triggers;

insert into tb_user(name, phone, email, profession, age, gender, status, createtime) value (
                                                                                            '杨振涛', '11111111',
                                                                                            '@123', '绘图专家', '24',
                                                                                            '男', '1', now()
    );

create trigger tb_user_update_trigger
    after update
    on tb_user
    for each row
begin
    insert into user_logs(operation, operate_time, operate_id, operate_params) value (
                                                                                      'update', now(), new.id,
                                                                                      concat('更新之前的数据: id=',
                                                                                              old.id, ',name=',
                                                                                              old.name, ', phone=',
                                                                                              old.phone, ', email=',
                                                                                              old.email,
                                                                                              ', profession=',
                                                                                              old.profession,
                                                                                              ' | 更新之后的数据: id=',
                                                                                              new.id, ',name=',
                                                                                              new.name, ', phone=',
                                                                                              NEW.phone, ', email=',
                                                                                              NEW.email,
                                                                                              ', profession=',
                                                                                              NEW.profession)
                                                                                      );
                                                                                          end;

    show triggers ;

update tb_user set profession = '会计' where id = 23;

create trigger tb_user_delete_trigger
    after delete on tb_user for each row
begin
    insert into user_logs (operation, operate_time, operate_id, operate_params) VALUE (
        'delete',now(),old.id,concat('要删除的记录：id=',old.id,' name=',old.name,' phone=',old.phone,' email=',old.email,' profession=',old.profession)
        );
end;

show triggers ;

delete from tb_user where name in ('石楷滔','张明天','李廷风','杨振涛');
delete from tb_user where name = '翠花';

