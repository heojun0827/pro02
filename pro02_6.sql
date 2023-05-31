select * from review;
select * from product;
select * from buy;
select * from category;

delete from buy where id is null;
-- 리뷰 등록하기
insert into review value (?,?,?,default,?,?); 

-- update review set ocode='10003' where rcode='10003';

-- 해당 상품의 리뷰 불러오기
select * from review where ocode=(select ocode from buy where pcode='04010001');
select * from review where ocode=(select ocode from buy where pcode=?);

-- 리뷰 수정하기
update review set resdate=sysdate, rcontent=?, rpoint=? where id=? and rcode=?

-- 리뷰 삭제하기
delete from review where rcode = ?;

-- 판매 안된 상품 
select * from product where pcode not in (select pcode from buy);

-- 카테고리 목록 불러오기
select * from category order by cate asc

-- 해당 카테고리 목록 불러오기
select * from category where categroup=? order by cate asc


-- QnA 테이블 만들기
create table qna(qno varchar2(8) primary key,
title varchar2(100), content varchar2(1000), author varchar2(20), 
resdate date default sysdate, lev number(11), parno varchar2(8), 
visited number default 0  
);

select * from qna;

-- 질문 등록하기(ADD_QNA)
insert into qna values (?,?,?,?,sysdate,1,?,0);

-- 답변 등록하기(ADD_REPLY)
insert into qna values (?,?,?,?,sysdate,2,?,0);

-- 질문 및 답변 목록 불러오기(QNA_LIST)
select * from qna order by parno desc, qno asc;

-- 해당 게시글의 질문 및 답변보기(QNA_SELECT)
select * from qna where parno=? order by qno asc;

-- 해당 게시글의 답변 또는 질문만 보기(QNA_SELECT_ONE)
select * from qna where qno=?;

-- 질문 및 답변 수정하기(UPDATE_QNA)
update qna set title=?, content=? where qno=?;

-- 질문 및 답변 삭제하기(DELETE_QNA)
delete from qna where parno=?;

-- 답변 삭제하기(DELETE_REPLY)
delete from qna where qno=?;

-- 자주하는 질문 테이블 만들기
create table faq(fno varchar2(8) primary key,
fquestion varchar2(500), fanswer varchar2(500), 
resdate date default sysdate
);

select * from faq;
