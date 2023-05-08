-- 모든 컬럼 검색 쿼리
select * from notice;

-- 특정 레코드 검색 쿼리
select * from notice where idx=?;

-- 레코드 추가
insert into notice values (noti_seq.nextval, ?, ?, ?, ?, default);

-- 레코드 갱신 쿼리
update notice set title=?, content=?, file1=?, resdate=sysdate where idx=?;

-- 레코드 삭제 쿼리
delete from notice where idx=?;