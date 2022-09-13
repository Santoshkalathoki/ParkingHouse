<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>

<!doctype html>

<html class="no-js" lang="">
    <head>

        <title>Parking House - User Dashboard</title>


<!--        <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
        <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">-->

        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
        <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link
            href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css"
            rel="stylesheet">
        <link
            href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css"
            rel="stylesheet">

        <link
            href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css"
            rel="stylesheet" />
        <link
            href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css"
            rel="stylesheet" />

        <style>
            #weatherWidget .currentDesc {
                color: #ffffff !important;
            }

            .traffic-chart {
                min-height: 335px;
            }

            #flotPie1 {
                height: 150px;
            }

            #flotPie1 td {
                padding: 3px;
            }

            #flotPie1 table {
                top: 20px !important;
                right: -10px !important;
            }

            .chart-container {
                display: table;
                min-width: 270px;
                text-align: left;
                padding-top: 10px;
                padding-bottom: 10px;
            }

            #flotLine5 {
                height: 105px;
            }

            #flotBarChart {
                height: 150px;
            }

            #cellPaiChart {
                height: 160px;
            }
            .card{
                width: 90%;

                height: 80%;
            }
        </style>
    </head>

    <body>
        <%
            if (session.getAttribute("email") != null && session.getAttribute("email") != "") {
        %>
        <jsp:include page="includes/user-sidebar.jsp"></jsp:include>

        <jsp:include page="includes/user-header.jsp"></jsp:include>

            <!-- Content -->
            <div class="content">
                <!-- Animated -->
                <div class="animated fadeIn">
                    <!-- Widgets  -->
                    <div class="row">

                        <div class="col-lg-3 col-md-6">
                        <%
                            int count = 0;
                            Connection con = DatabaseConnection.getConnection();
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select count(*) from tblvehicle where status=''");
                            while (rs.next()) {
                                count = rs.getInt(1);
                            }
                        %>
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-2">
                                        <i class="pe-7s-bicycle"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text">
                                                <span class="count"> <%=count%>
                                                </span>
                                            </div>
                                            <div class="stat-heading">Total Booking</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-3 col-md-6">
                        <%
                            int slot_capacity = 0;
                            Statement statement = con.createStatement();
                            ResultSet resultset = statement.executeQuery("select * from tblParkingSeatCapacity");
                            while (resultset.next()) {
                                slot_capacity = resultset.getInt(1);
                            }
                        %>
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-2">
                                        <i class="pe-7s-bicycle"></i>
                                        <p>Total Parking Slots </p>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text">
                                                <span class="count"> <%=slot_capacity%>
                                                </span>
                                            </div>
                                          
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                                                
                                                <div class="col-lg-3 col-md-6">
                      
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-2">
                                        <i class="pe-7s-bicycle"></i>
                                         <p>Parking Seats Available</p>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text">
                                                <span class="count"> <%=slot_capacity-count%>
                                                </span>
                                            </div>
                                               
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                                                
                                                


                    <!-- /Widgets -->
                </div>
                <!-- .animated -->
            </div>
        </div>

       




            <script
            src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
            <script
            src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
            <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
            <script
            src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
            <script src="assets/js/main.js"></script>

            <!--  Chart js -->
            <script
            src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

            <!--Chartist Chart-->
            <script
            src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
            <script
            src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

            <script
            src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
            <script
            src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
            <script
            src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

            <script
            src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
            <script src="assets/js/init/weather-init.js"></script>

            <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
            <script
            src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
            <script src="assets/js/init/fullcalendar-init.js"></script>

            <!--Local Stuff-->


        <%

            } else {
                response.sendRedirect("user-login.jsp");
            }
        %>



    </body>
    <jsp:include page="includes/footer.jsp"></jsp:include>
</html>
