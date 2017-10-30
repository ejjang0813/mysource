
drop table user cascade constraint;
create table user
(
	user_id varchar2(10) primary key,
	name varchar2(30) not null,
	password varchar2(30) not null,
	address varchar2(60) not null,
	email varchar2(30) unique,
	point varchar2(5)
);


insert into user values("id-1","이지수","1234","서울","1@n.com",100);
insert into user values("id-2","이동엽","2345","부산","2@n.com",200);
insert into user values("id-3","김호현","3456","충북","3@n.com",300);
insert into user values("id-4","이수일","4576","충남","4@n.com",400);
insert into user values("id-5","장은정","5678","강원도","5@n.com",500);

drop table order cascade constraint;
create table order
(
	order_num varchar2(30) primary key,
	order_date date not null,
	delivery_address varchar2(60) not null,
	payment_way varchar2(30) not null,
	user_id varchar2(10) not null,
	order_count number(5),
	constraint user_foreign_key foreign key(user_id) references user(user_id) on delete cascade 
);


insert into order values("00001","2017-08-13","경기도","카드","id-1", 2);
insert into order values("00002","2017-07-23","경기도 성남시","현금","id-2", 3);
insert into order values("00003","2017-06-14","경기도 성남시 분당구","현금","id-3", 4);
insert into order values("00004","2017-05-15","경기도 성남시 분당구 이매동","카드","id-4", 5);
insert into order values("00007","2017-02-18","경기도 하남시 위례중앙로","카드","id-5", 6);

drop table product cascade constraint;
create table product
(
	order_specific varchar2(30) primary key,
	product varchar2(30) not null,
	order_num varchar2(30) not null foreign key,
	product_count number(5) not null,
	product_price number(5) not null
	constraint user_foreign_key foreign key(order_id) references order(order_id) on delete cascade
);

insert into product("A001", "socks001","00001",10,1000);
insert into product("A002", "socks002","00001",10,1000);
insert into product("A003", "socks003","00001",10,1000);
insert into product("A004", "socks004","00001",10,1000);
insert into product("A005", "socks005","00001",10,1000);
insert into product("A006", "socks006","00001",10,1000);
insert into product("A007", "socks007","00001",10,1000);
insert into product("A008", "socks008","00001",10,1000);
insert into product("A009", "socks009","00001",10,1000);

