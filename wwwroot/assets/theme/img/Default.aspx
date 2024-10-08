<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>BIFPCL</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <!-- Favicons -->
  <link href="assets/img/favicon.ico" rel="icon">

  <!-- Google Fonts -->
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/marquee.css">
  <link rel="stylesheet" href="assets/vendor/boxicons/css/boxicons.min.css">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/css/navstyle.css" rel="stylesheet" />
  <link href="assets/css/popupAdd.css" rel="stylesheet" />

  <style>
    .resume .resume-title {
      font-size: 28px;
      color: #0563bb;
    }

    .resume-item ul>li a {
      color: #000;
    }

    p em {
      color: darkcyan;
    }

    .section-heading>h2 {
      font-weight: 700;
      color: #5b32b4;
      font-size: 48px;
      margin: 0;
    }

    .line-shape {
      margin-left: calc(50% - 40px);
    }

    .line-shape-white,
    .line-shape {
      width: 80px;
      height: 2px;
      background-color: #fb397d;
      margin-top: 15px;
    }

    .video-area {
      position: relative;
      z-index: 1;
      background-position: center center;
      background-size: cover;
      border: 20px solid #fff;
      border-radius: 20px;
      height: 650px;
      -webkit-box-shadow: 0 10px 50px rgba(0, 0, 0, 0.08);
      box-shadow: 0 10px 50px rgba(0, 0, 0, 0.08);
    }

    .video-area .video-play-btn a {
      width: 80px;
      height: 80px;
      background-color: #0563bb;
      color: #fff;
      text-align: center;
      display: block;
      font-size: 36px;
      line-height: 80px;
      padding-left: 5px;
      border-radius: 50%;
      top: 50%;
      position: absolute;
      left: 50%;
      -webkit-transform: translate(-50%, -50%);
      -ms-transform: translate(-50%, -50%);
      transform: translate(-50%, -50%);
      z-index: 3;
    }

    /* Navigation line style */
    .nav-button {
      position: relative;
      margin: 0 10px;
      background-color: transparent;
      border: none;
      cursor: pointer;
      overflow: hidden;
      transition: color 0.3s;
    }

    .nav-button::before {
      content: '';
      position: absolute;
      bottom: 0;
      left: 0;
      width: 0;
      height: 2px;
      background-color: #333;
      transition: width 0.3s;
    }

    .nav-button:hover {
      color: #333;
    }

    .nav-button:hover::before {
      width: 100%;
    }
    /* Navigation line style */

    .site-navbar.site-navbar-target.js-sticky-header {
      background-color: rgba(85, 85, 85, 0.5);
    }

    .dropdown-menu {
      background-color: rgba(55, 55, 55, 0.85);
    }

    .dropdown-menu li a:hover {
      background-color: rgba(172, 171, 157, 0.85);
      border-bottom: 1px solid #0563bb;
      border-top: 1px solid #0563bb;
    }
    #divSignin1{
        font-weight:800; color:#ffd800!important; border:1px solid rgba(255, 241, 137, 0.8); padding: 8px 25px; border-radius: 40px;
    }

    .site-navbar-wrap a:hover{
        color:#f7f8f9;
    }
    #divSignin{
        position:relative;
        left:0;
        font-weight:bold;
    }
	.sticky-wrapper.is-sticky .site-navbar {
    background-color: rgba(55, 55, 55, 0.8);

      }

