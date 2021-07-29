ä�� ���̺�
create table chattable(
	num number,
	member_id varchar2(500),
	content varchar2(500),
	day date
)

�Խ��� board
create table board(
   board_num number primary key, -- �Խù� ��ȣ
   member_id varchar2(100) references member(member_id), -- ���̵�
   board_date date,    -- �ۼ�����
   board_content varchar2(1000), -- �Խñ� ����
   board_title varchar2(100), -- �Խñ� ����
   board_image varchar2(100) -- �Խñ� ����
);
--
insert into board (board_num,member_id,board_date,board_content,board_title,board_image) 
values(num_board1.nextval,'test',sysdate,'test','test','test');
drop table board;
<<<<<<< HEAD
drop table board;
=======
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-3/Plogging.git

������ num_board
create sequence num_board1
increment by 1
start with 1
maxvalue 9999;
minvalue -- �ּҰ�
maxvalue -- �ִ밪
nocycle -- �ݺ�����

�Խ��Ǵ�� board_num
create table board_num(
	comments_number varchar2(100), -- ��� ��ȣ 
	board_num varchar2(100), -- �Խù� ��ȣ
	member_id varchar2(100), -- ���̵�
	comments_pw varchar2(100), -- ��� ��й�ȣ
	comments_contents varchar2(100), -- ��� ����
	comments_date date, --sysdate; �ۼ�����
	constraint board_num_pk primary key (comments_number)
	constraint board_num_fk foreign key(board_num) references board(board_num)
	constraint member_id_fk foreign key(member_id) references member(member_id)
);

insert into board_num(comments_number,board_num,member_id,comments_pw,comments_contents,comments_date) values('test','test','test','test','test','sysdate');


������ num_board_num
create sequence num_board_num
start with 1 -- ���ۼ���
increment by 1; -- ��������
minvalue -- �ּҰ�
maxvalue -- �ִ밪
nocycle -- �ݺ�����

����� member
create table member(
	member_id varchar2(100), -- ���̵�
	member_pw varchar2(100), -- ��й�ȣ
	member_name varchar2(100), -- �̸�
	member_age number, -- ����
	member_addr varchar2(100), -- �ּ���
	member_plog_own char(20), -- �÷α� ���� ����
	member_plog_count number, -- �÷α� Ƚ��
	constraint member_pk primary key (member_id)	
);

insert into member(member_id,member_pw,member_name,member_age,member_point,member_addr,member_plog_own,point,user_board,member_plog_count) values('test','test','test',1,'test','test','o',1,'test',1);

select * from member
drop table member1;
�ı�Խ��� review_board
create table review_board(
	review_number number, --�Խù� ��ȣ
	member_id varchar2(100), -- ���̵�
	notice_number varchar2(100), -- �����ȣ
	review_date date, -- �ۼ�����
	review_image varchar2(100), -- �Խù� ����
	location varchar2(100), -- ��ġ����
	contents varchar2(1000), -- �Խñ� ����
	review_title varchar2(100), -- �Խñ� ����
	checkBox varchar2(100), --�����������⸮��
	run varchar2(100), -- �Ÿ�
	constraint review_board_pk primary key (review_number),
	constraint member_id_fk foreign key(member_id) references member(member_id),
	constraint notice_number_fk foreign key(notice_number) references notice(notice_number),
);

insert into review_board(review_number,member_id,notice_number,notice_post,user_board,review_date,review_image,location,contents,review_title,checkBox,run) values(1,'test','test','test','test','sysdate','test','test','test','test','test','test');

������ num_review_board
create sequence num_review_board
start with 1 -- ���ۼ���
increment by 1; -- ��������
minvalue -- �ּҰ�
maxvalue -- �ִ밪
nocycle -- �ݺ�����

���� map
create table map(
	gps varchar2(100),
	review_number number, -- �Խù� ��ȣ
	constraint map_pk primary key (gps)
	constraint review_number_fk foreign key(review_number) references review_board(review_number)
);

insert into map(gps,review_number) values('test',1);

