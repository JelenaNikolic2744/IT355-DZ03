<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

        <script src="js/jquery.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Cookery Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!---->
        <link href='//fonts.googleapis.com/css?family=Raleway:400,200,100,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700' rel='stylesheet' type='text/css'>
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- start-smoth-scrolling -->
        <link href="css/styles.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <!-- animation-effect -->
        <link href="css/animate.min.css" rel="stylesheet"> 
        <script src="js/wow.min.js"></script>
        <script>
            new WOW().init();
        </script>
        <!-- //animation-effect -->
    </head>
    <body>
        <div class="header">
            <div class="container">
                <div class="logo animated wow pulse" data-wow-duration="1000ms" data-wow-delay="500ms">
                    <h1><a href="hello.jsp"><span>C</span><img src="<c:url value="/img/oo.png"/>" alt=""/><img src="<c:url value="/img/oo.png"/>" alt=""/>kery</a></h1>
                </div>                                                      
                <div class="nav-icon">		
                    <a href="#" class="navicon"></a>
                    <div class="toggle">
                        <ul class="toggle-menu">
                            <li><a class="active" href="http://localhost:8084/DomaciBr02/hello">Home</a></li>
                            <li><c:if test="${pageContext.request.userPrincipal.name == null}">
                                    <a href="http://localhost:8084/DomaciBr02/login"><spring:message code="login"/></a>
                                </c:if>
                            </li>
                            <li><c:if test="${pageContext.request.userPrincipal.name == null}">
                                    <a href="http://localhost:8084/DomaciBr02/proizvodFlow">Flow zadatak</a>
                                </c:if>
                            </li>
                            <li>
                                <sec:authorize access="hasRole('ROLE_USER')">
                                    <a href="http://localhost:8084/DomaciBr02/rezervacija" style="text-align: center"><spring:message code="rez"/></a>
                                </sec:authorize>
                            </li>
                            <li>
                                <c:if test="${pageContext.request.userPrincipal.name != null}">
                                    <c:url value="/j_spring_security_logout" var="logoutUrl" />
                                    <form action="${logoutUrl}" method="post" id="logoutForm">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    </form>
                                    <script>
                                        function formSubmit() {
                                            document.getElementById("logoutForm").submit();
                                        }
                                    </script>
                                    Username -
                                    ${pageContext.request.userPrincipal.name} | <a href="javascript:formSubmit()"> <spring:message code="logout"/></a>
                                </c:if>
                            </li>
                            <li><a href="http://localhost:8084/DomaciBr02/sajt"><spring:message code="plus"/></a></li>
                            <li><a  href="http://localhost:8084/DomaciBr02/hello">Menu</a></li>
                            <li><a  href="http://localhost:8084/DomaciBr02/hello">Blog</a></li>
                            <li><a  href="http://localhost:8084/DomaciBr02/hello">Codes</a></li>
                            <li><a  href="http://localhost:8084/DomaciBr02/hello">Events</a></li>
                            <li><a  href="http://localhost:8084/DomaciBr02/hello">Contact</a></li>
                        </ul>
                    </div>
                    <script>
                        $('.navicon').on('click', function (e) {
                            e.preventDefault();
                            $(this).toggleClass('navicon--active');
                            $('.toggle').toggleClass('toggle--active');
                        });
                    </script>
                </div>
                <div class="clearfix"></div>
            </div>
            <!-- start search-->	
            <div class="banner">
                <p class="animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">Sed ut perspiciatis unde omnis iste natus.</p>
                <label></label>
                <h4 class="animated wow fadeInTop" data-wow-duration="1000ms" data-wow-delay="500ms">Hello And Welcome To Food</h4>
                <a class="scroll down" href="#content-down"><img src="<c:url value="/img/down.png"/>" alt=""/></a>
            </div>
        </div>
        <!--content-->
        <div class="content" id="content-down">
            <div class="content-top-top">
                <div class="container">
                    <div class="content-top">
                        <div class="col-md-4 content-left animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <h3>About</h3>
                            <label><i class="glyphicon glyphicon-menu-up"></i></label>
                            <span>There are many variations</span>
                        </div>
                        <div class="col-md-8 content-right animated wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour , or randomised words which don't look even slightly believable.There are many variations by injected humour. There are many variations of passages of Lorem Ipsum available.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form by injected humour , or randomised words</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="content-mid">

                        <div class="col-md-4 food-grid animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <div class=" hover-fold">
                                <h4>FOOD</h4>
                                <div class="top">
                                    <div class="front face"></div>
                                    <div class="back face">
                                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>
                                    </div>
                                </div>
                                <div class="bottom"></div>
                            </div>
                        </div>
                        <div class="col-md-4 food-grid animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <div class=" hover-fold">
                                <h4>FOOD</h4>
                                <div class="top">
                                    <div class="front face front1"></div>
                                    <div class="back face">
                                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>
                                    </div>
                                </div>
                                <div class="bottom bottom1"></div>
                            </div>
                        </div>
                        <div class="col-md-4 food-grid animated wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <div class=" hover-fold">
                                <h4>FOOD</h4>
                                <div class="top">
                                    <div class="front face front2"></div>
                                    <div class="back face">
                                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>
                                    </div>
                                </div>
                                <div class="bottom bottom2"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!--services-->
            <div class="services">
                <div class="container">
                    <div class="services-top">		
                        <div class="col-md-8 services-right animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour , or randomised words which don't look even slightly believable.There are many variations by injected humour. There are many variations of passages of Lorem Ipsum available.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form by injected humour , or randomised words</p>
                        </div>
                        <div class="col-md-4 services-left animated wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <h3>Services</h3>
                            <label><i class="glyphicon glyphicon-menu-up"></i></label>
                            <span>There are many variations</span>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="service-top">
                        <div class="col-md-5 service-top animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <div class=" service-grid">
                                <div class="col-md-6 service-grid1">
                                    <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                                        <a href="#" class="hi-icon hi-icon-mobile glyphicon glyphicon-leaf"></a>
                                    </div>
                                </div>
                                <div class="col-md-6 service-grid1">
                                    <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                                        <a href="#" class="hi-icon hi-icon-mobile glyphicon glyphicon-star-empty"></a>
                                    </div>					
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class=" service-grid">
                                <div class="col-md-6 service-grid1">
                                    <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                                        <a href="#" class="hi-icon hi-icon-mobile glyphicon glyphicon-folder-open"></a>
                                    </div>					
                                </div>
                                <div class="col-md-6 service-grid1">
                                    <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                                        <a href="#" class="hi-icon hi-icon-mobile glyphicon glyphicon-home"></a>
                                    </div>					
                                </div>
                                <div class="clearfix"> </div>
                            </div>

                        </div>
                        <div class="col-md-7 service-bottom animated wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <div class=" service-bottom1">
                                <div class=" ser-bottom">
                                    <img src="<c:url value="/img/sa.png"/>" class="img-responsive" alt=""/>
                                </div>
                                <div class="ser-top "> 
                                    <h5>Beautiful &amp; enjoyable designs</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis.</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class=" service-bottom1">
                                <div class=" ser-bottom">
                                    <img src="<c:url value="/img/sal.png"/>" class="img-responsive" alt=""/>
                                </div>
                                <div class="ser-top "> 
                                    <h5>Beautiful &amp; enjoyable designs</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis.</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class=" service-bottom1">
                                <div class=" ser-bottom">
                                    <img src="<c:url value="/img/sa2.png"/>" class="img-responsive" alt=""/>
                                </div>
                                <div class="ser-top "> 
                                    <h5>Beautiful &amp; enjoyable designs</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis.</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <!--//services-->
            <!--news-->
            <div class="content-top-top">
                <div class="container">
                    <div class="content-top">
                        <div class="col-md-4 content-left animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <h3>News</h3>
                            <label><i class="glyphicon glyphicon-menu-up"></i></label>
                            <span>There are many variations</span>
                        </div>
                        <div class="col-md-8 content-right animated wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour , or randomised words which don't look even slightly believable.There are many variations by injected humour. There are many variations of passages of Lorem Ipsum available.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form by injected humour , or randomised words</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>

                </div>
            </div>
            <!--//news-->
        </div>
        <!--footer-->
        <div class="footer">
            <div class="container">

                <p class="footer-class animated wow bounce" data-wow-duration="1000ms" data-wow-delay="500ms">&copy; 2016 Cookery . All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
            </div>
        </div>		
        <!--//footer-->
    </body>
</html>