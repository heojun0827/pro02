select * from buy;

select * from payment;

-- 판매 코드 생성
select ocode from (select * from buy order by ocode desc) where rownum = 1;

-- 결제 코드 생성
select pnum from (select * from payment order by pnum desc) where rownum = 1;

-- 판매 정보 등록
insert into buy values (?,?,?,?,?,default,?,?,?,?,?);

-- 결제 정보 등록
insert into payment values (?,?,?,?,?,?,default);

-- 판매시 특정 장바구니 정보 삭제
delete from basket where bnum=?;

-- 판매시 제품 정보 수량 변경
update product set amount=amount-? where pcode=?;

-- 판매 정보 목록 로딩
select * from buy where id=? order by ocode desc

-- 특정 판매 정보 로딩

-- 결제 정보 목록 로딩

-- 특정 결제 정보 로딩

-- 판매+결제 목록 로딩
select buy.ocode as ocode, buy.id as id, buy.pcode as pcode, buy.amount as amount, 
buy.price as price, buy.odate as odate, buy.ostate as ostate, buy.tel as tel, 
buy.dname as dname, buy.addr as addr, buy.dcode as dcode, 
payment.pnum as pnum, payment.ptype as ptype, payment.ptnum as ptnum from buy, payment 
where payment.ocode=buy.ocode order by buy.ocode;

-- 특정 사용자의 판매+결제 목록 로딩
select buy.ocode as ocode, buy.id as id, buy.pcode as pcode, buy.amount as amount, 
buy.price as price, buy.odate as odate, buy.ostate as ostate, buy.tel as tel, 
buy.dname as dname, buy.addr as addr, buy.dcode as dcode, 
payment.pnum as pnum, payment.ptype as ptype, payment.ptnum as ptnum from buy, payment 
where payment.ocode=buy.ocode and id=? order by buy.ocode;

select buy.ocode as ocode, buy.id as id, buy.pcode as pcode, buy.amount as amount, buy.price as price, buy.odate as odate, buy.ostate as ostate, buy.tel as tel, buy.dname as dname, buy.addr as addr, buy.dcode as dcode, payment.pnum as pnum, payment.ptype as ptype, payment.ptnum as ptnum from buy, payment where payment.ocode=buy.ocode and buy.id='kfm' order by buy.ocode;


-- 특정 판매+결제 정보 로딩
select buy.ocode as ocode, buy.id as id, buy.pcode as pcode, buy.amount as amount, 
buy.price as price, buy.odate as odate, buy.ostate as ostate, buy.tel as tel, 
buy.dname as dname, buy.addr as addr, buy.dcode as dcode, 
payment.pnum as pnum, payment.ptype as ptype, payment.ptnum as ptnum from buy, payment 
where payment.ocode=buy.ocode and buy.ocode=?


-- 특정 사용자의 특정 판매+결제 목록 로딩
select buy.ocode as ocode, buy.id as id, buy.pcode as pcode, buy.amount as amount, 
buy.price as price, buy.odate as odate, buy.ostate as ostate, buy.tel as tel, 
buy.dname as dname, buy.addr as addr, buy.dcode as dcode, 
payment.pnum as pnum, payment.ptype as ptype, payment.ptnum as ptnum from buy, payment 
where payment.ocode=buy.ocode and id=? and buy.ocode=?;

-- 구매완료
update buy set ostate='구매완료' where ocode='10003';

select * from product where pcode = (select pcode from buy where ocode='10003');

update buy set ostate='배송전', dname=null, dcode=null where ocode='10006';   


