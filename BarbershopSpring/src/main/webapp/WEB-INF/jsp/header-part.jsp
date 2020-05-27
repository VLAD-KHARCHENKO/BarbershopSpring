<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!-- header-start -->
<header>
    <div class="header-area ">
        <div id="sticky-header" class="main-header-area">
            <div class="container-fluid p-0">
                <div class="row align-items-center no-gutters">
                    <div class="col-xl-3 col-lg-3">
                        <div class="logo-img">
                            <a href="index">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="main-menu  d-none d-lg-block">
                            <nav>
                                <ul id="navigation">

                                    <c:set var="name" value='${activeTab}'/>
                                    <li><a <c:if test="${name == 'home'}">class="active"</c:if> href=""><spring:message code="home"/></a>

                                    <li><a <c:if test="${name == 'about'}">class="active"</c:if> href="about"><spring:message code="about"/></a>

                                    <li><a <c:if test="${name == 'service'}">class="active"</c:if> href="service"><spring:message code="service"/></a>

                                    <li><a  <c:if test="${name == 'blog'}">class="active"</c:if> href="#"><spring:message code="blog"/><i class="ti-angle-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="blog"><spring:message code="blog"/></a></li>
                                        <li><a href="single-blog"><spring:message code="single.blog"/></a></li>
                                    </ul>
                                    </li>
                                    <li><a  <c:if test="${name == 'pages'}">class="active"</c:if> href="#"><spring:message code="pages"/></a>
                                    <ul class="submenu">
                                        <li><a href="elements"><spring:message code="elements"/><i class="ti-angle-down"></i></a></li>
                                    </ul>
                                    </li>
                                    <li><a <c:if test="${name == 'contact'}">class="active"</c:if> href="contact"><spring:message code="contact"/></a>
                                    <li><a <c:if test="${name == 'feedback'}">class="active"</c:if>><a href="feedback"><spring:message code="feedback"/></a>


                                    <li>   <c:choose>
                                        <c:when test="${not empty user}">
                                            <a href="logout">
                                                <spring:message code="logout"/>
                                            </a>
                                        </c:when>
                                        <c:otherwise>
                                   <a href="login"><spring:message code="login"/></a>
                                        </c:otherwise>
                                    </c:choose></li>





                                    <li><c:choose>
                                        <c:when test="${locale=='uk_UA'}"><a href="language?locale=en" class="text-uppercase">en</a>  </c:when>
                                        <c:otherwise>
                                    <a href="language?locale=uk_UA" class="text-uppercase">ua</a>
                                        </c:otherwise>
                                    </c:choose></li>


                                </ul>

                            </nav>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                        <div class="book_room">
                            <div class="book_btn d-none d-lg-block">
                                <a href="makeAnAppointment"><spring:message code="make.an.appointment"/></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</header>
<!-- header-end -->