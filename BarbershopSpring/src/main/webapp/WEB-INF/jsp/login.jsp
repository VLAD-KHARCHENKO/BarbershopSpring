<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="${locale}"/>
<fmt:setBundle basename="${bundle}"/>

<html class="no-js" lang="zxx">

<head>

    <title>Barber</title>
    <c:import url="templ/head-part.jsp"/>

</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- header-start -->
<!--<c:import url="templ/header-part.jsp"/>-->

<!-- header-end -->


<div class="bradcam_area breadcam_bg overlay2">
    <h3>Registration</h3>
</div>
<!-- bradcam_area_end -->

<form id="login-form" action="login" method="post">
    <div class="popup_box ">
        <div class="popup_inner">
            <h3>Login</h3>

            <div class="row">

                <c:if test="${not empty notification}">
                    <c:out value ="${notification}" />
                </c:if>


                <div class="row">
                    <input type="email" type="text" name="login" placeholder="Your email">
                    <input type="password"  name="password"  placeholder="Password">

                </div>

                    <button type="submit" class="boxed-btn3">Login</button>
                <div class="col-xl-12"><a href="registration"><fmt:message key="registration"/></a>  </div>
                </div>
            </div>
        </div>
    </div>
</form>

<c:import url="templ/footer-part.jsp"/>
<!-- link that opens popup -->
<c:import url="templ/form-part.jsp"/>

<!-- form itself end -->

<c:import url="templ/script-part.jsp"/>

</body>

</html>