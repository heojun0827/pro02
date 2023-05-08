<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점검중 페이지</title>
 <!--문서 정보 등록-->
    <!--검색엔진최적화(Search Engine Optimization) :SEO-->
    <meta name="subject" content="현대모비스 벤치마킹 사이트">
    <meta name="keywords" content="현대모비스,모빌리티서비스,자동차,생산,판매 ">
    <meta name="description content="현대모비스는 내일의 모빌리티를 향한 열정적 도전으로 미래를 선도합니다.>
    
    <meta name="author" content="mr. heo">

    <!--파비콘(favicon)설정-->
    <link rel="shortcut icon" href="./images/favicon.ico">
    <!-- https://heojun0827.github.io/web1-->
    <!--오픈 그래프 설정-->
    <meta name="og:site_name" content="사이트이름">
    <meta name="og:title" content="포트폴리오 - 현대모비스">
    <meta name="og:description" content="현대모비스는 내일의 모빌리티를 향한 열정적 도전으로 미래를 선도합니다.">
    <meta name="og:url" content="https://heojun0827.github.io/web1">
    <meta name="og:image" content="./images/thumbnail.jpg">
    
    <!--기본 폰트 및 초기화 로딩-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet"> 
    <!--스타일 초기화-->
     <!--reset.css normalize.css 를 CDN 또는 다운로드 받아 link로 연결-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="stylesheet" href="<%=path %>/common.css">
    <link rel="stylesheet" href="<%=path %>/main.css">
    <style>
.vs { height:40vh; }
 .content { background-image: url("./images/top_career.jpg"); }
 #page1 .page_tit { padding-top: 60px; }
 .table { width:680px; margin:4px auto; padding-top:20px; border-top:2px solid #333; }
 th {  text-align: justify;  line-height: 0; width:180px; padding-top:10px; padding-bottom: 10px;}
 td { padding-top:10px; padding-bottom: 10px; }
 th:after {  content: "";  display: inline-block;  width: 100%; }
 th:before {  content: "";  display: inline-block;  width: 100%; }
 .lb { display:block;  font-size:20px; }
 .indata { display:block; width:400px; height:24px; line-height:24px; padding:10px; }
 .btn { display:inline-block; outline:none; border:none; border-radius:8px; margin:16px;
      text-align: center; padding:10px 20px;  cursor:pointer; }
 .btn-primary { background: -moz-linear-gradient(top, #00b7ea 0%, #009ec3 100%); 
     background: -webkit-linear-gradient(top, #00b7ea 0%,#009ec3 100%); 
     background: linear-gradient(to bottom, #00b7ea 0%,#009ec3 100%); color:#fff; }
 .btn-cancle { background: -moz-linear-gradient(top, #a90329 0%, #8f0222 44%, #6d0019 100%); 
     background: -webkit-linear-gradient(top, #a90329 0%,#8f0222 44%,#6d0019 100%); 
     background: linear-gradient(to bottom, #a90329 0%,#8f0222 44%,#6d0019 100%);
     color:#fff;
 }
 .page_tit { text-align:center; font-size:32px; }
	.title { text-align:center; }
	#tb1, .msg { width:600px; margin:0 auto;  text-align:center;  }
	.btn { margin-top:20px; }
	img { display:inline-block; max-width:100%; }
</style>
</head>
<body>
<div class="msg">
	<h1 class="title">죄송합니다. 점검중입니다.</h1>
	<img src="./images/practice01.jpg" alt="점검중입니다.">
	<button type="button" class="btn" onclick="javascript:history.back()">되돌아가기</button>
</div>
</body>
</html>