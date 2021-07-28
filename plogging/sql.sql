게시판 board
create table board(
	board_num varchar2(100), 
	member_id varchar2(100),
	board_date date,   
	board_content varchar2(1000),
	board_title varchar2(100),
	board_image varchar2(100),
	constraint board_pk primary key (board_num)
	constraint member_id_fk foreign key(member_id) references member(member_id)
);

시퀀스 num_board
create sequence num_board
start with 1 -- 시작숫자
increment by 1; -- 증감숫자
minvalue -- 최소값
maxvalue -- 최대값
nocycle -- 반복지정

게시판댓글 board_num
create table board_num(
	comments_number varchar2(100),
	board_num varchar2(100),
	member_id varchar2(100),
	comments_pw varchar2(100),
	comments_contents varchar2(100),
	comments_date date, --sysdate;
	constraint board_num_pk primary key (comments_number)
	constraint board_num_fk foreign key(board_num) references board(board_num)
	constraint member_id_fk foreign key(member_id) references member(member_id)
);

시퀀스 num_board_num
create sequence num_board_num
start with 1 -- 시작숫자
increment by 1; -- 증감숫자
minvalue -- 최소값
maxvalue -- 최대값
nocycle -- 반복지정

사용자 member
create table member(
	member_id varchar2(100),
	member_pw varchar2(100),
	member_name varchar2(100),
	member_age number,
	member_point varchar2(100),
	member_addr varchar2(100),
	member_plog_own char(20),
	point number,
	user_board varchar2(100),
	member_plog_count number,
	constraint member_pk primary key (member_id)	
);

후기게시판 review_board
create table review_board(
	review_number number,
	member_id varbhar2(100),
	notice_number varbhar2(100),
	notice_post varbhar2(100),
	user_board varbhar2(100),
	review_date date,
	review_image varchar2(100),
	location varchar2(100),
	contents varchar2(1000),
	review_title varchar2(100),
	check varchar2(100),
	run varchar2(100),
	constraint review_board_pk primary key (review_number)
	constraint member_id_fk foreign key(member_id) references member(member_id)
	constraint notice_number_fk foreign key(notice_number) references notice(notice_number)
	constraint notice_post_fk foreign key(notice_post) references local_governments(notice_post)
	constraint user_board_fk foreign key(user_board) references notice(user_board)
);

시퀀스 num_review_board
create sequence num_review_board
start with 1 -- 시작숫자
increment by 1; -- 증감숫자
minvalue -- 최소값
maxvalue -- 최대값
nocycle -- 반복지정

지도 map
create table map(
	gps varchar2(100),
	review_number number,
	constraint map_pk primary key (gps)
	constraint review_number_fk foreign key(review_number) references review_board(review_number)
);

공고 notice
create table notice(
	notice_number varchar2(100),
	user_board varchar2(100),
	notice_post varchar2(100),
	notice_date date,
	notice_title varchar2(100),
	notice_image varchar2(100),
	notice_member varchar2(100),
	limited_number varchar2(100),
	address varchar2(100),
	plog_date varchar2(100),
	constraint notice_pk primary key (notice_number, user_board)
	constraint notice_post_fk foreign key(notice_post) references local_governments(notice_post)
);

시퀀스 num_notice_number
create sequence num_notice_number
start with 1 -- 시작숫자
increment by 1; -- 증감숫자
minvalue -- 최소값
maxvalue -- 최대값
nocycle -- 반복지정

시퀀스 num_user_board
create sequence num_user_board
start with 1 -- 시작숫자
increment by 1; -- 증감숫자
minvalue -- 최소값
maxvalue -- 최대값
nocycle -- 반복지정

지자체 local_governments
create table local_governments(
	notice_post varchar2(100),
	point varchar2(100),
	local_id varchar2(100),
	notice_member varchar2(100),
	constraint local_governments_pk primary key (notice_post, point)
);

시퀀스 num_local_governments
create sequence num_local_governments
start with 1 -- 시작숫자
increment by 1; -- 증감숫자
minvalue -- 최소값
maxvalue -- 최대값
nocycle -- 반복지정

플로깅내역 untitled
create table untitled(
	member_id varchar2(100),
	notice_number varchar2(100),
	point varchar2(100),
	constraint member_id_fk foreign key(member_id) references member(member_id)
	constraint notice_number_fk foreign key(notice_number) references notice(notice_number)
	constraint point_fk foreign key(point) references local_governments(point)
);