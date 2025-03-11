<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 25. 3. 4.
  Time: 오전 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>TalkHub</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
</head>
<body>
<div class="index">
    <div style="padding: 15px">
        <h1>TalkHub</h1>
        <h3 style="font-weight: lighter">자유롭게 소통하는 공간</h3>
        <p style="margin-bottom: 100px;">
            토크허브에서 다양한 생각을 나누고, 새로운 인사이트를 얻어보세요.
        </p>
        <c:choose>
            <c:when test="${authentication}">
                <div>
                    <a href="${pageContext.request.contextPath}/user/profile">마이페이지</a> |
                    <a href="${pageContext.request.contextPath}/user/logout-proceed">로그아웃</a>
                </div>
            </c:when>
            <c:otherwise>
                <div>
                    <a href="${pageContext.request.contextPath}/user/login">로그인</a> |
                    <a href="${pageContext.request.contextPath}/user/join">회원가입</a>
                </div>
            </c:otherwise>
        </c:choose>
        <p style="text-decoration: underline">
            지금 <b class="color-primary">TalkHub</b> 에서 대화를 시작해보세요!
        </p>
    </div>
</div>
</body>
</html>
