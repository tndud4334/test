create table subitemcart (num number constraint pk_sitemcart primary key,  
userid varchar2(20), gcode varchar2(10) not null, gcategory varchar2(10), mname varchar2(100),
gname varchar2(100), gprice number, gamount number, gimage varchar2(10),  gcontent varchar(4000));

create sequence subitemcart_seq;
