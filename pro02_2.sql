-- 비밀번호 암호화
desc user1;
select * from user1;
update user1 set pw='MZrpfhUOFVPiJphP7buzlfEvtsXoCteJSUitCbn9zHiiZyUQ8VaoNbZDXGvzY+2uG3xXXg==' where id='kim';
update user1 set pw='cB+uh2IH0cOu4wcTjEUTxPW+WfmomRH+yNZVi7mrZAjtdiwWUVeNYE5jMWg+X79beij8tw==' where id='admin';
update user1 set pw='DAJsl2niQn70oJPLPS9VrLmdr+OjIgX8wxWnevgcjvNLY+ZUFURZbgXdcI7T8jWmEczvGQ==' where pw='1004';
update user1 set pw='3DfdxozvxmRML4QahMEqQOWUU6D16JC9bnADocU5yAG3JUjBzcyJAxNDWEo293CkI4oAng==' where pw='1111';
update user1 set pw='ENzG4FyFi12HbS0tTgs0iwLOAI9iJY0pQMwT/1LVmSAKz/j9RTfyu7OVAJW4nJLc9XjUYA==' where pw='7979';
update user1 set pw='+MHycdRAgUIZ4KtrhwTIuxXzFiPLtlIsf5CSshSpAUXmwrZQLRbzjG+K9d8Pn5mGiHo8Yw==' where pw='4321';
update user1 set pw='dIOQfwrOY+/Gy+10aw0iGciV/uM+LtIoKu00XliBPhoXt9M/6F3wLSWXqKVPOfFc7Mfqfw==' where pw='3333';
update user1 set pw='5wQ9XQAEhgw/x06mXLyX9yvofzxY4J4Jyodf9M699g4PVw2bfP2aQyLpU9ZttvSYGLStRg==' where pw='2222';


-- 회원 로그인
select * form user1 where id=? and pw=?;

-- 회원 로그인 시 방문횟수 증가
update user1 set visted=visted+1 where id=?

-- 아이디 중복 체크
select * from user1 where id=?

-- 회원가입
insert into user1(id, pw, name, tel, addr, email) values (?,?,?,?,?,?,?);

-- 회원정보수정
update user1 set pw=?, name=?, email=?, tel=?, addr=? where id=?;

-- 회원 탈퇴
delete from user1 where id=?;


select * from user1;

select * from user1 order by regdate desc;

select * from user1 where rownum >= 1 and rownum <= 5;

select * from user1 order by regdate desc where rownum >= 1 and rownum <= 5;

-- 회원 목록을 페이징 처리하는 경우 startNum과 endNum을 받아서 rownum으로 처리
select * from (select * from user1 order by regdate desc) where rownum >= 1 and rownum <= 5;


