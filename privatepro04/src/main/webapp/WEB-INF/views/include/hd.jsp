<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />
<div class="header">
    <div class="home-menu pure-menu pure-menu-horizontal pure-menu-fixed">
        <a class="pure-menu-heading" href="${path1 }">스마트 해법</a>

        <ul class="pure-menu-list">
            <li class="pure-menu-item"><a href="#" class="pure-menu-link">공지사항</a></li>
            <li class="pure-menu-item"><a href="#" class="pure-menu-link">자료실</a></li>
            <li class="pure-menu-item"><a href="#" class="pure-menu-link">자유게시판</a></li>
            <li class="pure-menu-item"><a href="#" class="pure-menu-link">수강신청</a></li>
            <c:if test="${sid.equals('admin')}">
                <li class="pure-menu-item"><a href="${path1}/userList" class="pure-menu-link" style="color: red; font-weight: bold;" >관리자페이지</a></li>
            </c:if>
            <c:if test="${empty sid}">
            <li class="pure-menu-item"><a href="${path1 }/user/loginForm" class="pure-menu-link">로그인</a></li>
            <li class="pure-menu-item"><a href="${path1 }/user/agree" class="pure-menu-link">회원가입</a></li>
            </c:if>
            <c:if test="${!empty sid && !sid.equals('admin')}">
                <li class="pure-menu-item"><a href="${path1 }/user/getUser" class="pure-menu-link">마이페이지</a></li>
            </c:if>
            <c:if test="${!empty sid}">
                <li class="pure-menu-item"><a href="${path1 }/user/logout.do" class="pure-menu-link">로그아웃</a></li>
            </c:if>
            <li class="pure-menu-item"><a href="${path1 }/contact" class="pure-menu-link">오시는 길</a></li>
        </ul>
    </div>
</div>

