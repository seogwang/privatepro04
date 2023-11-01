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
    <title>공지사항 수정</title>
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
        th { width: 80px; }
        input { width: 80px; float:left; margin-bottom: 0px; }

        #contents { width: 100vw; overflow: hidden; margin-top: 70px; margin-bottom: 200px; padding: 0px;}
        .title { width: 450px; margin: 10px auto; font-size: 2em; font-weight: bold; text-align: center; color:#00A2FF; padding-top:36px; padding-bottom:20px; }
        .container { width: 1000px; height: 50vh; margin: 10px auto; padding: 24px; height:auto; overflow-y:auto; }
        #frm1 { width : 400px; margin: 0px auto; }

        .button { margin: 0 0 1rem 1rem; }
    </style>

    <script type="text/javascript" src="${path1 }/resources/ckeditor/ckeditor.js"></script>
</head>
<body>
<jsp:include page="../include/hd.jsp" />

<div class="content1" id="contents1">
    <h2 class="title1">공지사항 수정</h2>
    <div class="container1">
        <form action="${path1 }/notice/noticeUpdate" method="post">
            <table>
                <tbody>
                <tr>
                    <th>글 제목</th>
                    <td>
                        <input type="hidden" name="no" id="no" value="${dto.no }" >
                        <input type="text" name="title" id="title" value="${dto. title }" maxlength="98" required>
                    </td>
                </tr>
                <tr>
                    <th>글 내용</th>
                    <td>
                        <textarea name="content" id="content" rows="8" cols="100" maxlength="800" required>${dto.content }</textarea>
                        <script>
                            CKEDITOR.replace('content',	{filebrowserUploadUrl:'${path1}/notice/imageUpload.do'});
                        </script>
                    </td>
                </tr>
                <tr>
                    <th></th>
                    <td>
                        <input type="submit" class="button" value="글 등록" >
                        <a class="button" href="${path1 }/notice/list.do">글 목록</a>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>

<jsp:include page="../include/ft.jsp" />
</body>
</html>
