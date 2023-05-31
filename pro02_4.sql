-- 장바구니 전체 보기
select * from basket order by bnum desc; 

-- 장바구니 전체 보기2(장바구니+상품+회원)
select basket.bnum as bnum, basket.id as id, user1.name as name, basket.pcode as pcode, product.pname as pname, basket.amount as amount, product.price as price from basket, user1, product where basket.id=user1.id and basket.pcode=product.pcode;

-- 특정 회원 장바구니 조회
select * from basket where id=?;

-- 특정 회원 장바구니 조회2
select basket.bnum as bnum, basket.id as id, user1.name as name, basket.pcode as pcode, product.pname as pname, basket.amount as amount, product.price as price from basket, user1, product where basket.id=user1.id and basket.pcode=product.pcode and basket.id='kim';

-- 특정 상품 장바구니 조회
select * from basket where pcode=?;

-- 현재의 장바구니 번호 생성
select bnum from (select bnum from basket order by bnum desc) where rownum = 1;

desc basket;
