<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <title>职位详细</title>
</head>
<body>
<%@include file="../user/head.jsp" %>

<!-- 首页图片 Start -->
<div class="page-heading-section section bg-parallax" data-bg-image="${path}/assets/images/bg/bg-1.jpg"
     data-overlay="50"></div>
<!-- 首页图片 End -->

<!-- 职位列表 Start -->
<div class="section section-padding">
    <div class="container">
        <div class="row mb-n5">

            <!-- 左边 Start -->
            <!-- 职位详细信息 Start -->
            <div class="col-lg-8 col-12 mb-5 pr-lg-5">
                <div class="job-list-details">
                    <div class="job-details-head row mx-0">
                        <div class="company-logo col-auto">
                            <input type="hidden" id="userId" value="${sessionScope.currUser.userId}">
                            <input type="hidden" id="userRealName" value="${sessionScope.currUser.userRealName}">
                            <input type="hidden" id="companyId" value="${company.companyId}">
                            <input type="hidden" id="companyName" value="${company.companyName}">
                            <input type="hidden" id="companyCreateTime" value="${company.companyCreateTime}">
                            <input type="hidden" id="jobId" value="${job.jobId}">
                            <input type="hidden" id="jobName" value="${job.jobName}">
                            <input type="hidden" id="jobAddress" value="${job.jobAddress}">
                            <input type="hidden" id="jobSalary" value="${job.jobSalary}">
                            <input type="hidden" id="jobReleaseTime" value="${job.jobReleaseTime}">
                            <a href="${path}/user/showACompany?jobId=${job.jobId}&&companyId=${job.company.companyId}&&?userId=${sessionScope.currUser.userId}"><img
                                    src="${path}/assets/images/companies/company-1.png" alt="Company Logo"></a>
                        </div>
                        <div class="salary-type col-auto order-sm-3">
                            <span class="salary-range">${job.jobSalary}</span>
                            <span class="badge badge-success"><trans id="jobType">${job.jobType}</trans></span>
                        </div>
                        <div class="content col">
                            <ul class="meta">
                                <li>
                                    <h6 class="title">
                                        <trans>${job.jobName}</trans>
                                    </h6>
                                </li>
                                <li><strong class="text-primary"><i class="fa fa-map-marker"></i>
                                    <trans>发布时间：${job.jobReleaseTime}</trans>
                                </strong></li>
                            </ul>
                            <ul class="meta">
                                <li><i class="fa fa-map-marker"></i><strong class="text-primary">
                                    <trans>${company.companyName}</trans>
                                </strong></li>
                                <li><i class="fa fa-map-marker"></i><strong class="text-primary">
                                    <trans>${job.jobAddress}</trans>
                                </strong></li>
                                <li><i class="fa fa-map-marker"></i><strong class="text-primary">
                                    <trans id="jobEr">${job.jobEr}</trans>
                                </strong></li>
                                <li><i class="fa fa-map-marker"></i><strong class="text-primary">
                                    <trans id="jobEducation">${job.jobEducation}</trans>
                                </strong></li>
                            </ul>
                        </div>
                    </div>
                    <div class="job-details-body">
                        <h6 class="mb-3">
                            <trans>职位福利</trans>
                        </h6>
                        <p>
                            <trans id="jobWelfare">${job.jobWelfare}</trans>
                        </p>
                        <h6 class="mb-3 mt-4">
                            <trans>职位内容</trans>
                        </h6>
                        <ul>
                            <li>
                                <trans id="jobContent">${job.jobContent}</trans>
                            </li>
                        </ul>
                        <h6 class="mb-3 mt-4">
                            <trans>职位要求</trans>
                        </h6>
                        <ul>
                            <li>
                                <trans id="jobRequirements">${job.jobRequirements}</trans>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 职位详细信息 End -->
            <!-- 左边 End -->

            <!-- 右边 Start -->
            <div class="col-lg-4 col-12 mb-5">
                <div class="sidebar-wrap">
                    <!-- 右1 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <div class="row m-n2">
                                <div class="col-xl-auto col-lg-12 col-sm-auto col-12 p-2">
                                    <a href="#" class="d-block btn btn-outline-secondary"><i
                                            class="fa fa-heart-o mr-1"></i>
                                        <trans>收藏</trans>
                                    </a>
                                </div>
                                <div class="col-xl-auto col-lg-12 col-sm-auto col-12 p-2">
                                    <a type="button"
                                       class="d-block btn btn-primary" onclick="touDi()">
                                        <trans>投递简历</trans>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 右1 End -->

                    <!-- 右2 Start -->
                    <div class="sidebar-widget">
                        <div class="inner">
                            <h6 class="title">
                                <trans>工作概述</trans>
                            </h6>
                            <ul class="job-overview list-unstyled">
                                <li><strong>
                                    <trans>发布时间：</trans>
                                </strong>
                                    <trans>${job.jobReleaseTime}</trans>
                                </li>
                                <li><strong>
                                    <trans>空缺：</trans>
                                </strong>
                                    <trans>${job.jobNumber}人</trans>
                                </li>
                                <li><strong>
                                    <trans>就业状况：</trans>
                                </strong>
                                    <trans>${job.jobType}</trans>
                                </li>
                                <li><strong>
                                    <trans>经验：</trans>
                                </strong>
                                    <trans>${job.jobEr}</trans>
                                </li>
                                <li><strong>
                                    <trans>工作地点：</trans>
                                </strong>
                                    <trans>${job.jobAddress}</trans>
                                </li>
                                <li><strong>
                                    <trans>薪酬：</trans>
                                </strong>
                                    <trans>$${job.jobSalary}</trans>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- 右2 End -->
                </div>
            </div>
            <!-- 右边 End -->

        </div>
    </div>
