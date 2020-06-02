<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html class="no-js" lang="zxx">

<head>

	<title>Barber</title>
	<c:import url="head-part.jsp"/>

</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- header-start -->
<c:import url="header-part.jsp"/>

<!-- header-end -->


<div class="bradcam_area breadcam_bg overlay2">
	<h3>Feedback</h3>
</div>
<!-- bradcam_area_end -->

<form id="login-form" action="feedback" method="post">
	<div class="popup_box ">
		<div class="popup_inner">
			<h3>Form Element</h3>

			<div class="row">

				<c:if test="${not empty notification}">
					<c:out value ="${notification}" />
				</c:if>


				<div class="row">
					<textarea class="single-textarea" name="message"  placeholder="Message"
							  onblur="this.placeholder = 'Message'" required></textarea>

				</div>

				<button type="submit" class="boxed-btn3">Send Feedback</button>

		</div>
	</div>
	</div>
</form>

<c:import url="footer-part.jsp"/>
<!-- link that opens popup -->
<c:import url="form-part.jsp"/>

<!-- form itself end -->

<c:import url="script-part.jsp"/>

</body>