/* new css added on 10-09-24 */
/* css for footer  */
        #footer .footer-top.section-bg {
            background-color: #f3f5fa;
        }

        #footer {
            font-size: 14px;
            background-image: linear-gradient(to right top, #36b227, #2bb13f, #22af51, #1ead60, #22ab6d, #23a66e, #25a16f, #289c6f, #229366, #1d8a5d, #178154, #10784b);
        }

        #footer .footer-newsletter {
            padding: 50px 0;
            background: #f3f5fa;
            text-align: center;
            font-size: 15px;
            color: #444444;
        }

        #footer .footer-newsletter h4 {
            font-size: 24px;
            margin: 0 0 20px 0;
            padding: 0;
            line-height: 1;
            font-weight: 600;
            color: #37517e;
        }

        #footer .footer-newsletter form {
            margin-top: 30px;
            background: #fff;
            padding: 6px 10px;
            position: relative;
            border-radius: 50px;
            box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.06);
            text-align: left;
        }

        #footer .footer-newsletter form input[type=email] {
            border: 0;
            padding: 4px 8px;
            width: calc(100% - 100px);
        }

        #footer .footer-newsletter form input[type=submit] {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            border: 0;
            background: none;
            font-size: 16px;
            padding: 0 20px;
            background: #47b2e4;
            color: #fff;
            transition: 0.3s;
            border-radius: 50px;
            box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
        }

        #footer .footer-newsletter form input[type=submit]:hover {
            background: #209dd8;
        }

        #footer .footer-top {
            padding: 60px 0 30px 0;
            background: #fff;
        }

        #footer .footer-top .footer-contact {
            margin-bottom: 30px;
        }

        #footer .footer-top .footer-contact h3 {
            font-size: 28px;
            margin: 0 0 10px 0;
            padding: 2px 0 2px 0;
            line-height: 1;
            text-transform: uppercase;
            font-weight: 600;
            color: #37517e;
        }

        #footer .footer-top .footer-contact p {
            font-size: 14px;
            line-height: 24px;
            margin-bottom: 0;
            font-family: "Jost", sans-serif;
            color: #5e5e5e;
        }

        #footer .footer-top h4 {
            font-size: 16px;
            font-weight: bold;
            color: #37517e;
            position: relative;
            padding-bottom: 12px;
        }

        #footer .footer-top .footer-links {
            margin-bottom: 30px;
        }

        #footer .footer-top .footer-links ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        #footer .footer-top .footer-links ul i {
            padding-right: 2px;
            color: #3ebc2f;
            font-size: 18px;
            line-height: 1;
        }

        #footer .footer-top .footer-links ul li {
            padding: 10px 0;
            display: flex;
            align-items: center;
        }

        #footer .footer-top .footer-links ul li:first-child {
            padding-top: 0;
        }

        #footer .footer-top .footer-links ul a {
            color: #777777;
            transition: 0.3s;
            display: inline-block;
            line-height: 1;
        }

        #footer .footer-top .footer-links ul a:hover {
            text-decoration: none;
            color: #3ebc2f;
        }

        #footer .footer-top .social-links a {
            font-size: 18px;
            display: inline-block;
            background-image: linear-gradient(to right top, #36b227, #2bb13f, #22af51, #1ead60, #22ab6d, #23a66e, #25a16f, #289c6f, #229366, #1d8a5d, #178154, #10784b);
            color: #fff;
            line-height: 1;
            padding: 8px 0;
            margin-right: 4px;
            border-radius: 50%;
            text-align: center;
            width: 36px;
            height: 36px;
            transition: 0.3s;
        }

        #footer .footer-top .social-links a:hover {
            background: #3ebc2f;
            color: #fff;
            text-decoration: none;
        }

        #footer .footer-bottom {
            padding-top: 30px;
            padding-bottom: 30px;
            color: #fff;
        }

        #footer .copyright {
            float: left;
            color: #ffffff;
        }

        #footer .credits {
            float: right;
            font-size: 13px;
            color: #ffffff;
        }

        #footer .credits a {
            color: #fff;
        }

        #footer .credits a:hover {
            color: #1EE305;
        }

        #footer .credits a {
            transition: 0.3s;
        }

        .dataTables_wrapper .dataTables_paginate .paginate_button:hover {
            background: #71c88a;
            border: none;
        }

        #map {
            height: 250px;
            width: 100%;
        }

        @media (max-width: 768px) {
            #footer .footer-bottom {
                padding-top: 20px;
                padding-bottom: 20px;
            }

            #footer .copyright,
            #footer .credits {
                text-align: center;
                float: none;
            }

            #footer .credits {
                padding-top: 4px;
            }
        }
  </style>
</head>

