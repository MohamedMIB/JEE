<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="icon" href="img/fav-icon.ico" type="image/x-icon" />
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Credit Simulator > about us</title>

        <!-- Icon css link -->
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        
        <!-- Rev slider css -->
        <link href="vendors/revolution/css/settings.css" rel="stylesheet">
        <link href="vendors/revolution/css/layers.css" rel="stylesheet">
        <link href="vendors/revolution/css/navigation.css" rel="stylesheet">
        
        <!-- Extra plugin css -->
        <link href="vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
        <link href="vendors/magnify-popup/magnific-popup.css" rel="stylesheet">
        
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        
        <!--================Header Menu Area =================-->
 		        <header class="main_menu_area">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#"><img height="30" width="160" src="img/logo3.png" alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="index.jsp">Accueil</a></li>
                        <li class="nav-item active"><a class="nav-link" href="about.jsp">À PROPOS DE NOUS</a></li>
                        <li class="nav-item dropdown submenu">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Services
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li class="nav-item"><a class="nav-link" href="annuite.jsp">Calcule annuité</a></li>
                                <li class="nav-item"><a class="nav-link" href="capital.jsp">Calcule capital</a></li>
                                <li class="nav-item"><a class="nav-link" href="duree.jsp">Calcule durée</a></li>
                            </ul>
                        </li>
                        <% 
                        boolean problem =false;
                        if(session.getAttribute("authError")!= null){
                        	 problem = (boolean) session.getAttribute("authError");
                        }
                        if(problem || session.getAttribute("authError")== null){ %>
                        <li class="nav-item"><a class="nav-link" href="login.jsp">s'authentifier</a></li>
                    	<%}else{ %>
                    	 <li class="nav-item"><a class="nav-link" href="logout">Déconnection</a></li>
                   		<%} %>
                    </ul>
                </div>
            </nav>
        </header>
        <!--================End Header Menu Area =================-->
        
        <!--================Banner Area =================-->
        <section class="banner_area">
            <div class="container">
                <div class="banner_inner_text">
                    <h2>About Us</h2>
                    <p>Get to know us</p>
                </div>
            </div>
        </section>
        <!--================End Banner Area =================-->
        
        <!--================Challange Area =================-->
        <section class="challange_area p_100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="challange_text_inner">
                            <div class="l_title">
                                <img src="img/icon/title-icon.png" alt="">
                                <h6>IAO Student</h6>
                                <h2>ISMAIL BEN BRAHIM EL MOKHTAR Mohamed</h2>
                            </div>
                            <p>Mohamed ISMAIL, Licence en Science
                                Mathématiques Informatiques(SMI)
                                de la faculté des sciences, université
                                Mohammed V Rabat.Je suis
                                passionné par le développement des
                                applications,Je suis dynamique et
                                responsable.Mon côté sociable me
                                permet de travaillé en équipe.<br/>
                                Je poursuis mes études en master IAO.
                            ce site est fait par <i class="fa fa-heart-o" aria-hidden="true"></i> </p>
                        </div>
                    </div>
                    <div class="col-lg-6 challange_img">
                        <div class="challange_img_inner">
                            <img class="img-fluid" src="img/myPhoto.jpeg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Challange Area =================-->
    
        
        <!--================End We Are Company Area =================-->
        <section class="talk_area">
            <div class="container">
                <div class="talk_text">
                    <h4>voulez vous me contacter voilà mon mail?</h4>
                    <a href="mailto:ismailmohamed2301@gmail.com">ismailmohamed2301@gmail.com</a>
                </div>
            </div>
        </section>
        <!--================End We Are Company Area =================-->
        
        <!--================Footer Area =================-->
 		<%@include file="includes/footer.jsp" %>
        <!--================End Footer Area =================-->
        
        
        
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- Rev slider js -->
        <script src="vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script src="vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.video.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script src="vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <!-- Extra plugin css -->
        <script src="vendors/counterup/jquery.waypoints.min.js"></script>
        <script src="vendors/counterup/jquery.counterup.min.js"></script> 
        <script src="vendors/counterup/apear.js"></script>
        <script src="vendors/counterup/countto.js"></script>
        <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
        <script src="vendors/magnify-popup/jquery.magnific-popup.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        
        <script src="js/theme.js"></script>
    </body>
</html>