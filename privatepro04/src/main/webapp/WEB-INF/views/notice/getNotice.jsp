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
    <jsp:include page="../include/head.jsp" />
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

        #content { width: 100vw; overflow: hidden; margin-top: 70px; margin-bottom: 200px; padding: 0px;}
        .title { width: 450px; margin: 10px auto; font-size: 2em; font-weight: bold; text-align: center; color:#00A2FF; padding-top:36px; padding-bottom:20px; }
        .container { width: 1000px; height: 50vh; margin: 10px auto; padding: 24px; height:auto; overflow-y:auto; }
        #frm1 { width : 400px; margin: 0px auto; }

        <%--  table { width: 1000px; } --%>
        table tbody td { padding: 0px}
        table tbody tr { border-top: 1px solid; }
    </style>
</head>
<body>
<jsp:include page="../include/hd.jsp" />

<div class="content" id="content">
    <h2 class="title">공지사항</h2>
    <div class="container">
        <table>
            <tbody>
                <tr>
                    <td>${dto.title }</td>
                </tr>
                <tr>
                    <td>작성일 : ${dto.regdate } | 조회수 : ${dto.visit }</td>
                </tr>
                <tr>
                    <td style="min-height: 50vh;">${dto.content }</td>
                </tr>
            </tbody>
        </table>
        <div class="button-group">
            <a class="button" href="${path1 }/notice/list.do">글 목록</a>
            <a class="button" href="${path1 }/notice/noticeDelete?no=${dto.no }">글 삭제</a>
            <a class="button" href="${path1 }/notice/update.do?no=${dto.no }">글 수정</a>
        </div>
    </div>
</div>

<jsp:include page="../include/ft.jsp" />
</body>
</html>
