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
        html, body { position: relative; height: 100%; }

        body { background: #eee; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px;
            color: #000; margin: 0; padding: 0; }

        .swiper { width: 100%; height: 100%; }

        .swiper-slide { text-align: center; font-size: 18px; background: #fff;
            display: flex; justify-content: center; align-items: center; }

        .swiper-slide img { display: block; width: 100%; height: 100%;
            object-fit: cover; object-position: 0px -80px; }

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
    <jsp:include page="./include/ft.jsp" />
</body>
</html>