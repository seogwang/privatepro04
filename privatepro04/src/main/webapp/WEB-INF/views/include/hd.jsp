<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />
<div class="top-bar" id="responsive-menu">
    <div class="top-bar-left">
        <ul class="dropdown menu" data-dropdown-menu>
            <li class="menu-text"><a href="${path1 }">스마트 해법</a></li>
        </ul>
    </div>
    <div class="top-bar-right">
        <ul class="dropdown menu" data-dropdown-menu>
            <li><a href="${path1 }/notice/list.do">공지사항</a></li>
            <li><a href="#0">자료실</a></li>
            <li><a href="#0">수강신청</a></li>
            <c:if test="${sid.equals('admin')}">
                <li><a href="${path1}/admin/">관리자페이지</a></li>
            </c:if>
            <c:if test="${!empty sid && !sid.equals('admin')}">
                <li><a href="${path1 }/user/getUser">마이페이지</a></li>
            </c:if>
            <c:if test="${empty sid}">
                <li><a href="${path1 }/user/loginForm">로그인</a></li>
                <li><a href="${path1 }/user/agree">회원가입</a></li>
            </c:if>
            <c:if test="${!empty sid}">
                <li><a href="${path1 }/user/logout.do">로그아웃</a></li>
            </c:if>
            <li><a href="${path1 }/contact">오시는 길</a></li>
        </ul>
    </div>
</div>

<%--<div class="header">--%>
<%--    <div class="home-menu pure-menu pure-menu-horizontal pure-menu-fixed">--%>
<%--        <a class="pure-menu-heading" href="${path1 }">스마트 해법</a>--%>

<%--        <ul class="pure-menu-list">--%>
<%--            <li class="pure-menu-item"><a href="${path1 }/notice/list.do" class="pure-menu-link">공지사항</a></li>--%>
<%--            <li class="pure-menu-item"><a href="#" class="pure-menu-link">자료실</a></li>--%>
<%--            <li class="pure-menu-item"><a href="${path1 }/free/list.do" class="pure-menu-link">자유게시판</a></li>--%>
<%--            <li class="pure-menu-item"><a href="#" class="pure-menu-link">수강신청</a></li>--%>
<%--            <c:if test="${sid.equals('admin')}">--%>
<%--                <li class="pure-menu-item"><a href="${path1}/admin/" class="pure-menu-link" style="color: red; font-weight: bold;" >관리자페이지</a></li>--%>
<%--            </c:if>--%>
<%--            <c:if test="${empty sid}">--%>
<%--            <li class="pure-menu-item"><a href="${path1 }/user/loginForm" class="pure-menu-link">로그인</a></li>--%>
<%--            <li class="pure-menu-item"><a href="${path1 }/user/agree" class="pure-menu-link">회원가입</a></li>--%>
<%--            </c:if>--%>
<%--            <c:if test="${!empty sid && !sid.equals('admin')}">--%>
<%--                <li class="pure-menu-item"><a href="${path1 }/user/getUser" class="pure-menu-link">마이페이지</a></li>--%>
<%--            </c:if>--%>
<%--            <c:if test="${!empty sid}">--%>
<%--                <li class="pure-menu-item"><a href="${path1 }/user/logout.do" class="pure-menu-link">로그아웃</a></li>--%>
<%--            </c:if>--%>
<%--            <li class="pure-menu-item"><a href="${path1 }/contact" class="pure-menu-link">오시는 길</a></li>--%>
<%--        </ul>--%>
<%--    </div>--%>
<%--</div>--%>

