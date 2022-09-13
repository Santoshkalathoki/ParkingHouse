<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>

<!doctype html>

<html class="no-js" lang="">
<head>

<title>Parking House - Admin Dashboard</title>


<!--<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
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
<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
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
    height:  150px;
    
}
.stat-icon{
    padding: 10px
}
</style>
</head>

<body>
	<%
		if (session.getAttribute("email") != null && session.getAttribute("email") != "") {
	%>
	<jsp:include page="includes/sidebar.jsp"></jsp:include>

	<jsp:include page="includes/header.jsp"></jsp:include>

	<!-- Content -->
	<div class="content">
		<!-- Animated -->
		<div class="animated fadeIn">
			<!-- Widgets  -->
			<div class="row">
				<%
					int count_today_vehentries = 0;
						Connection con = DatabaseConnection.getConnection();
						Statement statement = con.createStatement();
						ResultSet resultset = statement
								.executeQuery("select count(*) from tblvehicle where date(InTime)=CURDATE()");
						while (resultset.next()) {
							count_today_vehentries = resultset.getInt(1);
						}
				%>

                                <div class="col-lg-3 col-md-6">
					<div class="card" style=" height: 150px;">
						<div class="card-body ">
							<div class="stat-widget-five">
								<div class="stat-icon dib flat-color-1">
									<i class="pe-7s-bicycle"></i>
								</div>
								<div class="stat-content">
									<div class="text-left dib">
										<div class="stat-text">
											<span class="count"><%=count_today_vehentries%> </span>
										</div>
										<div class="stat-heading">Todays Vehicle Entries</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<%
						int count_yesterday_vehentries = 0;
							Statement st = con.createStatement();
							ResultSet rs = st.executeQuery("select count(*) from tblvehicle where date(InTime)=CURDATE()-1 ");
							while (rs.next()) {
								count_yesterday_vehentries = rs.getInt(1);
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
											<span class="count"> <%=count_yesterday_vehentries%>
											</span>
										</div>
										<div class="stat-heading">Yesterdays Vehicle Entries</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<%
						int count_lastsevendays_vehentries = 0;
							Statement stmt = con.createStatement();
							ResultSet rst = stmt.executeQuery(
									"select count(*) from tblvehicle where date(InTime)>=(DATE(NOW()) - INTERVAL 7 DAY)");
							while (rst.next()) {
								count_lastsevendays_vehentries = rst.getInt(1);
							}
					%>
					<div class="card">
						<div class="card-body">
							<div class="stat-widget-five">
								<div class="stat-icon dib flat-color-3">
									<i class="pe-7s-bicycle"></i>
								</div>
								<div class="stat-content">
									<div class="text-left dib">
										<div class="stat-text">
											<span class="count"> <%=count_lastsevendays_vehentries%>
											</span>
										</div>
										<div class="stat-heading">Last 7 days Vehicle Entries</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<%
						int count_total_vehentries = 0;
							Statement allstmt = con.createStatement();
							ResultSet allrst = allstmt.executeQuery("select count(*) from tblvehicle");
							while (allrst.next()) {
								count_total_vehentries = allrst.getInt(1);
							}
					%>

					<div class="card">
						<div class="card-body">
							<div class="stat-widget-five">
								<div class="stat-icon dib flat-color-4">
									<i class="pe-7s-bicycle"></i>
								</div>
								<div class="stat-content">
									<div class="text-left dib">
										<div class="stat-text">
											<span class="count"> <%=count_total_vehentries%>
											</span>
										</div>
										<div class="stat-heading">Total Vehicles Entries</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
			<div class="col-lg-6 col-md-6">
					<%
						 	int booking_seats = 0;
							Statement bookingstmt = con.createStatement();
							ResultSet bookingrst = allstmt.executeQuery("select count(*) from tblvehicle where status=''");
							while (bookingrst.next()) {
								booking_seats = bookingrst.getInt(1);
							}
					%>

					<div class="card">
						<div class="card-body">
							<div class="stat-widget-five">
								<div class="stat-icon dib flat-color-4">
									<i class="pe-7s-bicycle"></i>
								</div>
								<div class="stat-content">
									<div class="text-left dib">
										<div class="stat-text">
											<span class="count"> <%=booking_seats%>
											</span>
										</div>
										<div class="stat-heading">Total Bookings</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<%
						 	int ParingSeatCapactiy=0;
							Statement ParingCapactiyStmt = con.createStatement();
							ResultSet ParingCapactiyrst = allstmt.executeQuery("select * from tblparkingseatcapacity");
							while (ParingCapactiyrst.next()) {
								ParingSeatCapactiy = ParingCapactiyrst.getInt(1);
							}
					%>
					<div class="card">
						<div class="card-body">
							<div class="stat-widget-five">
								<div class="stat-icon dib flat-color-4">
									<i class="pe-7s-bicycle"></i>
								</div>
								<div class="stat-content">
									<div class="text-left dib">
										<div class="stat-text">
											<span class="count"> <%=ParingSeatCapactiy%>
											</span>
										</div>
										<div class="stat-heading">Parking Seats Capacity</div>
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
	<!-- /.content -->
	<div class="clearfix"></div>
	<!-- Footer -->
	<jsp:include page="includes/footer.jsp"></jsp:include>

	<!-- /#right-panel -->

	<!-- Scripts -->
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
			response.sendRedirect("admin-login.jsp");
		}
	%>
</body>
</html>
