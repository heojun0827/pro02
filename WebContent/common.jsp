<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="common_path" value="${pageContext.request.contextPath }" />  
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--문서 정보 등록-->
<!--검색엔진최적화(Search Engine Optimization) :SEO-->
<meta name="subject" content="더조은 편집샵">
<meta name="keywords" content="더조은 편집샵, 옷, 상의, 반팔티, 후드티, 긴팔티">
<meta name="description" content="더조은 편집샵은 옷, 상의, 반팔티, 후드티, 긴팔티">
<meta name="author" content="mr. heo">

<!-- 파비콘(favicon) 설정 -->
<link rel="shortcut icon" href="${common_path }/img/favicon.ico">
   
<!-- https://heojun0827.github.io/web1-->
<!-- 오픈그래프 설정 -->
<meta name="og:site_name" content="더조은편집">
<meta name="og:title" content="더조은편집샵">
<meta name="og:description" content="더조은 편집샵은 옷, 상의, 반팔티, 후드티, 긴팔티등을 판매합니다.">
<meta name="og:url" content="https://www.myshop.com">
<meta name="og:image" content="${common_path }/img/thumbnail.jpg">  
   
<!-- 기본 폰트 및 초기화 로딩 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Noto+Sans+KR&display=swap" rel="stylesheet">

<<!-- 스타일 초기화 -->
<!-- reset.css나 normalize.css를 CDN 또는 다운로드 받아 link로 연결 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>  

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
/* 마우스 롤 오버시 스타일 */
.dropdown-toggle::after { transition: transform 0.15s linear;}
.show.dropdown .dropdown-toggle::after {transform: translateY(3px);}
.dropdown-menu {margin-top: 0;} /* hover 메뉴때문에 넣음 */
</style>
<script>
/* 마우스 롤 오버시 스크립트 */
$(document).ready(function(){
	var $dropdown = $(".navbar-nav .dropdown");
	var $dropdownToggle = $(".dropdown-toggle");
	var $dropdownMenu = $(".dropdown-menu");
	var showClass = "show";
	$(window).on("load resize", function() {
		if (this.matchMedia("(min-width: 768px)").matches) {
			$dropdown.hover(
				function() {
					var $this = $(this);
					$this.addClass(showClass);
					$this.find($dropdownToggle).attr("aria-expanded", "true");
					$this.find($dropdownMenu).addClass(showClass);
				},
				function() {
					var $this = $(this);
					$this.removeClass(showClass);
					$this.find($dropdownToggle).attr("aria-expanded", "false");
					$this.find($dropdownMenu).removeClass(showClass);
				}
			);
		} else {
			$dropdown.off("mouseenter mouseleave");
		}
	});
});
</script>
