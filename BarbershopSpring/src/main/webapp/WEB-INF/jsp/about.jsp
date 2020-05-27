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

    <!-- bradcam_area_start -->
    <div class="bradcam_area breadcam_bg overlay2">
            <h3><spring:message code="about_us"/></h3>
        </div>
        <!-- bradcam_area_end -->

    <!-- about_area_start -->
    <div class="about_area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 col-lg-6">
                    <div class="about_thumb">
                        <img src="static/img/about/about_lft.png" alt="">
                        <div class="opening_hour text-center">
                                <i class="flaticon-clock"></i>
                                <h3><spring:message code="opening_hour"/></h3>
                                <p><spring:message code="mon_fri"/> (9.00-19.00) <br>
                                    <spring:message code="sat"/> (10.00-16.00)</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="about_info">
                        <div class="section_title mb-20px">
                            <span><spring:message code="about_us"/></span>
                            <h3><spring:message code="experienced"/><br>
                                <spring:message code="traditional"/> <br>
                                <spring:message code="barber_shop"/> </h3>
                        </div>
                        <p> <spring:message code="inspires"/>   <br>
                            <spring:message code="aboutWe"/>  <br>
                            <spring:message code="changing"/></p>
                        <a href="#" class="boxed-btn3"><spring:message code="learn.more"/></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- about_area_end -->

    <!-- gallery_area_start -->
    <div class="gallery_area minus-padding">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section_title2 text-center mb-90">
                        <i class="flaticon-scissors"></i>
                        <h3> <spring:message code="our_gallery"/></h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="gallery_active owl-carousel">
                        <div class="single_gallery">
                            <div class="thumb">
                                <img src="static/img/gallery/1.png" alt="">
                                <div class="image_hover">
                                    <a class="popup-image" href="static/img/gallery/1.png">
                                        <i class="ti-plus"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="single_gallery">
                            <div class="thumb">
                                <img src="static/img/gallery/2.png" alt="">
                                <div class="image_hover">
                                    <a class="popup-image" href="static/img/gallery/2.png">
                                        <i class="ti-plus"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="single_gallery">
                            <div class="thumb">
                                <img src="static/img/gallery/3.png" alt="">
                                <div class="image_hover">
                                    <a class="popup-image" href="static/img/gallery/3.png">
                                        <i class="ti-plus"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="single_gallery">
                            <div class="thumb">
                                <img src="static/img/gallery/1.png" alt="">
                                <div class="image_hover">
                                    <a class="popup-image" href="static/img/gallery/1.png">
                                        <i class="ti-plus"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="single_gallery">
                            <div class="thumb">
                                <img src="static/img/gallery/2.png" alt="">
                                <div class="image_hover">
                                    <a class="popup-image" href="static/img/gallery/2.png">
                                        <i class="ti-plus"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="single_gallery">
                            <div class="thumb">
                                <img src="static/img/gallery/3.png" alt="">
                                <div class="image_hover">
                                    <a class="popup-image" href="static/img/gallery/3.png">
                                        <i class="ti-plus"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- gallery_area_end -->

    <!-- video_area_start -->
    <div class="video_area">
        <div class="container-fluid p-0">
            <div class="row align-items-center no-gutters">
                <div class="col-xl-6 col-lg-6">
                    <div class="video_info">
                        <div class="about_info">
                            <div class="section_title mb-20px">
                                <span><spring:message code="how.we.work"/></span>
                                <h3><spring:message code="watch"/> <br>
                                    <spring:message code="how"/> </h3>
                            </div>
                            <p> <spring:message code="inspires"/>   <br>
                                <spring:message code="aboutWe"/>  <br>
                                <spring:message code="changing"/></p>
                            <a href="#" class="boxed-btn3"> <spring:message code="book"/></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="video_thumb">
                        <div class="video_thumb_inner">
                            <img src="static/img/gallery/video.png" alt="">
                            <a href="https://www.youtube.com/watch?v=I4NcwG-zusE" class="popup-video">
                                <i class="fa fa-play"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- video_area_end -->

    <!-- cutter_muster_start -->
    <div class="cutter_muster">
        <div class="container">
                <div class="row">
                        <div class="col-xl-12">
                            <div class="section_title2 text-center mb-90">
                                <i class="flaticon-scissors"></i>
                                <h3> <spring:message code="our.cutter"/></h3>
                            </div>
                        </div>
                    </div>
            <div class="row">
                <div class="col-xl-3 col-md-6 col-lg-3">
                    <div class="single_master">
                        <div class="thumb">
                            <img src="static/img/team/1.png" alt="">
                            <div class="social_link">
                                <a href="#"><i class="fa fa-envelope"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                        <div class="master_name text-center">
                            <h3><spring:message code="macau"/></h3>
                            <p><spring:message code="massage"/></p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 col-lg-3">
                    <div class="single_master">
                        <div class="thumb">
                            <img src="static/img/team/2.png" alt="">
                            <div class="social_link">
                                <a href="#"><i class="fa fa-envelope"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                        <div class="master_name text-center">
                            <h3><spring:message code="dan"/></h3>
                            <p><spring:message code="mens.cut"/></p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 col-lg-3">
                    <div class="single_master">
                        <div class="thumb">
                            <img src="static/img/team/3.png" alt="">
                            <div class="social_link">
                                <a href="#"><i class="fa fa-envelope"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                        <div class="master_name text-center">
                            <h3><spring:message code="luka"/> </h3>
                            <p><spring:message code="mens.cut"/></p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6 col-lg-3">
                    <div class="single_master">
                        <div class="thumb">
                            <img src="static/img/team/4.png" alt="">
                            <div class="social_link">
                                <a href="#"><i class="fa fa-envelope"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                        <div class="master_name text-center">
                            <h3><spring:message code="rona"/></h3>
                            <p><spring:message code="ladies"/></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- cutter_muster_end -->

    <!-- find_us_area start -->
    <div class="find_us_area find_bg_1 ">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 offset-xl-7 col-lg-6 offset-lg-6">
                    <div class="find_info">
                        <h3 class="find_info_title"><spring:message code="how.to"/></h3>
                        <div class="single_find d-flex">
                            <div class="icon">
                                <i class="flaticon-placeholder"></i>
                            </div>
                            <div class="find_text">
                                    <h3>><spring:message code="location"/></h3>
                                    <p>200, A-block, Green road, USA</p>
                            </div>
                        </div>
                        <div class="single_find d-flex">
                            <div class="icon">
                                <i class="flaticon-phone-call"></i>
                            </div>
                            <div class="find_text">
                                    <h3><spring:message code="call"/></h3>
                                    <p>+10 378 478 2789</p>
                            </div>
                        </div>
                        <div class="single_find d-flex">
                            <div class="icon">
                                <i class="flaticon-paper-plane"></i>
                            </div>
                            <div class="find_text">
                                    <h3><spring:message code="mail"/></h3>
                                    <p>contact@barbershop.com</p>
                            </div>
                        </div>
                        <div class="single_find">
                            <div class="book_btn">
                                <a class="popup-with-form" href="#test-form"><spring:message code="make.an.appointment"/></a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- find_us_area_end -->
    <c:import url="footer-part.jsp"/>
    <!-- link that opens popup -->
    <c:import url="form-part.jsp"/>
    <!-- form itself end -->

    <c:import url="script-part.jsp"/>

</body>

</html>