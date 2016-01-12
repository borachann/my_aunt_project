<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
<meta name="author" content="Coderthemes">
<style>
.hidetable {
	display: none;
}

thead tr th {
	text-align: center;
	font-size: 12px;
}

tbody tr td {
	text-align: center;
}
</style>
<link rel="shortcut icon" href="images/favicon_1.ico">

<title>KOSIGN WeCafe...</title>

<!-- Base Css Files -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Font Icons -->
<link
	href="${pageContext.request.contextPath}/resources/assets/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/assets/ionicon/css/ionicons.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/material-design-iconic-font.min.css"
	rel="stylesheet">

<!-- animate css -->
<link
	href="${pageContext.request.contextPath}/resources/css/animate.css"
	rel="stylesheet" />

<!-- Waves-effect -->
<link
	href="${pageContext.request.contextPath}/resources/css/waves-effect.css"
	rel="stylesheet">

<!-- sweet alerts -->
<link
	href="${pageContext.request.contextPath}/resources/assets/sweet-alert/sweet-alert.min.css"
	rel="stylesheet">

<!-- Custom Files -->
<link href="${pageContext.request.contextPath}/resources/css/helper.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

<script
	src="${pageContext.request.contextPath}/resources/js/modernizr.min.js"></script>

</head>



<body class="fixed-left" ng-app="wecafe">

	<!-- Begin page -->
	<div id="wrapper" ng-controller="ImportController as controller">

		<!-- Top Bar Start -->
		<%@ include file="topbar.jsp"%>
		<!-- Top Bar End -->


		<!-- ========== Left Sidebar Start ========== -->
		<%@ include file="left_sidebar.jsp"%>
		<!-- Left Sidebar End -->



		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">

					<!-- Page-Title -->
					<div class="row">
						<div class="col-sm-12">
							<h4 class="pull-left page-title">Import List</h4>
						</div>
					</div>
					<div class="panel-body">
						<div class="panel-heading">
							<!-- <h3 class="panel-title">Product Lists</h3> -->
							<!-- <form class="form-inline">
						        <div class="form-group">
						            <label >Search</label>
						            <input type="text" ng-model="search" class="form-control" placeholder="Search" width="400%">
						        </div>
						    </form> -->
							<div class="m-h-50 form-group hidden-print ">
								<div class="col-sm-9">
									<label class="col-sm-1 control-label">Date : </label> <input
										type="hidden" id="SEND_DT" data-id="SEND_DT" />
									<div id="sendFrdt" class="date-range col-sm-5">
										<input type="text" readonly="readonly" id="REGS_DATE_S"
											name="startdate" class="range-start"
											style="width: 100px; text-align: center;">&nbsp; <a
											href="#none" id="btnREGS_DATE_S"><img
											style="width: 20px; height: 20px;"
											src="${pageContext.request.contextPath}/resources/images/img/ico_calendar.png"></a>&nbsp;~&nbsp;
										<input type="text" readonly="readonly" id="REGS_DATE_E"
											name="stopdate" class="range-end"
											style="width: 100px; text-align: center;">&nbsp; <a
											href="#none" id="btnREGS_DATE_E"><img
											style="width: 20px; height: 20px;"
											src="${pageContext.request.contextPath}/resources/images/img/ico_calendar.png"></a>
									</div>
								</div>
								<!-- <div class="col-sm-3 form-group">
									<select class="form-control" id="sel1">
										<option>Detail</option>
										<option>Daily</option>
										<option>Weekly</option>
										<option>Monthly</option>
										<option>Yearly</option>
									</select>
								</div> -->

							</div>
						</div>
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<table id="datatable" class="table table-striped table-bordered">
									<thead>
										<tr>
											<th>#</th>
											<th>Invoice ID</th>
											<th style="text-align: center;">Date</th>
											<th>Name</th>
											<th style="text-align: right;">Total Amount</th>
											<th style="text-align: center;">Action</th>
										</tr>
									</thead>
									<tbody id="CONTENTS">
										<%-- <tr
											dir-paginate="(key,importproducts) in imports|filter:search|itemsPerPage:perPage|orderBy : importproducts.createdDate">
											<td>{{key+1}}</td>
											<td><a href="javascript:;" id="impid">
													{{importproducts.impId}}</a></td>
											<td style="text-align: center;">{{importproducts.impDate
												| date:'dd-MMMM-yyyy'}}</td>
											<td>{{importproducts.userId }}
											<td style="text-align: right;">{{importproducts.totalAmount
												}} Riel
											<td class="actions" style="text-align: center;"><a
												class="on-default edit-row"
												href="${pageContext.request.contextPath}/admin/viewById/{{importproducts.impId}}"><i
													class="fa fa-pencil"></i></a> <a class="on-default remove-row"
												href="javascript:;" id="btnRemove"><i
													class="fa fa-trash-o"></i></a></td>
										</tr> --%>

									</tbody>
								</table>
								
							</div>
						</div>
						<div class="row">
							<div class="col-md-2">
								<select id="PER_PAGE" class="form-control">
									<option value="15">15</option>
									<option value="30">30</option>
									<option value="50">50</option>
									<option value="100">100</option>
								</select>
							</div>
							<div class="col-md-10 form-horizontal" align="right">
								<label  class="control-label col-md-9">Total Amount : </label>
									<div class="col-md-3">
											<input class="form-control" readonly="readonly" id="allTotalAmount" type="text">
									</div>												
							</div>
							<div id="PAGINATION" class="pull-right"></div>
						</div>
					</div>

				</div>
				<!-- end Panel -->

			</div>
			<!-- container -->

		</div>
		<!-- content -->

		<%@ include file="footer.jsp"%>

	</div>
	</div>
	<!-- END wrapper -->

	<!-- ############################################################# -->


	<div id="impDetail" style="display: none; width: 90%;">
		<div class="modal-content">
			<div class="modal-header">

				<button type="button" class="close" aria-hidden="true">
					<span class="button b-close"><span>×</span></span>
				</button>
				<h4 class="modal-title">Import Detail</h4>

			</div>
			<div class="modal-body" style="width: 100%;">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>Produce Name</th>
							<th>Qty</th>
							<th>Unit Price</th>
							<th>Supplier Name</th>
						</tr>
					</thead>
					<tbody id="impProDetail">

					</tbody>

				</table>
			</div>
			<div class="modal-footer" style="height: 80px;">
					<div style="float: left;">
						<div class="form-group form-horizontal">
							<label class="control-label col-lg-6">Total Amount</label>
							<div class="col-lg-6">
								<input class=" form-control" id="txttotal" type="text"
									readonly="readonly">
							</div>
						</div>
					</div>
					<div align="right">
						<button class="btn btn-default b-close">Close</button>
					</div>
				</div>
		</div>
	</div>

	<!-- ################################################################## -->

	<script>
            var resizefunc = [];
            var ctx = "${pageContext.request.contextPath}"
    </script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script src="<c:url value='/resources/scripts/dirPagination.js' />"></script>
	<script src="<c:url value='/resources/scripts/app.js' />"></script>
	<script
		src="<c:url value='/resources/scripts/services/import_service.js' />"></script>
	<script
		src="<c:url value='/resources/scripts/controllers/import_controller.js' />"></script>
	
	<!-- jQuery  -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ui.datepicker-ko.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">
	<%-- <script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script> --%>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/waves.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.scrollTo.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/chat/moment-2.2.1.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-detectmobile/detect.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-slimscroll/jquery.slimscroll.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-blockui/jquery.blockUI.js"></script>

	<!-- sweet alerts -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/sweet-alert/sweet-alert.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/sweet-alert/sweet-alert.init.js"></script>

	<!-- Counter-up -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/counterup/waypoints.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/counterup/jquery.counterup.min.js"
		type="text/javascript"></script>

	<!-- CUSTOM JS -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.app.js"></script>
