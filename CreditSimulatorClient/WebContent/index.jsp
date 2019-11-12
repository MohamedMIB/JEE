<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache, no-store, must-revalidate");
response.setHeader("Expires","0"); %>    
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="icon" href="img/fav-icon.ico" type="image/x-icon" />
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Credit Simulator</title>

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
                        <li class="nav-item active"><a class="nav-link" href="index.jsp">Accueil</a></li>
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
                        boolean x =false;
                        if(session.getAttribute("authError")!= null){
                        	 x = (boolean) session.getAttribute("authError");
                        }
                        if(x || session.getAttribute("authError")== null){ %>
                        <li class="nav-item"><a class="nav-link" href="login.jsp">s'authentifier</a></li>
                        <%}else{ %>
                    	 <li class="nav-item"><a class="nav-link" href="logout">Déconnexion</a></li>
                   		<%} %>
                    </ul>
                </div>
            </nav>
        </header>
        <!--================End Header Menu Area =================-->
        
        
        <!--================Slider Area =================-->
        <section class="main_slider_area">
            <div id="main_slider" class="rev_slider" data-version="5.3.1.6">
                <ul>
                    <li data-index="rs-1587" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300" data-rotate="0"  data-saveperformance="off"  data-title="Creative" data-param1="01" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                        <!-- LAYER NR. 1 -->
                        <div class="slider_text_box">
                            <div class="tp-caption tp-resizeme first_text" 
                            data-x="['left','left','left','left','15','center']" 
                            data-hoffset="['0','80','80','0']" 
                            data-y="['top','top','top','top']" 
                            data-voffset="['400','400','400','250','180','180']" 
                            data-fontsize="['72','72','72','50','50','30']"
                            data-lineheight="['82','82','82','62','62','42']"
                            data-width="['none']"
                            data-height="none"
                            data-whitespace="nowrape"
                            data-type="text" 
                            data-responsive_offset="on" 
                            data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:0px;s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]"
                            data-textAlign="['left','left','left','left','left','center']">Simuler facilement <br />votre crédit avec nous</div>
                            
                            <div class="tp-caption tp-resizeme secand_text" 
                                data-x="['left','left','left','left','15','center']" 
                                data-hoffset="['0','80','80','0']" 
                                data-y="['top','top','top','top']" 
                                data-voffset="['575','575','575','400','320','300']"  
                                data-fontsize="['24','24','24','18','16','16']"
                                data-lineheight="['36','36','36','26','26','26']"
                                data-width="['none','none','none','none','none']"
                                data-height="none"
                                data-whitespace="nowrape"
                                data-type="text" 
                                data-responsive_offset="on"
                                data-transform_idle="o:1;"
                                data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]"
                                data-textAlign="['left','left','left','left','left','center']">Commencer votre simulation maintenent!
                            </div>
                            
                            <div class="tp-caption tp-resizeme" 
                                data-x="['left','left','left','left','15','center']" data-hoffset="['0','80','80','0']" 
                                data-y="['top','top','top','top']" 
                                data-voffset="['670','670','670','480','370','350']" 
                                data-fontsize="['14','14','14','14']"
                                data-lineheight="['46','46','46','46']"
                                data-width="none"
                                data-height="none"
                                data-whitespace="nowrap"
                                data-type="text" 
                                data-responsive_offset="on" 
                                data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]">
                                <a class="more_btn" href="#nosOptions">Decouvrire nos options</a>
                            </div>
                            <div class="tp-caption tp-resizeme single_img" 
                            data-x="['right','right','right','right','right','right']" 
                            data-hoffset="['0','0','0','0']" 
                            data-y="['top','top','top','top']" 
                            data-voffset="['180','180','180','180','0']" 
                            data-fontsize="['65','65','60','40','25']"
                            data-lineheight="['75','75','75','50','35']"
                            data-width="['485','485','485','485','485']"
                            data-height="none"
                            data-whitespace="normal"
                            data-type="text" 
                            data-responsive_offset="on" 
                            data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:0px;s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]"
                            data-textAlign="['left','left','left','left','left','center']">
                                <img width="100" height="100" src="img/home-slider/monney2.png" alt="">
                            </div>
                        </div>
                    </li>
                    <li data-index="rs-1588" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="300" data-rotate="0"  data-saveperformance="off"  data-title="Creative" data-param1="01" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                            <!-- LAYERS -->
                                <!-- LAYERS -->
        
                                <!-- LAYER NR. 1 -->
                                <div class="slider_text_box">
                                    <div class="tp-caption tp-resizeme first_text" 
                                    data-x="['left','left','left','left','15','center']" 
                                    data-hoffset="['0','80','80','0']" 
                                    data-y="['top','top','top','top']" 
                                    data-voffset="['400','400','400','250','180','180']" 
                                    data-fontsize="['72','72','72','50','50','30']"
                                    data-lineheight="['82','82','82','62','62','42']"
                                    data-width="['none']"
                                    data-height="none"
                                    data-whitespace="nowrape"
                                    data-type="text" 
                                    data-responsive_offset="on" 
                                    data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:0px;s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]"
                                    data-textAlign="['left','left','left','left','left','center']">Sauvgrder vos calcules <br /> 
                                    <% if(session.getAttribute("client")==null){ %>
                                    if suffit de s'authentifier
                                    <%} %></div>
                                    
                                    <div class="tp-caption tp-resizeme secand_text" 
                                        data-x="['left','left','left','left','15','center']" 
                                        data-hoffset="['0','80','80','0']" 
                                        data-y="['top','top','top','top']" 
                                        data-voffset="['575','575','575','400','320','300']"  
                                        data-fontsize="['24','24','24','18','16','16']"
                                        data-lineheight="['36','36','36','26','26','26']"
                                        data-width="['none','none','none','none','none']"
                                        data-height="none"
                                        data-whitespace="nowrape"
                                        data-type="text" 
                                        data-responsive_offset="on"
                                        data-transform_idle="o:1;"
                                        data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]"
                                        data-textAlign="['left','left','left','left','left','center']">
                                        <%if(session.getAttribute("client")!=null){%>
                                        Vous êtes authentifier vous pouvez maintenet sauvgarder vos crédit !!
                                        <%}else{ %>s'authentifier ici!!<%} %>
                                    </div>
                                    
                                    <div class="tp-caption tp-resizeme" 
                                        data-x="['left','left','left','left','15','center']" data-hoffset="['0','80','80','0']" 
                                        data-y="['top','top','top','top']" 
                                        data-voffset="['670','670','670','480','370','350']" 
                                        data-fontsize="['14','14','14','14']"
                                        data-lineheight="['46','46','46','46']"
                                        data-width="none"
                                        data-height="none"
                                        data-whitespace="nowrap"
                                        data-type="text" 
                                        data-responsive_offset="on" 
                                        data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:[100%];s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]">
                                                                <% 
                        x =false;
                        if(session.getAttribute("authError")!= null){
                        	 x = (boolean) session.getAttribute("authError");
                        }
                        if(x || session.getAttribute("authError")== null){ %>
                                        <a class="more_btn" href="login.jsp">Se connecter</a>
                                                <%}%>              
                                    </div>
                                    <div class="tp-caption tp-resizeme single_img" 
                                    data-x="['right','right','right','right','right','right']" 
                                    data-hoffset="['0','0','0','0']" 
                                    data-y="['top','top','top','top']" 
                                    data-voffset="['180','180','180','180','0']" 
                                    data-fontsize="['65','65','60','40','25']"
                                    data-lineheight="['75','75','75','50','35']"
                                    data-width="['485','485','485','485','485']"
                                    data-height="none"
                                    data-whitespace="normal"
                                    data-type="text" 
                                    data-responsive_offset="on" 
                                    data-frames="[{&quot;delay&quot;:10,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:0px;s:inherit;e:inherit;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;y:[175%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;Power2.easeInOut&quot;}]"
                                    data-textAlign="['left','left','left','left','left','center']">
                                        <img src="img/home-slider/slider-m-1.png" alt="">
                                    </div>
                                </div>
                            </li>
                </ul>
            </div>
        </section>
        <!--================End Slider Area =================-->
        
        <!--================Feature Area =================-->
        <section id="nosOptions" class="feature_area">
            <div class="container">
                <div class="c_title">
                    <img src="img/icon/title-icon.png" alt="">
                    <h6>Nos options de calcule</h6>
                    <h2>Simuler votre crédit selon vos données</h2>
                </div>
                <div class="row feature_inner">
                    <div class="col-lg-4 col-sm-6">
                        <div class="feature_item">
                            <div class="f_icon">
                                <img src="img/icon/receive-money.png" alt="">
                            </div>
                            <h4>Calcul de l'annuité de rembourcement</h4>
                            <p> Il suffit de saisir  
                                le montant de l’emprunt (Capital), 
                                la durée de l’emprunt en mois et le taux d’intérêts annuel. 
                                Le simulateur calcule l’annuité mensuelle.</p>
                            <a class="more_btn" href="annuite.jsp">Calculer &rarr;</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="feature_item">
                            <div class="f_icon">
                                <img src="img/icon/capital.png" alt="">
                            </div>
                            <h4>Calcul de capital</h4>
                            <p>Il suffit de saisir 
                                le montant de l’annuité, 
                                la durée en mois et le taux d’intérêt annuel. 
                                Le simulateur calcule le montant du prêt. </p>
                            <a class="more_btn" href="capital.jsp">Calculer &rarr;</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="feature_item">
                            <div class="f_icon">
                                <img src="img/icon/time.png" alt="">
                            </div>
                            <h4>Calcul de la durée</h4>
                            <p>Il suffit de saisir le montant de l’annuité, 
                                le montant de l’emprunt (Capital) et le taux d’intérêt annuel
                                Le simulateur calcule  la durée de l’emprunt. </p>
                            <a class="more_btn" href="duree.jsp">Calculer &rarr;</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Feature Area =================-->
                                
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