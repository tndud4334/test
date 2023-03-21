create table subitem (gcode varchar2(10) constraint pk_subitem primary key, gcategory varchar(10) not null, mname varchar2(100), 
gname varchar2(100) not null, gprice number, gimage varchar2(10) not null, gcontent varchar2(4000));

set define off;

insert into subitem values('g101','snack',null,'고소팝콘(M)',5000,'snack01','옥수수 본연의 맛을 즐길 수 있는 짭짜름한 클래식 고소팝콘!');
insert into subitem values('g102','snack',null,'고소팝콘(L)',5500,'snack02','옥수수 본연의 맛을 즐길 수 있는 짭짜름한 클래식 고소팝콘!');
insert into subitem values('g103','snack',null,'달콤팝콘(M)',6000,'snack03','달콤한 카라멜 향이 가득한 달콤팝콘을 즐겨보세요!');
insert into subitem values('g104','snack',null,'달콤팝콘(L)',6500,'snack04','달콤한 카라멜 향이 가득한 달콤팝콘을 즐겨보세요!');
insert into subitem values('g105','snack',null,'더블치즈팝콘(M)',6000,'snack05','치즈매니아들이라면 놓칠 수 없는 바로 그 팝콘!');
insert into subitem values('g106','snack',null,'더블치즈팝콘(L)',6500,'snack06','치즈매니아들이라면 놓칠 수 없는 바로 그 팝콘!');
insert into subitem values('g107','snack',null,'땅콩버터오징어',3500,'snack07','영화 보는 즐거움에 씹는 줄거움까지 더해보세요!');
insert into subitem values('g108','snack',null,'칠리치즈나쵸',4900,'snack08','바삭바삭한 나쵸에 칠리치즈의 조합, 여기가 멕시코인가요?');
insert into subitem values('g109','snack',null,'플레인핫도그',5000,'snack09','소시지에 기본소스를 버무린 플레인 핫도그');

insert into subitem values('g201','drink',null,'탄산음료(M)',2500,'drink01','콜라, 제로콜라, 환타오렌지, 환타포도, 스프라이트 중 원하는 맛으로 교환하세요!');
insert into subitem values('g202','drink',null,'탄산음료(L)',3000,'drink02','콜라, 제로콜라, 환타오렌지, 환타포도, 스프라이트 중 원하는 맛으로 교환하세요!');
insert into subitem values('g203','drink',null,'에이드',3000,'drink03','오렌지에이드, 자몽에이드, 레몬에이드 중 원하는 맛으로 교환하세요!');
insert into subitem values('g204','drink',null,'아메리카노(ICE)',3000,'drink04','현대인의 필수품, 아메리카노 한잔하세요~');
insert into subitem values('g205','drink',null,'아메리카노(HOT)',3000,'drink05','현대인의 필수품, 아메리카노 한잔하세요~');
insert into subitem values('g206','drink',null,'디카페인 콜드브루',3000,'drink06','카페인 부담 없이 편안한 한 모금, 디카페인 콜드브루!');

insert into subitem values('g301','goods','스즈메의 문단속','스즈메의 문단속 빈티지 스티커',5000,'goods01','goodsspec01');
insert into subitem values('g302','goods','스즈메의 문단속','스즈메의 문단속 포스터 세트',6000,'goods02','goodsspec02');
insert into subitem values('g303','goods','귀멸의 칼날-상현집결, 그리고 도공 마을로','귀멸의 칼날 씰 스티커',5800,'goods03','goodsspec03');
insert into subitem values('g304','goods','귀멸의 칼날-상현집결, 그리고 도공 마을로','귀멸의 칼날 엽서카드홀더',22000,'goods04','goodsspec04');
insert into subitem values('g305','goods','앤트맨과 와스프-퀀텀매니아','마블 어벤저스 컬러링 아트 컬렉션',16000,'goods05','goodsspec05');

commit;
