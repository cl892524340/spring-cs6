<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>id</th>
        <th>sys_username</th>
    </tr>
    <c:forEach items="${info.list}" var="userinfo">
        <tr>
            <td>${userinfo.id}</td>
            <td>${userinfo.sysUsername}</td>
        </tr>
    </c:forEach>
</table>

<a href="index?pageNum=1&pageSize=${info.pageSize}">首页</a>
<a href="index?pageNum=${info.prePage}&pageSize=${info.pageSize}">上一页</a>
<c:forEach items="${info.navigatepageNums}" var="in">
    <a href="index?pageNum=${in}&pageSize=${info.pageSize}">${in}</a>
</c:forEach>
<a href="index?pageNum=${info.nextPage}&pageSize=${info.pageSize}">下一页</a>
<a href="index?pageNum=${info.pages}&pageSize=${info.pageSize}">尾页</a>
</body>
</html>
