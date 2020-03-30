<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>投递箱</title>
</head>
<body>
<%@include file="../user/head.jsp"%>
<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<!-- 主体内容 Start -->
<div id="tableAll">
    <table class="table table-hover table-bordered" border="1">
        <tr class="info">
            <h3>投递记录</h3>
        </tr>
        <tr>
            <th>职位名称</th>
            <th>工作地址</th>
            <th>薪资</th>
            <th>公司名称</th>
            <th>投递时间</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${applyList_}" var="applyList_">
            <tr class="table table-hover" value="${applyList_.applyId}">
                <td>${applyList_.jobName}</td>
                <td>${applyList_.jobAddress }</td>
                <td>${applyList_.jobSalary}</td>
                <td>${applyList_.companyName}</td>
                <td><fmt:formatDate value="${applyList_.jobReleaseTime}" pattern="yyyy-MM-dd"/></td>
                <td>
                    <a href="${path}/apply/deleteApply?applyId=${applyList_.applyId}&& userId=${sessionScope.currUser.userId}" onclick="return confirm('确定要删除吗？');"
                       class="btn btn-default">删除</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
<!-- 主体内容 End -->


<%@include file="../user/foot.jsp"%>
</body>
</html>