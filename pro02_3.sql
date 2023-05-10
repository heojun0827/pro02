desc product;

-- 상품 테이블에 카테고리 번호 추가
alter table product add cate varchar2(6);

-- 카테고리 테이블 만들기
create table category(cate varchar2(6) primary key, categroup varchar2(50) not null, catename varchar2(50) not null);

-- 카테고리 데이터 추가
insert into category values('0101','교과서','대학 교과서');
insert into category values('0102','교과서','고등 교과서');
insert into category values('0103','교과서','중등 교과서');
insert into category values('0104','교과서','초등 교과서');
insert into category values('0105','교과서','기타 교과서');
insert into category values('0111','교과서','대학 참고서');
insert into category values('0112','교과서','고등 참고서');
insert into category values('0113','교과서','중등 참고서');
insert into category values('0114','교과서','초등 참고서');
insert into category values('0115','교과서','기타 참고서');
insert into category values('0201','자격증 서적','국가 자격증');
insert into category values('0202','자격증 서적','국가 기술 자격증');
insert into category values('0203','자격증 서적','민간 자격증');
insert into category values('0204','자격증 서적','국제 공인 자격증');
insert into category values('0205','자격증 서적','기타 자격증 관련서적');
insert into category values('0301','기술 서적','컴퓨터 공학');
insert into category values('0302','기술 서적','컴퓨터 활용');
insert into category values('0303','기술 서적','네트워크/보안');
insert into category values('0304','기술 서적','프로그래밍 언어');
insert into category values('0305','기술 서적','데이터베이스');
insert into category values('0306','기술 서적','사무자동화');
insert into category values('0307','기술 서적','멀티미디어/그래픽');
insert into category values('0311','기술 서적','건축/인테리어');
insert into category values('0312','기술 서적','토목/건설');
insert into category values('0313','기술 서적','환경/소방/도시/조경');
insert into category values('0314','기술 서적','자동차/운전');
insert into category values('0321','기술 서적','금속/재료');
insert into category values('0322','기술 서적','기계/역학/항공');
insert into category values('0323','기술 서적','전기/전자');
insert into category values('0324','기술 서적','농수산/축산');
insert into category values('0331','기술 서적','생활과학');
insert into category values('0332','기술 서적','의학');
insert into category values('0333','기술 서적','기타');
insert into category values('0401','국내 일반 도서','소설');
insert into category values('0402','국내 일반 도서','시/에세이');
insert into category values('0403','국내 일반 도서','작품집');
insert into category values('0404','국내 일반 도서','인문');
insert into category values('0411','국내 일반 도서','가정/육아');
insert into category values('0412','국내 일반 도서','요리');
insert into category values('0413','국내 일반 도서','건강');
insert into category values('0414','국내 일반 도서','자기계발');
insert into category values('0415','국내 일반 도서','취미/실용/스포츠');
insert into category values('0421','국내 일반 도서','경제/경영');
insert into category values('0422','국내 일반 도서','정치/사회');
insert into category values('0423','국내 일반 도서','역사/문화');
insert into category values('0424','국내 일반 도서','종교');
insert into category values('0425','국내 일반 도서','예술/대중문학');
insert into category values('0501','기타 서적','잡지');
insert into category values('0502','기타 서적','만화');
insert into category values('0511','기타 서적','서양 도서');
insert into category values('0512','기타 서적','일본 도서');
insert into category values('0513','기타 서적','중국 도서');
insert into category values('0514','기타 서적','동남아 도서');
insert into category values('0515','기타 서적','기타 해외 도서');

select * from category;

-- 데이터 변경을 위해서는 참조 무결성 해제(외래키 제거)를 해야함
ALTER TABLE buy DROP CONSTRAINT PRODUCT_FK;
ALTER TABLE basket DROP CONSTRAINT prb_fk;
ALTER TABLE payment DROP CONSTRAINT byp_fk;

-- 상품 테이블에 바뀐 상품코드와 카테고리코드를 추가
select * from product;
update product set cate='0422', pcode='04220001', pic1='./img/04220001.jpg', pic2='./img/04220001_1.jpg', pic3='./img/04220001_2.jpg' where pcode='4192';
update product set cate='0421', pcode='04210001', pic1='./img/04210001.jpg', pic2='./img/04210001_1.jpg', pic3='./img/04210001_2.jpg' where pcode='6186';
update product set cate='0404', pcode='04040001', pic1='./img/04040001.jpg', pic2='./img/04040001_1.jpg', pic3='./img/04040001_2.jpg' where pcode='5072';
update product set cate='0401', pcode='04010001', pic1='./img/04010001.jpg', pic2='./img/04010001_1.jpg', pic3='./img/04010001_2.jpg' where pcode='1352';
update product set cate='0304', pcode='03040001', pic1='./img/03040001.jpg', pic2='./img/03040001_1.jpg', pic3='./img/03040001_2.jpg' where pcode='8138';
update product set cate='0304', pcode='03040002', pic1='./img/03040002.jpg', pic2='./img/03040002_1.jpg', pic3='./img/03040002_2.jpg' where pcode='8162';

update product set pic1='img/04220001.jpg', pic2='img/04220001_1.jpg', pic3='img/04220001_2.jpg' where pcode='04220001';
update product set pic1='img/04210001.jpg', pic2='img/04210001_1.jpg', pic3='img/04210001_2.jpg' where pcode='04210001';
update product set pic1='img/04040001.jpg', pic2='img/04040001_1.jpg', pic3='img/04040001_2.jpg' where pcode='04040001';
update product set pic1='img/04010001.jpg', pic2='img/04010001_1.jpg', pic3='img/04010001_2.jpg' where pcode='04010001';
update product set pic1='img/03040001.jpg', pic2='img/03040001_1.jpg', pic3='img/03040001_2.jpg' where pcode='03040001';
update product set pic1='img/03040002.jpg', pic2='img/03040002_1.jpg', pic3='img/03040002_2.jpg' where pcode='03040002';

-- 장바구니 테이블에 담긴 상품 정보 중에서 상품코드 변경
select * from basket;
update basket set pcode='04220001' where pcode='4192';
update basket set pcode='04210001' where pcode='6186';
update basket set pcode='04040001' where pcode='5072';
update basket set pcode='04010001' where pcode='1352';
update basket set pcode='03040001' where pcode='8138';
update basket set pcode='03040002' where pcode='8162';

-- 주문 테이블에 담긴 상품 정보 중에서 상품코드 변경
select * from buy;
update buy set pcode='04220001' where pcode='4192';
update buy set pcode='04210001' where pcode='6186';
update buy set pcode='04040001' where pcode='5072';
update buy set pcode='04010001' where pcode='1352';
update buy set pcode='03040001' where pcode='8138';
update buy set pcode='03040002' where pcode='8162';

select * from payment;

commit;
