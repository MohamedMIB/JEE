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
        <title>Credit Simulator > Register</title>

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
                        <li class="nav-item"><a class="nav-link" href="about.jsp">À PROPOS DE NOUS</a></li>
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
                        <li class="nav-item active"><a class="nav-link" href="register.jsp">Créer un compte</a></li>
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
                    <h2>S'enthentifier</h2>
                    <p>register here</p>
                </div>
            </div>
        </section>
        <!--================End Banner Area =================-->
        
        <!--================Get in Touch Area =================-->
        <section class="get_in_touch_area p_100">
            <div class="container">
                <div class="row get_touch_inner">
                    <div class="col-lg-10">
                    <%if(session.getAttribute("RegisterMessage")!=null){ %>
                    		<div class="alert alert-danger alert-dismissible">
								<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  								<strong>Probléme de registration!</strong> <%=session.getAttribute("RegisterMessage") %>.
							</div>
					<%session.removeAttribute("RegisterMessage");} %>		
                            <form class="contact_us_form form-horizontal" method="post" action="register" id="authForm" novalidate="novalidate">
                                <div class="form-group">
                                  <label class="control-label col-sm-2" for="NomCli">Nom:</label>
                                  <div class="col-sm-10">
                                    <input type="text" class="form-control" id="NomCli" placeholder="Votre nom" name="NomCli">
                                  </div>
                                </div>
                                <div class="form-group">
                                        <label class="control-label col-sm-2" for="PreCli">Prénom:</label>
                                        <div class="col-sm-10">
                                          <input type="text" class="form-control" id="PreCli" placeholder="Votre prénom" name="PreCli">
                                        </div>
                                </div>
                                <br/>
                                <div class="form-group col-lg-12">
                                        <label class="control-label col-sm-2" for="AdrCli">Addresse:</label>
                                        <textarea class="form-control" name="AdrCli" id="AdrCli" rows="1" placeholder="votre Addresse"></textarea>
                                </div>
                                <div class="form-group">
                                        <label class="control-label col-sm-2" for="VilCli">Ville:</label>
                                        <div class="col-sm-10">
                                          <input type="text" class="form-control" id="VilCli" placeholder="Votre ville" name="VilCli">
                                        </div>
                                </div>
                                <div class="form-group">
                                        <label class="control-label col-sm-2" for="TelCli">Téléphone:</label>
                                        <div class="col-sm-10">
                                          <input type="text" class="form-control" id="TelCli" placeholder="Votre Téléphone" name="TelCli">
                                        </div>
                                </div>
                                <div class="form-group">
                                        <label class="control-label col-sm-2" for="MailCli">Mail:</label>
                                        <div class="col-sm-10">
                                          <input type="mail" class="form-control" id="MailCli" placeholder="Votre mail" name="MailCli">
                                        </div>
                                </div>
                                <div class="form-group">
                                  <label class="control-label col-sm-2" for="PasswordCli">Password:</label>
                                  <div class="col-sm-10">          
                                    <input type="password" class="form-control" id="passwordCli" placeholder="choisir un mot de passe" name="passwordCli">
                                  </div>
                                </div>
                                <div class="form-group col-lg-12">
                                        <button type="submit" value="submit" class="btn solid_btn form-control">Enregistrer vos informations</button>
                                </div>
                              </form>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Get in Touch Area =================-->
        

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
        <script src="vendors/circle-bar/circle-progress.min.js"></script>
        <script src="vendors/circle-bar/plugins.js"></script>
        <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
        <script src="vendors/isotope/isotope.pkgd.min.js"></script>
        
        <!--gmaps Js-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="js/gmaps.min.js"></script>
        
        <!-- contact js -->
        <script src="js/jquery.form.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/contact.js"></script>
        
        <script src="js/circle-active.js"></script>
        <script src="js/theme.js"></script>
    </body>
</html>