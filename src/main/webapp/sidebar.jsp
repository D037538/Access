<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

 
    <!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff" type="text/css">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff" type="text/css">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff" type="text/css">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff" type="text/css">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff" type="text/css">

    <!-- Styles -->

    <link href="assets\css\lib\calendar2\pignose.calendar.min.css" rel="stylesheet" type="text/css">
    <link href="assets\css\lib\font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="assets\css\lib\themify-icons.css" rel="stylesheet" type="text/css">
    <link href="assets\css\lib\mmc-chat.css" rel="stylesheet" type="text/css">
    <link href="assets\css\lib\sidebar.css" rel="stylesheet" type="text/css">
    <link href="assets\css\lib\bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="assets\css\lib\unix.css" rel="stylesheet" type="text/css">
    <link href="assets\css\style.css" rel="stylesheet" type="text/css">
</head>

<body>

    <div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
        <div class="nano">
            <div class="nano-content">
                <ul>
                      <li><a class="sidebar-sub-toggle"><i class="ti-cup"></i>Master <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="Registration">Registration</a></li>
                            <li><a href="MasterRestroTable">MasterRestroTable</a></li>
                        </ul>
                       </li>
                </ul>
                      
        
                 
                
                    
   <!--                <li class="label">Bar Module</li>
                  
                      <li><a class="sidebar-sub-toggle"><i class="ti-cup"></i>Master Bar <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                            <li><a href="BarProfile.jsp">Bar Profile</a></li>
                              <li><a href="Supplier.jsp">Supplier</a></li>
                             <li><a href="Customer.jsp">Customer</a></li>
                               <li><a href=" ProductGroup.jsp"> Product Group</a></li>
                               <li><a href=" GstGroup.jsp"> GST Group</a></li>
                               <li><a href=" packing.jsp"> Packing</a></li>
                                <li><a href="Product.jsp">Product</a></li>
                            
                             <li><a href="SaleForm.jsp">Sale</a></li>
                             <li><a href="PurchaseForm.jsp">Purchase</a></li>
                             <li><a href="StockManagement.jsp">Stock Management</a></li>
                                                      
                        </ul>
                      </li>  -->
                  <!--   <ul>
                    <li class="label"></li>
                  
                      <li><a class="sidebar-sub-toggle"><i class="ti-cup"></i>Transaction <span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                             <li><a href="PurchaseForm.jsp">Purchase</a></li>
                             <li><a href="SaleForm.jsp">Sale</a></li>
                             <li><a href="StockManagement.jsp">Stock Management</a></li>
                                                      
                        </ul>
                        </li>
                     <ul> -->
                    <!-- <li class="label"></li>
                  
                      <li><a class="sidebar-sub-toggle"><i class="ti-cup"></i>Expenses<span class="sidebar-collapse-icon ti-angle-down"></span></a>
                        <ul>
                             <li><a href="ExpensesType.jsp">Expense Type</a></li>
                             <li><a href="Expenses.jsp">Expenses</a></li>
                                                    
                        </ul>
                        </li> -->


            </div>
        </div>
    </div>
    <!-- /# sidebar -->




    <div class="header">
        <div class="pull-left">
            <div class="logo"><a href="index.html"></a></div>
            <div class="hamburger sidebar-toggle">
                <span class="line"></span>
                <span class="line"></span>
                <span class="line"></span>
            </div>
        </div>

        <div class="pull-right p-r-15">

                        </div>
                    </div>
                </li>
                <li class="header-icon dib"><i class="ti-email"></i>
                    <div class="drop-down">
                        <div class="dropdown-content-heading">
                            <span class="text-left">2 New Messages</span>
                            <a href="email.html"><i class="ti-pencil-alt pull-right"></i></a>
                        </div>
                        <div class="dropdown-content-body">
                            <ul>
                                <li class="notification-unread">
                                    <a href="#">
                                        <img class="pull-left m-r-10 avatar-img" src="assets\images\avatar\1.jpg" alt="">
                                        <div class="notification-content">
                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                            <div class="notification-heading">Saiul Islam</div>
                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                        </div>
                                    </a>
                                </li>

                                <li class="notification-unread">
                                    <a href="#">
                                        <img class="pull-left m-r-10 avatar-img" src="assets\images\avatar\2.jpg" alt="">
                                        <div class="notification-content">
                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                            <div class="notification-heading">Ishrat Jahan</div>
                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <img class="pull-left m-r-10 avatar-img" src="assets\images\avatar\3.jpg" alt="">
                                        <div class="notification-content">
                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                            <div class="notification-heading">Saiul Islam</div>
                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <img class="pull-left m-r-10 avatar-img" src="assets\images\avatar\2.jpg" alt="">
                                        <div class="notification-content">
                                            <small class="notification-timestamp pull-right">02:34 PM</small>
                                            <div class="notification-heading">Ishrat Jahan</div>
                                            <div class="notification-text">Hi Teddy, Just wanted to let you ...</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="text-center">
                                    <a href="#" class="more-link">See All</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="header-icon dib chat-sidebar-icon"><i class="ti-comments"></i></li>
                <li class="header-icon dib"><img class="avatar-img" src="assets\images\avatar\1.jpg" alt=""> <span class="user-avatar">Hotel Sanjivani  <i class="ti-angle-down f-s-10"></i></span>
                    <div class="drop-down dropdown-profile"><!-- 
                        <div class="dropdown-content-heading">
                            <span class="text-left">Upgrade Now</span>
                            <p class="trial-day">30 Days Trail</p>
                        </div> -->
                        <div class="dropdown-content-body">
                            <ul>
                                <li><a href="#"><i class="ti-user"></i> <span>Profile</span></a></li>
                               <!--  <li><a href="#"><i class="ti-wallet"></i> <span>My Balance</span></a></li>
                                <li><a href="#"><i class="ti-write"></i> <span>My Task</span></a></li>
                      -->           <li><a href="#"><i class="ti-calendar"></i> <span>My Calender</span></a></li>
                            <!--     <li><a href="#"><i class="ti-email"></i> <span>Inbox</span></a></li>
                                <li><a href="#"><i class="ti-settings"></i> <span>Setting</span></a></li> -->
                                <li><a href="#"><i class="ti-help-alt"></i> <span>Help</span></a></li>
                                <li><a href="#"><i class="ti-lock"></i> <span>Lock Screen</span></a></li>
                                <li><a href="#"><i class="ti-power-off"></i> <span>Logout</span></a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <div class="chat-sidebar">
        <!-- BEGIN chat -->
        <div id="mmc-chat" class="color-default">
            <!-- BEGIN CHAT BOX -->
            <div class="chat-box">
                <!-- BEGIN CHAT BOXS -->
                <ul class="boxs"></ul>
                <!-- END CHAT BOXS -->
                <div class="icons-set">
                    <div class="stickers">
                        <div class="had-container">
                            <div class="row">
                                <div class="s12">
                                    <ul class="tabs" style="width: 100%;height: 60px;">
                                        <li class="tab col s3">
                                            <a href="#tab1" class="active">
                                                <img src="images/1.png" alt="">
                                            </a>
                                        </li>
                                        <li class="tab col s3"><a href="#tab2">Test 2</a></li>
                                    </ul>
                                </div>
                                <div id="tab1" class="s12 tab-content">
                                    <ul>
                                        <li><img src="images/1.png" alt=""></li>
                                        <li><img src="images/1.png" alt=""></li>
                                        <li><img src="images/1.png" alt=""></li>
                                        <li><img src="images/1.png" alt=""></li>
                                        <li><img src="images/1.png" alt=""></li>
                                        <li><img src="images/1.png" alt=""></li>
                                        <li><img src="images/1.png" alt=""></li>
                                        <li><img src="images/1.png" alt=""></li>
                                        <li><img src="images/1.png" alt=""></li>
                                        <li><img src="images/1.png" alt=""></li>
                                        <li><img src="images/1.png" alt=""></li>
                                        <li><img src="images/1.png" alt=""></li>
                                        <li><img src="images/1.png" alt=""></li>
                                    </ul>
                                </div>
                                <div id="tab2" class="s12 tab-content">Test 2</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END CHAT BOX -->
            <!-- BEGIN SIDEBAR -->
            <div id="sidebar" class="right scroll">
                <div class="had-container">
                    <!-- BEGIN USERS -->
                    <div class="users">

                        <ul class="user-list">
                            <!-- BEGIN USER-->
                            <li class="user-tooltip" data-id="1" data-status="online" data-username="Rufat Askerov" data-position="left" data-filter-item="" data-filter-name="rufat askerov">
                                <!-- BEGIN USER IMAGE-->
                                <div class="user-image">
                                    <img src="assets\images\avatar\1.jpg" class="avatar" alt="Rufat Askerov">
                                </div>
                                <!-- END USER IMAGE-->
                                <!-- BEGIN USERNAME-->
                                <span class="user-name">Rufat Askerov</span>
                                <span class="user-show"></span>
                                <!-- END USERNAME-->
                            </li>
                            <!-- END USER-->
                            <!-- BEGIN USER-->
                            <li class="user-tooltip" data-id="3" data-status="online" data-username="Alice" data-position="left" data-filter-item="" data-filter-name="alice">
                                <div class="user-image">
                                    <img src="assets\images\avatar\1.jpg" class="avatar" alt="Alice">
                                </div>
                                <span class="user-name">Alice</span>
                                <span class="user-show"></span>
                            </li>

                            <!-- BEGIN USER-->
                            <li class="user-tooltip" data-id="7" data-status="offline" data-username="Michael Scofield" data-position="left" data-filter-item="" data-filter-name="michael scofield">
                                <div class="user-image">
                                    <img src="assets\images\avatar\1.jpg" class="avatar" alt="Michael Scofield">
                                </div>
                                <span class="user-name">Michael Scofield</span>
                                <span class="user-show"></span>
                            </li>

                            <!-- BEGIN USER-->
                            <li class="user-tooltip" data-id="5" data-status="online" data-username="Irina Shayk" data-position="left" data-filter-item="" data-filter-name="irina shayk">
                                <div class="user-image">
                                    <img src="assets\images\avatar\1.jpg" class="avatar" alt="Irina Shayk">
                                </div>
                                <span class="user-name">Irina Shayk</span>
                                <span class="user-show"></span>
                            </li>

                            <!-- BEGIN USER-->
                            <li class="user-tooltip" data-id="6" data-status="offline" data-username="Sara Tancredi" data-position="left" data-filter-item="" data-filter-name="sara tancredi">
                                <div class="user-image">
                                    <img src="assets\images\avatar\1.jpg" class="avatar" alt="Sara Tancredi">
                                </div>
                                <span class="user-name">Sara Tancredi</span>
                                <span class="user-show"></span>
                            </li>

                            <!-- BEGIN USER-->
                            <li class="user-tooltip" data-id="7" data-status="offline" data-username="Saifun" data-position="left" data-filter-item="" data-filter-name="saifun">
                                <div class="user-image">
                                    <img src="assets\images\avatar\1.jpg" class="avatar" alt="Saifun">
                                </div>
                                <span class="user-name">Saifun</span>
                                <span class="user-show"></span>
                            </li>
                        </ul>
                        <div class="chat-user-search">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="ti-search"></i></span>
                                <input type="text" class="form-control" placeholder="Search" data-search="">
                            </div>
                        </div>
                    </div>
                    <!-- END USERS -->

                </div>
            </div>
            <!-- END SIDEBAR -->
        </div>
        <!-- END chat -->
    </div>
     END chat Sidebar
     <script src="assets\js\lib\jquery.min.js"></script>
    jquery vendor
    <script src="assets\js\lib\jquery.nanoscroller.min.js"></script>
    nano scroller
    <script src="assets\js\lib\sidebar.js"></script>
    sidebar
    <script src="assets\js\lib\bootstrap.min.js"></script>
    bootstrap
    <script src="assets\js\lib\mmc-common.js"></script>
  <!--   <script src="assets\js\lib\mmc-chat.js"></script> -->

    <script src="assets\js\lib\calendar-2\moment.latest.min.js"></script>
    scripit init
    <script src="assets\js\lib\calendar-2\semantic.ui.min.js"></script>
    scripit init
    <script src="assets\js\lib\calendar-2\prism.min.js"></script>
    scripit init
    <script src="assets\js\lib\calendar-2\pignose.calendar.min.js"></script>
    scripit init
    <script src="assets\js\lib\calendar-2\pignose.init.js"></script>
    scripit init


    <script src="assets\js\scripts.js"></script>
    scripit init
    </body>
</html>