<body>
    
  <!-- ======= Header Nav ======= -->
  <!-- mobile sidebar section start -->
  <nav class="navbar bg-body-tertiary fixed-top d-sm-block d-md-none d-lg-none d-xl-none">
    <div class="container-fluid">

      <img src="assets/img/favicon.ico" alt="admin" style="width: 32px;"> <span class="fw-bold text-shadow"
        style="position: absolute; left: 50px;">BIFPCL</span>


      <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
        aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="offcanvas offcanvas-start bg-light" tabindex="-1" id="offcanvasNavbar"
        aria-labelledby="offcanvasNavbarLabel">
        <div class="offcanvas-header">

          <!-- mobile user menu section start  -->
          <div class="nav-item dropdown">

              <div class="nav-link text-start" id="divSignin" runat="server"></div>
          </div>

          <!-- mobile user menu section end  -->

          <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <hr>
        <div class="offcanvas-body">
          <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="http://10.8.215.34/" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Home
              </a>
			  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                About
              </a>
              <ul class="dropdown-menu">
                <li><a href="https://www.bifpcl.com/about.aspx?mode=company" class="dropdown-item">Company</a></li>
                <li><a href="https://www.bifpcl.com/about.aspx?mode=board" class="dropdown-item">Board</a></li>
               
                <li><a href="https://www.bifpcl.com/about.aspx?mode=faq" class="dropdown-item">FAQ</a></li>
                <li><a href="https://www.bifpcl.com/docstoreX.aspx?section=2lkADuAd%2bRELwRmPUN6GRA%3d%3d&doctype=b%2fFP5gKZ%2bj0EPdSsodTiuQ%3d%3d" class="dropdown-item">Media</a></li>
                <li><a href="https://www.bifpcl.com/about.aspx?mode=contact" class="dropdown-item">Contact</a></li>
              </ul>
            </li>

            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                Projects
              </a>
              <ul class="dropdown-menu">
                  <li><a href="https://www.bifpcl.com/dashboardTS.aspx" class="dropdown-item">Milestone</a></li>
                  <li><a href="https://www.bifpcl.com/dashboardTS.aspx" class="dropdown-item">DPR Entry</a></li>
                  <li><a href="https://www.bifpcl.com/dashboardTS.aspx" class="dropdown-item">DPR Reports</a></li>
                  <li><a href="https://www.bifpcl.com/dashboardTS.aspx" class="dropdown-item">Critical Issues</a></li>
                  <li><a href="https://www.bifpcl.com/docstore.aspx" class="dropdown-item">Doc Store</a></li>
              </ul>
            </li>
			<li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                Apps
              </a>
              <ul class="dropdown-menu">
                  <li><a href="https://bifpcl.online:8100/dispatcher/" class="dropdown-item">ERP</a></li>
                  <li><a href="http://bifpcl.online/spinehrms/login.aspx" class="dropdown-item">ESS</a></li>
                  
              </ul>
            </li>
            
             <li class="nav-item">
              <a class="nav-link" href="https://www.bifpcl.com/docstoreX.aspx?section=3H88q%2be3xP6p0jxaeyCpRw%3d%3d&doctype=3xh6t5x0v5I%2b5VT4RoQQdQ%3d%3d">Tenders</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="https://www.bifpcl.com/hrCareer.aspx">Careers</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="https://www.bifpcl.com/about.aspx?mode=contact">Contact</a>
            </li>

          </ul>
        </div>
        <!-- mobile footer section start  -->
        <div class="footer text-center" style="background-color: #fff;">
          <p class="mt-2 text-body-tertiary">Developed by: <strong>BIFPCL-IT&trade;</strong></p>
        </div>
        <!-- mobile footer section end  -->
      </div>
    </div>
  </nav>
  <!-- mobile sidebar section end -->

  <div class="site-navbar-wrap">
    <div class="site-navbar site-navbar-target js-sticky-header">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-2">
            <span style="display:inline-block"><img src="assets/img/Logo.png" alt="admin" style="width: 50px;"></span>
              <span style="display:inline-block; margin-left:10px"><h1 class="site-logo d-none d-md-block"><a href="#">BIFPCL</a></h1></span>
          </div>
          <div class="col-10">
            <nav class="site-navigation text-end" role="navigation">
              <div class="container">
                <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#"
                    class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

                <ul class="site-menu main-menu js-clone-nav d-none d-lg-block">
                  <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="pagesDropdown" role="button"
                      data-bs-toggle="dropdown" aria-expanded="false">About</a>
                    <ul class="dropdown-menu text-dark" aria-labelledby="pagesDropdown">
                     <li><a href="https://www.bifpcl.com/about.aspx?mode=company" class="dropdown-item">Company</a></li>
                <li><a href="https://www.bifpcl.com/about.aspx?mode=board" class="dropdown-item">Board</a></li>
                <li><a href="#" class="dropdown-item">Organogram</a></li>
                <li><a href="https://www.bifpcl.com/about.aspx?mode=faq" class="dropdown-item">FAQ</a></li>
                <li><a href="https://www.bifpcl.com/docstoreX.aspx?section=2lkADuAd%2bRELwRmPUN6GRA%3d%3d&doctype=b%2fFP5gKZ%2bj0EPdSsodTiuQ%3d%3d" class="dropdown-item">Media</a></li>
                <li><a href="https://www.bifpcl.com/about.aspx?mode=contact" class="dropdown-item">Contact</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="pagesDropdown" role="button"
                      data-bs-toggle="dropdown" aria-expanded="false">Projects</a>
                    <ul class="dropdown-menu text-dark" aria-labelledby="pagesDropdown">
                      <li><a href="https://www.bifpcl.com/dashboardTS.aspx" class="dropdown-item">Milestone</a></li>
                  <li><a href="https://www.bifpcl.com/dashboardTS.aspx" class="dropdown-item">DPR Entry</a></li>
                  <li><a href="https://www.bifpcl.com/dashboardTS.aspx" class="dropdown-item">DPR Reports</a></li>
                  <li><a href="https://www.bifpcl.com/dashboardTS.aspx" class="dropdown-item">Critical Issues</a></li>
                  <li><a href="https://www.bifpcl.com/docstore.aspx" class="dropdown-item">Doc Store</a></li>

                    </ul>
                  </li>
                  <li class="nav-item"><a href="#apps" class="nav-link">Apps</a></li>
                  <li class="nav-item"><a href="erp.aspx" class="nav-link">ERP</a></li>
                  <li class="nav-item"><a href="http://bifpcl.online/spinehrms/login.aspx" class="nav-link">ESS</a></li>
                  <li class="nav-item"><a href="docstoreX.aspx?section=3H88q%2be3xP6p0jxaeyCpRw%3d%3d&doctype=3xh6t5x0v5I%2b5VT4RoQQdQ%3d%3d" class="nav-link">Tenders</a></li>
                  <li class="nav-item"><a href="hrCareer.aspx" class="nav-link">Careers</a></li>
                  <li class="nav-item" style="margin-left: 50px;">
                      <div class="nav-link" id="divSignin1" runat="server"></div>
                  </li>
                </ul>
              </div>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ======= Header Nav End ======= -->

  <!-- marque section start  -->
  <div id="marquee" class="simple-marquee-container marquee-top">
    <div class="marquee">
      <ul class="marquee-content-items">
        <li class="text-warning"> <img src="assets/img/new.gif" alt=""><span> Admit card of Interview has been issued to the
          shortlisted candidates of 05 categories of posts of
          BIFPCL To Download Admit Card <a href="http://bifpcl.teletalk.com.bd/bifpcl_new/admitcard/" style="color: rgba(121, 255, 188, 0.822);">Click to
              download !</a></span>
        </li>
        <li><i class="bi bi-check-circle icon_complete"></i> <span>Invitation for Bid (IFB) for PROCUREMENT OF CAUSTIC SODA LYE (45-48%) FOR 2X660 MW MSTPP, BIFPCL,
          RAMPAL, BAGERHAT. <a href="https://www.bifpcl.com/docstoreX.aspx?section=3H88q%2be3xP6p0jxaeyCpRw%3d%3d&doctype=3xh6t5x0v5I%2b5VT4RoQQdQ%3d%3d"
              style="color: rgba(121, 255, 188, 0.822);">Click here !</a></span>
        </li>
        <li class="text-info"><i class="bi bi-building-add icon_Total"></i> <span>Invitation for Bid (IFB) for PROCUREMENT OF
          VARIOUS TYPES OF CONSUMABLES TO BE USED IN 2X660 MW MSTPP, RAMPAL, BAGERHAT,BANGLADESH. <a href="https://www.bifpcl.com/docstoreX.aspx?section=3H88q%2be3xP6p0jxaeyCpRw%3d%3d&doctype=3xh6t5x0v5I%2b5VT4RoQQdQ%3d%3d"
              style="color: rgba(121, 255, 188, 0.822);">Click here !</a></span>
        </li>

      </ul>
    </div>
  </div>
  <!-- marque section end  -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center">
    
    <video id="background-video" autoplay loop muted poster="assets/img/gallery/bifpcl/img1.png">
      <source src="assets/videos/intro1.mp4" type="video/mp4">
    </video>
    <div class="container text-center" data-aos="zoom-in" data-aos-delay="100">

      <h1>WELCOME TO BIFPCL</h1>
      <p><span class="typed"
          data-typed-items="Bangladesh-India Friendship Power Company Ltd, Maitree Super Thermal Power Project, 2X660 MegaWatts, Rampal 1320 MW Coal Power Plant"></span>
      </p>
         
    </div>
  </section><!-- End Hero -->

  <main id="main">
                      <!-- Single Cool Fact-->
                <div class="col-12 col-md-3 col-lg-3" style="display:none;">
                    <div class="single-cool-fact d-flex justify-content-center wow fadeInUp" data-wow-delay="0.6s">
                        <div class="counter-area">
                            <h3><span class="counter" id="divManpower" runat="server">89</span></h3>
                        </div>
                        <div class="cool-facts-content">
                            <i class="ion-person"></i>
                            <p>Manpower</p>
                        </div>
                    </div>
                </div>
                <!-- Single Cool Fact-->
              <!-- ***** Awesome Features Start ***** -->
    <section class="awesome-feature-area bg-white section_padding_0_50 clearfix" id="features" style="display:none;">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Heading Text -->
                    <div class="section-heading text-center">
                        <h2>Highlights</h2>
                        <div class="line-shape"></div>
                    </div>
                </div>
            </div>

            <div class="row" id="divHighLights" runat="server">
            </div>

        </div>
    </section>
    <!-- ***** Awesome Features End ***** -->

                          <!-- App Screenshots Slides  -->
                    <div id="divSlide" runat="server" class="app_screenshots_slides owl-carousel" style="display:none;">
                    </div>
      <!-- App Screenshots Slides end -->
                          <div class="slider slider-for" id="divName" runat="server" style="display:none">

                    </div>
                          <div class="slider slider-nav"  id="divPic" runat="server" style="display:none">

                    </div>


    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>About</h2>
          <p>Bangladesh India Friendship Power Company Ltd (50:50 JV between NTPC &Bangladesh Power Development Board
            (BPDB)</p>
        </div>

        <div class="row">
          <div class="col-lg-4">
            <img src="assets/img/about.jpg" class="img-fluid" alt="" style="width:100%; height: 577px;">
          </div>
          <div class="col-lg-8 pt-4 pt-lg-0 content">
            <h3>Rampal 1320 MegaWatts Coal Power Plant</h3>
            <div class="row">
              <div class="col-lg-12">
                <table class="table">
                  <tbody>
                    <tr>
                      <td class="fst-italic fw-bold">Project:</td>
                      <td>Maitree Super Thermal Power Project (2X660 MW) </td>
                    </tr>
                    <tr>
                      <td class="fst-italic fw-bold">Location:</td>
                      <td>Upazila:Rampal; Division:Khulna; District:Bagerhat, Bangladesh The site is located about 23 km
                        southward of Khulna City and 14 km north of Mongla Port.</td>
                    </tr>
                    <tr>
                      <td class="fst-italic fw-bold">Approved Capacity:</td>
                      <td>1320 MW (2 units of 660 MW each) </td>
                    </tr>
                    <tr>
                      <td class="fst-italic fw-bold">Beneficiaries:</td>
                      <td>100% Power to BPDB of Bangladesh</td>
                    </tr>
                    <tr>
                      <td class="fst-italic fw-bold">Fuel:</td>
                      <td>Usage of imported coal envisaged for the project.</td>
                    </tr>
                    <tr>
                      <td class="fst-italic fw-bold">EIA Study:</td>
                      <td>EIA report has been approved by DOE (Dept of Environment), Bangladesh on 05.08.2013.</td>
                    </tr>
                    <tr>
                      <td class="fst-italic fw-bold"> Power Evacuation System:</td>
                      <td>Generation Step up voltage is 400 KV, 400 KV Double Circuit (D/C) Line to connect Dhaka ring
                        main. 220 KV Double Circuit (D/C) Line to connect to Khulna substation.</td>
                    </tr>
                    <tr>
                      <td class="fst-italic fw-bold">Land Requirement:</td>
                      <td>915.5 acres of land available for the project. Land is owned by BPDB for which land lease
                        agreement under signing with BPDB.
                      </td>
                    </tr>
                    <tr>
                      <td class="fst-italic fw-bold">Water Source:</td>
                      <td>Saline water from Pussur River for meeting cooling water requirement. Sweet water required for
                        meeting the potable water, plant service water, cycle makeup (DM water), etc, shall be produced
                        using Desalination process from saline water through Reverse Osmosis process.
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    

    <!-- ======= projects Section ======= -->
    <section id="projects" class="services" style="margin-top: -50px;">
      <div class="container" data-aos="fade-up">
        <div class="section-title">
          <h2>PROJECTS</h2>
        </div>

        <div class="row g-5">

          <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
            <div class="card">
              <div class="icon-box iconbox-blue">
                <div class="icon">
                  <svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
                    <path stroke="none" stroke-width="0" fill="#f5f5f5"
                      d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174">
                    </path>
                  </svg>
                  <i class="bx bxl-dribbble"></i>
                </div>
                <h4><a href="">Milestone </a></h4>
                <p>See The Project Milestone And Get Milestone Reports</p>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="200">
            <div class="card">
              <div class="icon-box iconbox-orange ">
                <div class="icon">
                  <svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
                    <path stroke="none" stroke-width="0" fill="#f5f5f5"
                      d="M300,582.0697525312426C382.5290701553225,586.8405444964366,449.9789794690241,525.3245884688669,502.5850820975895,461.55621195738473C556.606425686781,396.0723002908107,615.8543463187945,314.28637112970534,586.6730223649479,234.56875336149918C558.9533121215079,158.8439757836574,454.9685369536778,164.00468322053177,381.49747125262974,130.76875717737553C312.15926192815925,99.40240125094834,248.97055460311594,18.661163978235184,179.8680185752513,50.54337015887873C110.5421016452524,82.52863877960104,119.82277516462835,180.83849132639028,109.12597500060166,256.43424936330496C100.08760227029461,320.3096726198365,92.17705696193138,384.0621239912766,124.79988738764834,439.7174275375508C164.83382741302287,508.01625554203684,220.96474134820875,577.5009287672846,300,582.0697525312426">
                    </path>
                  </svg>
                  <i class="bx bx-file"></i>
                </div>
                <h4><a href="">DPR Entry</a></h4>
                <p>Feed The Daily Process Into The System</p>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="300">
            <div class="card">
              <div class="icon-box iconbox-pink">
                <div class="icon">
                  <svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
                    <path stroke="none" stroke-width="0" fill="#f5f5f5"
                      d="M300,541.5067337569781C382.14930387511276,545.0595476570109,479.8736841581634,548.3450877840088,526.4010558755058,480.5488172755941C571.5218469581645,414.80211281144784,517.5187510058486,332.0715597781072,496.52539010469104,255.14436215662573C477.37192572678356,184.95920475031193,473.57363656557914,105.61284051026155,413.0603344069578,65.22779650032875C343.27470386102294,18.654635553484475,251.2091493199835,5.337323636656869,175.0934190732945,40.62881213300186C97.87086631185822,76.43348514350839,51.98124368387456,156.15599469081315,36.44837278890362,239.84606092416172C21.716077023791087,319.22268207091537,43.775223500013084,401.1760424656574,96.891909868211,461.97329694683043C147.22146801428983,519.5804099606455,223.5754009179313,538.201503339737,300,541.5067337569781">
                    </path>
                  </svg>
                  <i class="bx bx-tachometer"></i>
                </div>
                <h4><a href="">DPR Reports</a></h4>
                <p>Get The Detailed Daily Progress Report</p>
              </div>
            </div>

          </div>

          <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
            <div class="card">
              <div class="icon-box iconbox-yellow">
                <div class="icon">
                  <svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
                    <path stroke="none" stroke-width="0" fill="#f5f5f5"
                      d="M300,503.46388370962813C374.79870501325706,506.71871716319447,464.8034551963731,527.1746412648533,510.4981551193396,467.86667711651364C555.9287308511215,408.9015244558933,512.6030010748507,327.5744911775523,490.211057578863,256.5855673507754C471.097692560561,195.9906835881958,447.69079081568157,138.11976852964426,395.19560036434837,102.3242989838813C329.3053358748298,57.3949838291264,248.02791733380457,8.279543830951368,175.87071277845988,42.242879143198664C103.41431057327972,76.34704239035025,93.79494320519305,170.9812938413882,81.28167332365135,250.07896920659033C70.17666984294237,320.27484674793965,64.84698225790005,396.69656628748305,111.28512138212992,450.4950937839243C156.20124167950087,502.5303643271138,231.32542653798444,500.4755392045468,300,503.46388370962813">
                    </path>
                  </svg>
                  <i class="bx bx-layer"></i>
                </div>
                <h4><a href="">Critical Issues</a></h4>
                <p>Manage, Reports the Issues for Inputs</p>
              </div>
            </div>
          </div>



        </div>

      </div>
    </section><!-- End projects projects -->

    <!-- ======= Facts Section ======= -->
    <section id="facts" class="facts">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Facts</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint
            consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit
            in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="count-box">
              <i class="bi bi-coin"></i>
              <span data-purecounter-start="0" data-purecounter-end="2" data-purecounter-duration="1"
                class="purecounter"></span>
              <p class="fw-bold" style="font-size: 18px; color: #0563bb;">CAPEX(bUSD)</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
            <div class="count-box">
              <i class="bi bi-journal-richtext"></i>
              <span data-purecounter-start="0" data-purecounter-end="13" data-purecounter-duration="1"
                class="purecounter"></span>
              <p class="fw-bold" style="font-size: 18px; color: #0563bb;">Milestones</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
            <div class="count-box">
              <i class="bi bi-emoji-smile"></i>
              <span data-purecounter-start="0" data-purecounter-end="7000" data-purecounter-duration="1"
                class="purecounter"></span>
              <p class="fw-bold" style="font-size: 18px; color: #0563bb;">Manpower</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
            <div class="count-box">
              <i class="bi bi-award"></i>
              <span data-purecounter-start="0" data-purecounter-end="2" data-purecounter-duration="1"
                class="purecounter"></span>
              <p class="fw-bold" style="font-size: 18px; color: #0563bb;">Units of 66O MW</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Facts Section -->


    <!-- ======= Highlights Section ======= -->
    <section id="highlights">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Highlights</h2>
        </div>

        <div class="row skills-content">

          <div class="col-lg-4">

            <div class="icon-box">
              <div class="text-success fw-bold" style="font-size: 28px;">
                <span><i class='bx bx-star bx-md text-warning'></i>BES</span>
              </div>
              <p class="text-secondary">Boiler Erection Start Milestone Achieved on 30.06.2018</p>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="icon-box iconbox-blue">
              <div class="text-success fw-bold" style="font-size: 28px;">
                <span> <i class='bx bx-pulse bx-md text-warning'></i>CSR</span>
              </div>
              <p class="text-secondary">Distribution of wheel chair and Medical Camp, Water filters to schools on
                14.01.2019</p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="icon-box iconbox-blue">
              <div class="text-success fw-bold" style="font-size: 28px;">
                <span> <i class='bx bxl-redux bx-md text-warning'></i>Supply</span>
              </div>
              <p class="text-secondary">First Lot of Boiler matetials unloading started at Mongla Port on 12.05.2018</p>
            </div>
          </div>

          <div class="col-lg-4">

            <div class="icon-box iconbox-blue">
              <div class="text-success fw-bold" style="font-size: 28px;">
                <span> <i class='bx bx-palette bx-md text-warning'></i>Zero Date</span>
              </div>
              <p class="text-secondary">Notice to Proceed to BHEL issued on 24.04.2017.</p>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="icon-box iconbox-blue">
              <div class="text-success fw-bold" style="font-size: 28px;">
                <span><i class='bx bx-money-withdraw bx-md text-warning'></i>Financing</span>
              </div>
              <p class="text-secondary">Sovereign Guarantee from GoB received. Financial closure achieved on 09.04.2017
              </p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="icon-box iconbox-blue">
              <div class="text-success fw-bold" style="font-size: 28px;">
                <span><i class='bx bx-cart bx-md text-warning'></i>Tender</span>
              </div>
              <p class="text-secondary">Tender for Coal Transportation including Transhipment published</p>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Highlights Section -->

    

  </main><!-- End #main -->

    <!-- ***** CTA Area Start ***** -->
    <section style="background-color: #f7f8f9;">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-8">
            <div class="membership-description">
              <h2>Employee Corner</h2>
              <p>Use Single Sign On to access restricted feature of website..</p>
            </div>
          </div>
          <div class="col-md-3 text-end">
            <div class="get-started-button wow bounceInDown" data-wow-delay="0.5s">
              <a class="btn btn-outline-dark fw-bold" href="sso/Default.aspx?appid=12343272">Login</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ***** CTA Area End ***** -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>CONTACT US</h2>
        </div>

        <div class="row mt-1">

          <div class="col-lg-4">
            <div class="info">
              <div class="address">
                <i class="bi bi-geo-alt"></i>
                <h4>Location:</h4>
                <p>Level-17,Borak Unique Heights, Kazi Nazrul Islam Avenue,Eskaton, Dhaka,1217</p>
              </div>

              <div class="email">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>admin@bifpcl.com</p>
              </div>

              <div class="phone">
                <i class="bi bi-phone"></i>
                <h4>Call:</h4>
                <p>Head Office: (+88)029341805 <br> Site Office: (+88)09610203077</p>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0">
             <!-- Message Input Area Start -->
   <form id="form1" runat="server">
  <!-- Form Start-->
  <div class="contact_from">
    <%--  <form action="#" method="post">--%>
          <!-- Message Input Area Start -->
          <div class="contact_input_area">
              <div class="row">
                  <!-- Single Input Area Start -->
                  <div class="col-md-12">
                      <div class="form-group mt-3">
                          <asp:TextBox ID="name"  class="form-control"  runat="server"  placeholder="Your Name" ></asp:TextBox>
                          <%--<input type="text" class="form-control" name="name" id="name" placeholder="Your Name" required>--%>
                      </div>
                  </div>
                  <!-- Single Input Area Start -->
                  <div class="col-md-12">
                      <div class="form-group mt-3">
                           <asp:TextBox ID="email"  class="form-control"  runat="server"  placeholder="Your E-mail" ></asp:TextBox>
                      </div>
                  </div>
                  <!-- Single Input Area Start -->
                  <div class="col-12">
                      <div class="form-group mt-3 mb-3">
                           <asp:TextBox ID="message"  Height="100px" TextMode="MultiLine" class="form-control"  runat="server"  placeholder="Your Message *" ></asp:TextBox>
                         <%-- <textarea name="message" class="form-control" id="message" cols="30" rows="4" placeholder="Your Message *" required></textarea>--%>
                      </div>
                  </div>
                  <!-- Single Input Area Start -->
                  <div class="col-12">
                      <asp:Button ID="btnSend" class="btn btn-primary" runat="server" Text="Send Message" />
                      <asp:Label ID="lbMessage" runat="server" Text="" ForeColor="red"></asp:Label>
                  </div>
              </div>
          </div>
          <!-- Message Input Area End -->
      <%--</form>--%>
  </div>
</form>

          <!-- Message Input Area End -->
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

    <!-- Popup Modal event section start -->
<div class="modal fade animated-modal" id="popupModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="popupModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div id="popuptitle" class="modal-header bg-dark">
          <h5 class="modal-title" id="popupModalLabel">Ramadan Kareem 2024</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <img src="assets/img/popupevents/ramadan.jpg" alt="" style="width: 100%;">
        </div>
      </div>
    </div>
  </div>
  <!-- Popup Modal event section end -->

<!-- ======= Footer ======= -->
        <footer id="footer" class="">
            <div class="footer-top section-bg">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-3 col-md-6 footer-contact">
                            <img src="assets/img/logo5.png">
                            <p>
                                Maitree Super Thermal Power Project (2X660 MW) <br>
                                ‎Sapmari, Rampal Upazila of Bagerhat 2<br>
                                Khulna Division, Bangladesh<br><br>
                                <strong>Phone:</strong> (+88)09610203077<br>
                                <strong>Email:</strong> admin@bifpcl.com<br>
                            </p>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4 class="d-flex">Useful Links</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">NTPC Limited</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">BPDB</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Power Devision</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Daily Progress</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4 class="d-flex">Our Services</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">HR Services</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Payment </a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Safety</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Online Complaint</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Vehicle Booking</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Our Social Networks</h4>
                            <p>Cras fermentum odio eu feugiat lide par naso tierra videa magna derita valies</p>
                            <div class="social-links mt-3">
                                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="container footer-bottom clearfix">
                <div class="copyright">
                    &copy; Copyright <strong><span>Bifpcl</span></strong>. All Rights Reserved
                </div>
                <div class="credits">Developed By - <a href="">BIFPCL-IT &trade;</a></div>
            </div>
        </footer><!-- End Footer -->
  <!-- <div id="preloader"></div> -->
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
      class="bi bi-arrow-up-short"></i></a>

  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/marquee.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/typed.js/typed.umd.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/js/main.js"></script>
  <script src="assets/js/jquery.sticky.js"></script>
  <script src="assets/js/main-sticky.js"></script>
  <script>
      $(function () {
          let options = {
              autostart: true,
              property: 'value',
              onComplete: null,
              padding: 10,
              marquee_class: '.marquee',
              container_class: '.simple-marquee-container',
              sibling_class: 0,
              hover: true,
              velocity: 0.05,
              direction: 'left'
          }
          $('.simple-marquee-container').SimpleMarquee(options);
      });
  </script>

    <!-- Script to show animated popup modal once time -->
<!--    <script>-->
<!--        document.addEventListener("DOMContentLoaded", function () {-->
<!--            var modalShown = sessionStorage.getItem('modalShown');-->
<!--            if (!modalShown) {-->
<!--                setTimeout(function () {-->
<!--                    var myModal = new bootstrap.Modal(document.getElementById('popupModal'));-->
<!--                    myModal.show();-->
<!--                    sessionStorage.setItem('modalShown', 'true');-->
<!--                }, 1500);-->
<!--            }-->
<!--        });-->
<!--    </script>-->
    <!-- Script end to show animated popup modal -->


<!-- Design By: Md. Mazharul Anowar -->
</body>

</html>