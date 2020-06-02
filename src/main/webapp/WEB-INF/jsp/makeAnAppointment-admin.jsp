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
    <c:import url="templ/header-part.jsp"/>


    <!-- Second level menu -->
    <ul class="nav__second-lvl">
        <c:forEach items="${menuDates}" var="menuDate">
            <li <c:if test="${menuDate.isActive()}">class="active"</c:if>>
            <a href="schedule${menuDate.getIsoDate()}">
                <fmt:message key="week.day.${menuDate.getDayOfWeek()}"/>
                ${menuDate.getFormattedDate()}</a></li>
        </c:forEach>
    </ul>
    <!-- header-end -->


    <!-- Button for call modal -->
    <div class="wrapper btn">
        <button type="submit" class="openModalBtn add-movie"><fmt:message key="admin.pin.movie"/></button>
    </div>

    <!-- - - - - - - - The Modal for movies - - - - - - - -->
    <div id="myModal" class="modal">
        <div class="content">
            <div class="page-title"><fmt:message key="schedule.admin.modal.title" /></div>
            <!-- Modal content -->
            <div class="modal-content">
                <form id="selectedMovies" method="post">
                </form>
            </div>

            <!-- Modal buttons -->
            <button id="btnCheckout" name="confirm" class="signinbutton" type="submit" form="selectedMovies">
                <fmt:message key="schedule.admin.modal.select" />
            </button>
            <button class="close"><fmt:message key="schedule.admin.modal.close" /></button>
        </div>
    </div>
    <!-- - - - - - - - The Modal for movies - - - - - - - -->

    <c:forEach items="${sessions}" var="movie">
        <div id="${movie.movieId}">
            <div class="wrapper">
                <div id="errors_${movie.movieId}" class="errors"
                     style="font-size: 15px;color: red;margin: 0 auto;position: relative;"></div>
            </div>
            <div class="movie-card">
                <div class="movie-card__container" style="margin-bottom: 10px;">
                    <div class="movie-cover">
                        <!-- Delete pin movie button -->
                        <button class="btn delete" onclick="removePinHandler('${movie.movieId}')">
                            <fmt:message key="schedule.admin.unpin.movie" />
                        </button>
                    </div>

                    <div id="movie_${movie.movieId}" class="movie-description">
                        <div class="movie-title">${movie.title}</div>
                        <p class="movie-duration"><fmt:message key="schedule.duration"/>: ${movie.duration}
                            <fmt:message
                                    key="schedule.min"/></p>
                        <form action="schedule<c:if test="${param.get('date') != null}">?date=${param.get('date')}</c:if>"
                        class="session-form" name="session-form" id="session-form_${movie.movieId}"
                        method="post">
                        <input id="movieId_${movie.movieId}" type="hidden" name="movieId"
                               value="${movie.movieId}"/>
                        <input id="hours_${movie.movieId}" class="session-field" type="number" name="hours"
                               placeholder="<fmt:message key="admin.input.hh"/>" min="9" max="22"
                        style="padding: 8px 5px">
                        <input id="minutes_${movie.movieId}" class="session-field" type="number" name="minutes"
                               placeholder="<fmt:message key="admin.input.mm"/>" min="0" max="59"
                        style="padding: 8px 5px">
                        <input class="session-field" type="text" name="price"
                               placeholder="<fmt:message key="admin.input.price"/> 0.0" style="padding: 8px 5px">
                        <input type="submit" value="<fmt:message key="admin.add.session"/>" class="add">
                        </form>
                        <c:forEach items="${movie.movieSessionTimes}" var="time">
                            <a class="tag" href="movie-session/${time.getMovieSessionId()}"
                               id="${time.getMovieSessionId()}">${time.getTimeView()}</a>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
    </main>
    <script src="static/js/jquery/jquery-3.4.1.min.js"></script>
    <script src="static/js/jquery/jquery.validate.min.js"></script>
    <script type="text/javascript" src="static/js/pin-movie-schedule.js"></script>
    <script type="text/javascript" src="static/js/movies-modal-session-creation.js"></script>
    <script type="text/javascript">
    var errorsDictionary = new Map([
        ["hoursRequired", "<fmt:message key='error.hours.required'/>"],
        ["hoursRange", "<fmt:message key='error.hours.range'/>"],
        ["hoursDigits", "<fmt:message key='error.hours.digits'/>"],
        ["hoursMaxlength", "<fmt:message key='error.hours.maxlength'/>"],
        ["minutesRequired", "<fmt:message key='error.minutes.required'/>"],
        ["minutesRange", "<fmt:message key='error.minutes.range'/>"],
        ["minutesDigits", "<fmt:message key='error.minutes.digits'/>"],
        ["minutesMaxlength", "<fmt:message key='error.minutes.maxlength'/>"],
        ["priceRequired", "<fmt:message key='error.price.required'/>"],
        ["priceNumber", "<fmt:message key='error.price.number'/>"],
        ["priceMin", "<fmt:message key='error.price.min'/>"]
    ]);
    var msgDictionary = new Map([
        ["duration", "<fmt:message key="schedule.duration"/>"],
        ["min", "<fmt:message key="schedule.min"/>"],
        ["mm", "<fmt:message key="admin.input.mm"/>"],
        ["hh", "<fmt:message key="admin.input.hh"/>"],
        ["price", "<fmt:message key="admin.input.price"/>"],
        ["session", "<fmt:message key="admin.add.session"/>"],
        ["empty", "<fmt:message key="admin.movies.modal.empty"/>"],
        ["unpin", "<fmt:message key="schedule.admin.unpin.movie"/>"]
    ]);
</script>

    <c:import url="templ/footer-part.jsp"/>
    <!-- link that opens popup -->
    <c:import url="templ/form-part.jsp"/>

    <!-- form itself end -->

    <c:import url="templ/script-part.jsp"/>

</body>

</html>