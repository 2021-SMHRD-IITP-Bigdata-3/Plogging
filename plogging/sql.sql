게시판 board
create table board(
	board_num varchar2(100), -- 게시물 번호
	member_id varchar2(100), -- 아이디
	board_date date,    -- 작성일자
	board_content varchar2(1000), -- 게시글 내용
	board_title varchar2(100), -- 게시글 제목
	board_image varchar2(100), -- 게시글 사진
	constraint board_pk primary key (board_num)
	constraint member_id_fk foreign key(member_id) references member(member_id)
);

insert into board (board_num,member_id,board_date,board_content,board_title,board_image) values('test','test','sysdate','test','test','test');



시퀀스 num_board
create sequence num_board
start with 1 -- 시작숫자
increment by 1; -- 증감숫자
minvalue -- 최소값
maxvalue -- 최대값
nocycle -- 반복지정

게시판댓글 board_num
create table board_num(
	comments_number varchar2(100), -- 댓글 번호 
	board_num varchar2(100), -- 게시물 번호
	member_id varchar2(100), -- 아이디
	comments_pw varchar2(100), -- 댓글 비밀번호
	comments_contents varchar2(100), -- 댓글 내용
	comments_date date, --sysdate; 작성일자
	constraint board_num_pk primary key (comments_number)
	constraint board_num_fk foreign key(board_num) references board(board_num)
	constraint member_id_fk foreign key(member_id) references member(member_id)
);

insert into board_num(comments_number,board_num,member_id,comments_pw,comments_contents,comments_date) values('test','test','test','test','test','sysdate');


시퀀스 num_board_num
create sequence num_board_num
start with 1 -- 시작숫자
increment by 1; -- 증감숫자
minvalue -- 최소값
maxvalue -- 최대값
nocycle -- 반복지정

사용자 member
create table member(
	member_id varchar2(100), -- 아이디
	member_pw varchar2(100), -- 비밀번호
	member_name varchar2(100), -- 이름
	member_age number, -- 나이
	member_point varchar2(100), -- 보유적립금
	member_addr varchar2(100), -- 주소지
	member_plog_own char(20), -- 플로깅 참여 여부
	point number, -- 적립금
	user_board varchar2(100), -- 사용자 제보 게시물
	member_plog_count number, -- 플로깅 횟수
	constraint member_pk primary key (member_id)	
);

insert into member(member_id,member_pw,member_name,member_age,member_point,member_addr,member_plog_own,point,user_board,member_plog_count) values('test','test','test',1,'test','test','o',1,'test',1);



후기게시판 review_board
create table review_board(
	review_number number, --게시물 번호
	member_id varchar2(100), -- 아이디
	notice_number varchar2(100), -- 공고번호
	notice_post varchar2(100), -- 제보게시물
	user_board varchar2(100), -- 사용자 제보 게시물
	review_date date, -- 작성일자
	review_image varchar2(100), -- 게시물 사진
	location varchar2(100), -- 위치정보
	contents varchar2(1000), -- 게시글 내용
	review_title varchar2(100), -- 게시글 제목
	checkBox varchar2(100), --체크박스
	run varchar2(100), -- 거리
	constraint review_board_pk primary key (review_number)
	constraint member_id_fk foreign key(member_id) references member(member_id)
	constraint notice_number_fk foreign key(notice_number) references notice(notice_number)
	constraint notice_post_fk foreign key(notice_post) references local_governments(notice_post)
	constraint user_board_fk foreign key(user_board) references notice(user_board)
);

insert into review_board(review_number,member_id,notice_number,notice_post,user_board,review_date,review_image,location,contents,review_title,checkBox,run) values(1,'test','test','test','test','sysdate','test','test','test','test','test','test');

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
	review_number number, -- 게시물 번호
	constraint map_pk primary key (gps)
	constraint review_number_fk foreign key(review_number) references review_board(review_number)
);

insert into map(gps,review_number) values('test',1);

공고 notice
create table notice(
	notice_number varchar2(100), -- 공고번호
	user_board varchar2(100), -- 사용자 제보 게시물
	notice_post varchar2(100), --제보게시물
	notice_date date, -- 작성일자
	notice_title varchar2(100), -- 게시글 제목
	notice_image varchar2(100), -- 게시글 사진
	notice_member varchar2(100), -- 참여자 목록
	limited_number varchar2(100), -- 제한 인원수
	address varchar2(100), -- 지역 주소값
	plog_date varchar2(100), -- 플로깅 날짜
	constraint notice_pk primary key (notice_number, user_board)
	constraint notice_post_fk foreign key(notice_post) references local_governments(notice_post)
);

insert into notice(notice_number,user_board,notice_post,notice_date,notice_title,notice_image,notice_member,limited_number,address,plog_date)values('test','test','test','sysdate','test','test','test','test','test','test');


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
	notice_post varchar2(100), -- 제보게시글
	point varchar2(100), -- 적립금 현황
	local_id varchar2(100), -- 지자체 아이디
	notice_member varchar2(100), -- 참여자 목록
	constraint local_governments_pk primary key (notice_post, point)
);

insert into(notice_post,point,local_id,notice_member) values('test','test','test','test');

시퀀스 num_local_governments
create sequence num_local_governments
start with 1 -- 시작숫자
increment by 1; -- 증감숫자
minvalue -- 최소값
maxvalue -- 최대값
nocycle -- 반복지정

플로깅내역 untitled
create table untitled(
	member_id varchar2(100), -- 아이디
	notice_number varchar2(100), -- 공고번호
	point varchar2(100), -- 적립금 현황
	constraint member_id_fk foreign key(member_id) references member(member_id)
	constraint notice_number_fk foreign key(notice_number) references notice(notice_number)
	constraint point_fk foreign key(point) references local_governments(point)
);

insert into(member_id,notice_number,point) values('test','test','test');

