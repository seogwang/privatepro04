<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인</title>
    <jsp:include page="./include/head.jsp" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />

    <style>
        <%--
        .contents { clear:both; margin-top: 70px; }

        .banner_box li .bn_bg { width:100vw; height:600px;
            background-repeat:no-repeat; background-position: center center; background-size: cover;
            position: absolute; left: 0; top: 0; z-index:10; }
        .banner_box li.active .bn_bg { z-index:11 }

        .bn_tit { position: absolute; top:180px; left:100px; z-index:20; font-weight: 300; font-size: 60px; line-height: 1.3; }

        .banner_box li.banner1 { background-image: url("${path1 }/resources/images/banner1.jpg") }
        .banner_box li.banner2 { background-image: url("${path1 }/resources/images/banner2.jpg") }

        .banner_box li.active { visibility: visible; opacity: 1; }

        .btn_box li .bn_btn { display: block; width: 12px; height: 12px;
            background-color: rgba(255,255,255,0.8); border: 2px solid blue;
            position: absolute; top:100px; left:100px; z-index: 30;
            cursor:pointer; border-radius: 50%; }
        .btn_box li.banner2 bn_btn { left: 132px; }
        --%>
        html,
        body { position: relative; height: 93%; }

        body { background: #eee; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px;
            color: #000; margin: 0; padding: 0; }

        .swiper { width: 100%; height: 93%; }

        .swiper-slide { text-align: center; font-size: 18px; background: #fff;
            display: flex; justify-content: center; align-items: center; }

        .swiper-slide img { display: block; width: 100%; height: 93%;
            object-fit: cover; object-position: 0px -100px; }

        .slide_wrap img { position: absolute; top:0px; left: 0px; z-index: 1; }
        .slide_wrap h2 { position: absolute; top:20%; left: 10%; z-index: 2; font-size: 3em; line-height: 1.5em }
    </style>
</head>
<body>
    <jsp:include page="./include/hd.jsp" />

    <!-- Swiper -->
    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="slide_wrap">
                    <img class="bg1" src="${path1 }/resources/images/banner1.jpg" />
                    <h2>스마트 해법!<br>지금 신청하세요!</h2>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="slide_wrap">
                    <img class="bg2" src="${path1 }/resources/images/banner2.jpg" />
                    <h2><br>시범 강의 오픈 중!</h2>
                </div>
            </div>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
    </div>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".mySwiper", {
            spaceBetween: 30,
            centeredSlides: true,
            autoplay: {
                delay: 4500,
                disableOnInteraction: false,
            },
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
        });
    </script>

    <%--
    <div class="contents" id="contents">
        <figure class="banner">
            <ul class="banner_box">
                <li class="banner1 active">
                    <input type="radio" name="bn_ra" id="bn_ra1" class="bn_ra" checked>
                    <div class="bn_bg"></div>
                    <h2 class="bn_tit">로라 & 피터 쌤과 <br> 실력 쑥쑥 성적 수직 상승! <br> 지금 신청하세요! </h2>
                </li>
                <li class="banner2">
                    <input type="radio" name="bn_ra" id="bn_ra2" class="bn_ra">
                    <div class="bn_bg"></div>
                    <h2 class="bn_tit">마감 임박!! <br> 지금 수강 신청하세요!</h2>
                </li>
            </ul>
            <ul class="btn_box">
                <li class="banner1 active"><label for="bn_ra1" class="bn_btn"></label></li>
                <li class="banner2"><label for="bn_ra2" class="bn_btn"></label></li>
            </ul>
            <button type="button" class="play_btn"></button>
        </figure>
    </div>
    --%>
    <jsp:include page="./include/ft.jsp" />
</body>
</html>