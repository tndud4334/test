--영화 스케쥴 테이블 생성
CREATE TABLE movie_schedule
(
    schedule_id VARCHAR2(10) PRIMARY KEY,
    MCode VARCHAR2(10) NOT NULL,
    start_time DATE NOT NULL,
    theater NUMBER(2) NOT NULL,
    seat_total NUMBER(3),
    seat_available NUMBER(3),
    price NUMBER(9)
);

alter table movie_schedule
add CONSTRAINT movie_schedule_MCode_fk FOREIGN KEY(MCode)
REFERENCES MOVIE(MCode) ON DELETE CASCADE;

--좌석 테이블 생성
CREATE TABLE seat
(
    seat_id NUMBER(7) PRIMARY KEY,
    schedule_id VARCHAR2(10) NOT NULL,
    theater NUMBER(2) NOT NULL,
    seat_row CHAR(1) NOT NULL,
    seat_num NUMBER(3) NOT NULL,
    seat_member VARCHAR2(10)
);

alter table seat
add CONSTRAINT seat_schedule_id_fk FOREIGN KEY(schedule_id)
REFERENCES movie_schedule(schedule_id) ON DELETE CASCADE;