</div>
<!-- 职位列表 End -->


<%@include file="../user/foot.jsp" %>

</body>
<script type="text/javascript">
    function search() {
        $("#searchForm").submit();
    }
</script>

<script type="text/javascript">
    // 投递简历
    function touDi() {
        var applyReleaseTime=new Date();//收藏时间
        var companyName = document.getElementById("companyName").value;
        var companyCreateTime = document.getElementById("companyCreateTime").value;
        var userRealName = document.getElementById("userRealName").value;
        var jobId = document.getElementById("jobId").value;
        $.ajax({
            url: "${path}/apply/addApply",
            data: {
                applyReleaseTime: applyReleaseTime,
                companyName: companyName,
                companyCreateTime: companyCreateTime,
                userRealName: userRealName,
                jobId: jobId
            },//给服务器的参数
            type: "POST",
            dataType: "json",
            success: function (data) {
                    if ("投递成功！" == data.str) {
                    alert(data.str);
                    history.go(-1);
                } else if ("请不要重复投递！" == data.str) {
                    alert("请不要重复投递！");
                } else {
                    alert("投递失败！");
                }
            }
        });
    }

    <!--收藏职位-->
    function saveJob() {
        var jobName_ = $("#jobName").val();//职位名称
        var jobAddress_ = $("#jobAddress").val();//职位地址
        var jobSalary_ = $("#jobSalary").val();//职位薪资
        var realname_ = $("#userRealName").val();//真实名字
        var saveTime = new Date();//收藏时间
        var companyName_ = $("#companyName").val();//公司的名字
        $.ajax({
            url: "${pageContext.request.contextPath}/favorite/favorite",//收藏
            data: {
                jobName: jobName_,
                jobAddress: jobAddress_,
                jobSalary: jobSalary_,
                userRealName: realname_,
                saveTime: saveTime,
                companyName: companyName_
            },//给服务器的参数
            type: "POST",
            dataType: "json",
            success: function (data) {
                if ("您还没有登录！" == data.str) {
                    alert("您还没有登录，请登录！");
                    return false;
                } else if ("收藏成功！" == data.str) {
                    alert(data.str);
                    history.go(-1);
                } else if ("请不要重复收藏！" == data.str) {
                    alert("请不要重复收藏！");
                } else {
                    alert("插入数据失败！");
                }
            }
        });
    }
</script>
</html>