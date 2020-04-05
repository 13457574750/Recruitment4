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
<%@include file="../user/head.jsp" %>
<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<!-- 主体内容 Start -->
<div class="section section-padding">
    <div class="container">
        <div class="row mb-n5">

            <!-- 左边 Start -->
            <div class="col-lg-8 col-12 mb-5 pr-lg-5">
                <!-- 工作列表 Start -->
                <div class="job-list-wrap">
                    <c:forEach items="${applyList_}" var="applyList_">
                        <a class="job-list">
                            onclick="show('${applyList_.job.companyId}','${applyList_.companyName}','${applyList_.companyCreateTime}','${applyList_.jobId}',
                            '${applyList_.jobName}','${applyList_.jobAddress}','${applyList_.jobSalary}','${applyList_.jobEr}','${applyList_.jobEducation}',
                            '${applyList_.jobReleaseTime}','${applyList_.jobType}','${sessionScope.currUser.userId}','${sessionScope.currUser.userRealName}')">
                            <div class="company-logo col-auto">
                                <img src="${path}/assets/images/companies/company-1.png" alt="Company Logo">
                            </div>
                            <div class="salary-type col-auto order-sm-3">
                                <span class="salary-range">$${applyList_.jobSalary}</span>
                                <span class="badge badge-success"><trans>${applyList_.jobType}</trans></span>
                            </div>
                            <div class="salary-type col-auto order-sm-3">
                                <span class="btn btn-default"
                                ><trans><a
                                        href="${path}/apply/deleteApply?applyId=${applyList_.applyId}&userId=${sessionScope.currUser.userId}"
                                        onclick="return confirm('确定要删除吗？');">删除</a></trans></span>
                            </div>
                            <div class="content col">
                                <ul class="meta">
                                    <li>
                                        <h6 class="title">
                                            <trans>${applyList_.jobName}</trans>
                                        </h6>
                                    </li>
                                    <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                        <trans>发布时间：${applyList_.jobReleaseTime}</trans>
                                    </strong></li>
                                </ul>
                                <ul class="meta">
                                    <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                        <trans>${applyList_.companyName}</trans>
                                    </strong></li>
                                    <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                        <trans>${applyList_.jobAddress}</trans>
                                    </strong></li>
                                    <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                        <trans>${applyList_.jobEr}</trans>
                                    </strong></li>
                                    <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                        <trans>${applyList_.jobEducation}</trans>
                                    </strong></li>
                                </ul>
                            </div>
                        </a>
                    </c:forEach>
                </div>
                <!-- 工作列表 End -->
            </div>
            <!-- 左边 End -->
            <!-- 右边 Start -->
            <div class="col-lg-4 col-12 mb-5">

                <div class="sidebar-wrap">

                    <!-- 右3 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <form action="#">
                                <button type="button" class="btn btn-primary w-100">⬅我的投递记录</button>
                            </form>
                        </div>
                    </div>
                    <!-- 右3 End -->
                </div>
            </div>
            <!-- 右边 End -->

        </div>
    </div>
</div>
<!-- 主体内容 End -->


<%@include file="../user/foot.jsp" %>
</body>
<script type="text/javascript">
    //加载参数并传递数据给url
    function show(companyId, companyName, companyCreateTime, jobId, jobName, jobAddress,
                  jobSalary, jobEr, jobEducation, jobReleaseTime, jobType, userId, userRealName) {
        var url = "${path}/user/showAJob?companyId=" + companyId + "&companyName=" + companyName + "&companyCreateTime="
            + companyCreateTime + "&jobId=" + jobId + "&jobName=" + jobName + "&jobAddress=" + jobAddress + "&jobSalary="
            + jobSalary + "&jobSalary=" + jobSalary + "&jobEr=" + jobEr + "&jobEducation=" + jobEducation + "&jobReleaseTime="
            + jobReleaseTime + "&jobType=" + jobType + "&userId=" + userId + "&userRealName=" + userRealName;
        window.location.href = url;
    }
</script>
</html>