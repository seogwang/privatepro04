<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항 목록</title>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation-prototype.min.css">
    <link href='https://cdnjs.cloudflare.com/ajax/libs/foundicons/3.0.0/foundation-icons.css' rel='stylesheet' type='text/css'>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/motion-ui/1.2.3/motion-ui.min.js"></script>
    <style>
        td { height: 40px; margin: 0px;}
        input { width:400px; float:left; margin-bottom: 0px; }

        table tbody td { padding: 0px; }

        input[type="date"]:not(.has-value):before{ color: #cacaca; content: attr(placeholder); }
    </style>
</head>
<body>
<jsp:include page="../include/hd.jsp" />

<div class="content1" id="content1">
    <div class="content_wrap1">
        <h2 class="title1">공지사항</h2>
        <div class="container1">
            <div class="button-group">
                <form action="${path1 }/notice/list.do" method="get" class="field has-addons has-addons-right">
                    <p class="control">
                            <span class="select">
                                <select id="type" name="type">
                                    <option value="title">제목</option>
                                    <option value="content">내용</option>
                                </select>
                            </span>
                    </p>
                    <p class="control">
                        <input class="input" type="text" id="keyword" name="keyword" placeholder="검색어를 입력하세요" value="${keyword }">
                    </p>
                    <p class="control">
                        <input type="submit" class="button is-mainColor" value="검색" />
                    </p>
                </form>
            </div>
            <c:if test='${sid eq "admin"}'>
                <div class="button-group">
                    <a class="button" href="${path1 }/notice/insert.do">공지사항 등록</a>
                </div>
            </c:if>
            <table>
                <thead>
                <tr>
                    <th style="width:10%; text-align: center; ">글번호</th>
                    <th style="width:60%; ">제목</th>
                    <th style="width:10%; ">작성일</th>
                    <th style="width:10%; text-align: center; ">조회수</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${noticeList }" var="notice" varStatus="status">
                    <tr>
                        <td style="text-align: center; ">${notice.no }</td>
                        <td><a href="${path1}/notice/getNotice?no=${notice.no }">${notice.title }</a></td>
                        <td>
                            <fmt:parseDate value="${notice.resdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
                            <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
                        </td>
                        <td style="text-align: center; ">${notice.visit }</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <nav aria-label="pagination">
            <ul class="pagination">
                <c:if test="${curPage > page.pageCount }">
                    <li class="pagination-previous"><a href="${path1 }/notice/list.do?page=${page.blockStartNum - 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-previous">Previous<span class="show-for-sr">page</span></a></li>
                </c:if>
                <c:forEach var="i" begin="${page.blockStartNum }" end="${page.blockLastNum }">
                    <c:choose>
                        <c:when test="${i == curPage }">
                            <li>
                                <a href="${path1 }/notice/list.do?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="current" aria-label="Page ${i }" >${i }</a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li>
                                <a href="${path1 }/notice/list.do?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" aria-label="Page ${i }" >${i }</a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <c:if test="${page.blockLastNum < page.totalPageCount }">
                <li class="pagination-next"><a href="${path1 }/notice/list.do?page=${page.blockLastNum + 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" aria-label="Next page">Next <span class="show-for-sr">page</span></a>
                </c:if>
            </ul>
        </nav>
    </div>
</div>

<jsp:include page="../include/ft.jsp" />
</body>
</html>