���� notice
create table notice(
	notice_number varchar2(100), -- �����ȣ
	notice_date date, -- �ۼ�����
	notice_title varchar2(100), -- �Խñ� ����
	notice_image varchar2(100), -- �Խñ� ����
	notice_member varchar2(100), -- ������ ���
	limited_number varchar2(100), -- ���� �ο���
	address varchar2(100), -- ���� �ּҰ�
	plog_date varchar2(100), -- �÷α� ��¥
<<<<<<< HEAD
	user_board varchar2(100), -- ����� ���� �Խù�
	constraint notice_pk primary key (notice_number),
=======
	constraint notice_pk primary key (notice_number),
	constraint notice_post_fk foreign key(notice_post) references local_governments(notice_post)
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-3/Plogging.git
);

insert into notice(notice_number,user_board,notice_post,notice_date,notice_title,notice_image,notice_member,limited_number,address,plog_date)values('test','test','test','sysdate','test','test','test','test','test','test');


������ num_notice_number
create sequence num_notice_number
start with 1 -- ���ۼ���
increment by 1; -- ��������
minvalue -- �ּҰ�
maxvalue -- �ִ밪
nocycle -- �ݺ�����

������ num_user_board
create sequence num_user_board
start with 1 -- ���ۼ���
increment by 1; -- ��������
minvalue -- �ּҰ�
maxvalue -- �ִ밪
nocycle -- �ݺ�����

���� tip_off
create table tip_off(
	tip_off_number varchar2(100), -- ������ȣ
	notice_number varchar2(100), -- ���� ��ȣ
	tip_off_location varchar2(100), -- ���� ��ġ
	tip_off_image varchar2(100), -- ���� ����
	constraint tip_off_pk primary key (tip_off_number),
	constraint notice_number_fk foreign key(notice_number) references notice(notice_number),
);

�������� trashcan
create table trashcan(
	trashcan_number varchar2(100), -- ���������ȣ
	trashcan_location varchar2(100), -- ����������ġ
	constraint trashcan_pk primary key (trashcan_number)
);

����ü local_governments
create table local_governments(
	notice_post varchar2(100), -- �����Խñ�
	point varchar2(100), -- ������ ��Ȳ
	local_id varchar2(100), -- ����ü ���̵�
	notice_member varchar2(100), -- ������ ���
	constraint local_governments_pk primary key (notice_post, point)
);

insert into(notice_post,point,local_id,notice_member) values('test','test','test','test');

������ num_local_governments
create sequence num_local_governments
start with 1 -- ���ۼ���
increment by 1; -- ��������
minvalue -- �ּҰ�
maxvalue -- �ִ밪
nocycle -- �ݺ�����

�÷α볻�� untitled
create table untitled(
	member_id varchar2(100), -- ���̵�
	notice_number varchar2(100), -- �����ȣ
	point varchar2(100), -- ������ ��Ȳ
	constraint member_id_fk foreign key(member_id) references member(member_id)
	constraint notice_number_fk foreign key(notice_number) references notice(notice_number)
	constraint point_fk foreign key(point) references local_governments(point)
);

insert into(member_id,notice_number,point) values('test','test','test');


CREATE SEQUENCE Report_num --�������̸� EX_SEQ
INCREMENT BY 1 --�������� 1
START WITH 1 --���ۼ��� 1

-- ���� ���̺� ������ �׽�Ʈ��!
create table test11(
	report_number number primary key, -- ���̵�
	lat varchar2(100), -- ����
	img varchar2(100), -- �̹���
	lng varchar2(100) -- �浵
);
select * from test11;

--test notice
create table notice(
	notice_number varchar2(100), -- �����ȣ
	tip_off_number number,
	notice_post varchar2(100), --�����Խù�
	notice_date date, -- �ۼ�����
	notice_title varchar2(100), -- �Խñ� ����
	notice_image varchar2(100), -- �Խñ� ����
	notice_member varchar2(100), -- ������ ���
	limited_number varchar2(100), -- ���� �ο���
	address varchar2(100), -- ���� �ּҰ�
	plog_date varchar2(100), -- �÷α� ��¥
	constraint notice_pk primary key (notice_number),
	constraint notice_post_fk foreign key (tip_off_number) references test11(report_number)
);