<script	src="${pageContext.request.contextPath}/resources/js/jquery.tmpl.min.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/jquery.bootpag.min.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/jquery.bpopup.min.js"></script>
	<script	src="${pageContext.request.contextPath}/resources/js/numeral.min.js"></script>
	<script id="CONTENT_Importlist" type="text/x-jquery-tmpl">
	<tr>
		<td>{{= importDetail}} </td>
		<td><a herf="javascript:" style="cursor:pointer" id="impid">{{= impId}}</a></td>
		<td>{{= impDate}}</td>
		<td>{{= user.firstName +' '+ user.lastName}} </td>
		<td>{{= totalAmount}}</td>  
		<td class="actions" style="text-align: center;">
			<a class="on-default edit-row" href="${pageContext.request.contextPath}/admin/viewById/{{= impId}}">
			<i class="fa fa-pencil"></i></a> <a class="on-default remove-row" href="javascript:;" id="btnRemove">
			<i class="fa fa-trash-o"></i></a>
		</td>
	</tr>
</script>
	<script type="text/javascript">

		/* ==============================================
		Counter Up
		=============================================== */
		jQuery(document).ready(function($) {
			
			var check = true;
			var order = 1;
			// searchProduct();
			// searchSupplier();
			 setCalendar();
			// searchByDate();
			 
			 getimportlist(1); 
			 $("#btnREGS_DATE_S").click(function(){	
		 			$( "#REGS_DATE_S" ).datepicker("show");		
		 			
		 		});		
		 	$("#btnREGS_DATE_E").click(function(){
		 			$( "#REGS_DATE_E" ).datepicker("show");			
		 		});

		 function calculateDay(start, end){		
		         var days = (end - start) / (1000 * 60 * 60 * 24);
		         $("#totalday").val(days);
		         return;
		 }

		 function setCalendar(){		
		 		$("#REGS_DATE_S").datepicker({
		 		      defaultDate: new Date(),
		 		      setDate: new Date(),
		 		      changeMonth: true,
		 		      numberOfMonths: 1,
		 		      dateFormat: "yy-mm-dd",
		 		      onClose: function( selectedDate ) {			    	  
		 			    	    /* alculateDay($("#REGS_DATE_S").datepicker("getDate"),$("#REGS_DATE_E").datepicker("getDate")); */
		 						//moneyPerDay($("#totalAmount").val(), $("#totalday").val());
		 						$("#REGS_DATE_E").datepicker("option", "minDate", selectedDate);
		 						getimportlist(1);
		 			      }
		 		});
		 		$("#REGS_DATE_E").datepicker({
		 		     defaultDate: new Date(),
		 		      setDate: new Date(),
		 		      changeMonth: true,
		 		      numberOfMonths: 1,
		 		      dateFormat: "yy-mm-dd",
		 		      onClose: function( selectedDate ) {

		 			    	  $("#REGS_DATE_S").datepicker("option", "maxDate", selectedDate);
		 			    	   /*  calculateDay($("#REGS_DATE_S").datepicker("getDate"),$("#REGS_DATE_E").datepicker("getDate")); */
		 						//moneyPerDay($("#totalAmount").val(), $("#totalday").val());
		 			    	 getimportlist(1);
		 			      }
		 		});		
		 		
		 		$("#REGS_DATE_S").datepicker('setDate', moment().subtract(30, 'days').format('YYYY-MM-DD'));
		 		$("#REGS_DATE_E").datepicker('setDate', moment().format('YYYY-MM-DD'));
		 		//$("#REGS_DATE_E").datepicker('setDate', moment().format('YYYY-MM-DD'));
		 }
			 function searchByDate(){
			      	var startDate 		= $( "#REGS_DATE_S" ).val() + " 00:00:00";
					var endDate 		= $( "#REGS_DATE_E" ).val() + " 24:00:00"; 
					json = {
								"startdate"   		  : startDate,
								"enddate" 		  	  : endDate
					};
					console.log(JSON.stringify(json));
					$.ajax({
						 url: "${pageContext.request.contextPath}/admin/getsearchsellbydate", 
				    type: 'POST',
						datatype: 'JSON',
						data: JSON.stringify(json), 
						beforeSend: function(xhr) {
				            xhr.setRequestHeader("Accept", "application/json");
				            xhr.setRequestHeader("Content-Type", "application/json");
				        },
						success: function(data){
							st="";
							
			            	var a = 1;
			            	var total = 0;
			            	
				            for(i=0; i<data.length; i++)	
					      	{ 
				            	a = i+1;
				            	total += data[i].Total ;
					    	  	st += "<tr>"
					    	  	st += "<td>" + a + "</td> "
					    	  	st += "<td>" + data[i].productName + "</td>";
					    	  	st += "<td>" + data[i].proQty + "</td>";
					    	  	st += "<td>" + data[i].UnitPrice + "</td>";
					    	  	st += "<td>" + data[i].Total + "</td>"; 
					    	  
					    	}
				            
			      			$("#searchDetail").html(st);
			      			$("#totalPrice").html(total);
						},
						error:function(data, status,er){
							console.log("error: " + data + "status: " + status + "er: ");
						}
					}); 
				 }
			//$('#datatable').dataTable();
			 $(document).on("click","#impid", function(){
				   $.ajax({ 
					    url: "${pageContext.request.contextPath}/admin/getimportdetail/" + $(this).html() , 
					    type: 'POST', 
					    dataType: 'JSON', 
					    beforeSend: function(xhr) {
		                    xhr.setRequestHeader("Accept", "application/json");
		                    xhr.setRequestHeader("Content-Type", "application/json");
		                },
					    success: function(data) { 
					    	console.log(data);
					    	var	amount = 0;
					    	var st= "";
					       for(i=0; i<data.length; i++){
					    	   st += "<tr><td>" + (i + 1) + "</td>";
					    	   st += "<td>" + data[i].proname +"</td>";
					    	   st += "<td>" + numeral( data[i].proqty).format('0,0') +"</td>";
					    	   st += "<td>" + numeral(data[i].prounitprice).format('0,0') +"</td>";
					    	   st += "<td>" + data[i].supname +"</td></tr>";
					    	   amount += (data[i].prounitprice * data[i].proqty);
					       }
					       $("#txttotal").val(numeral(amount).format('0,0'));
					       $("#impProDetail").html(st);
					    },
					    error:function(data,status,er) { 
					        console.log("error: "+data+" status: "+status+" er:"+er);
					    }
					});
				 
				  $("#impDetail").bPopup();  
			 });
			 function getimportlist(currentPage){
				 var json = {
						 	"currentPage" : currentPage,
				    		"perPage"     : $("#PER_PAGE").val(),
			   				"start_date" : $("#REGS_DATE_S").val(),
			   				"end_date"   : $("#REGS_DATE_E").val()
					};$.ajax({
					 url: "${pageContext.request.contextPath}/admin/getimportlist/",
					 type: 'GET',
					 data: json, 
					    beforeSend: function(xhr) {
		                    xhr.setRequestHeader("Accept", "application/json");
		                    xhr.setRequestHeader("Content-Type", "application/json");
		                },
					 success: function(data){
						 console.log(data);
						 if(data.imports.length>0){ 
							  order = 1;
								$("tbody#CONTENTS").html('');					
								for(i=0; i<data.imports.length;i++)
									{
										format(data.imports[i]); 
									}
								$("#CONTENT_Importlist").tmpl(data.imports).appendTo("tbody#CONTENTS");
								$("#allTotalAmount").val(numeral(data.total_amount[0].total_amount).format('0,0'));
							}else{
								$("tbody#CONTENTS").html('<tr>NO CONTENTS</tr>');
								$("#allTotalAmount").val("");
							}
					    	if(check){
					    		setPagination(data.pagination.totalPages,1);
					    		check=false;
					    	}
					 },
					 error:function(data,status,er){
						 console.log("error: "+data+" status: "+status+" er: "+ er);
					 } 
				 });
			 }
			 format = function(value){
				 		value["totalAmount"] = numeral(value["totalAmount"]).format('0,0');				 		
				 		value["impDate"] =(value["impDate"]).substring(0, 10);
				 		value["importDetail"] = order++;
			 }
			 $("#PER_PAGE").change(function(){
     			check = true;
     			getimportlist(1);
 		    });
			function searchSupplier(){
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/admin/searchsupplier", 
				    type: 'POST', 
				    dataType: 'JSON', 
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				       console.log(data);
	// 			       getsizeSession();
				    },
				    error:function(data,status,er) { 
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
				
			}
		
		function searchProduct(){
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/admin/searchproduct", 
				    type: 'POST', 
				    dataType: 'JSON', 
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				       console.log(data);
	// 			       getsizeSession();
				    },
				    error:function(data,status,er) { 
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
				
			}
		setPagination = function(totalPage, currentPage){
	    	$('#PAGINATION').bootpag({
		        total: totalPage,
		        page: currentPage,
		        maxVisible: 10,
		        leaps: true,
		        firstLastUse: true,
		        first: 'First',
		        last: 'Last',
		        wrapClass: 'pagination',
		        activeClass: 'active',
		        disabledClass: 'disabled',
		        nextClass: 'next',
		        prevClass: 'prev',
		        lastClass: 'last',
		        firstClass: 'first'
		    }).on("page", function(event, currentPage){
		    	check = false;
		    	getimportlist(currentPage);
		    }); 
		};
		});
	</script>

	<!-- Examples -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/datatables/dataTables.bootstrap.js"></script>





</body>
</html>