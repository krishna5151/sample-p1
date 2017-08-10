<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/bootstrap/js/bootstrap.min.js">

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<form action="./expenses_servlet" method="get">



		<div class="style text-align:center">

			<div class="jumbotron">
				<div class="container-fluid text-left">
					<div class="page-header">
						<h2>Add my Expenses</h2>
					</div>
				</div>
			</div>


			<div data-ng-app=""
				data-ng-init="tcost;acost;tfare;bfast;lunch;dinner;encost;other;total">

				<div class="form-group">
					<label class="col-md-offset-2 col-md-2 control-label">EXID
						:</label>
					<div class="col-md-5 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input type="text"
								class="form-control" name="exid" placeholder="Exid">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-offset-2 col-md-2 control-label">TRAVELLING
						COST :</label>
					<div class="col-md-5 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input type="number"
								class="form-control" ng-model="tcost" name="tcost"
								placeholder="Travel Cost">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-offset-2 col-md-2 control-label">ACCOMODATION
						COST :</label>
					<div class="col-md-5 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <input type="number"
								ng-model="acost" class="form-control" name="acost"
								placeholder="Accomodation Cost">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-offset-2 col-md-2 control-label">TAXI
						FARES :</label>
					<div class="col-md-5 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input type="number"
								ng-model="tfare" class="form-control" name="tfare"
								placeholder="Taxi Fares">
						</div>
					</div>
				</div>


				<div class="form-group">
					<label class="col-md-offset-2 col-md-2 control-label">BREAK
						FAST :</label>
					<div class="col-md-5 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-cutlery"></i></span> <input type="number"
								ng-model="bfast" class="form-control" name="bfast"
								placeholder="Break fast">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-offset-2 col-md-2 control-label">LUNCH
						:</label>
					<div class="col-md-5 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-cutlery"></i></span> <input type="number"
								ng-model="lunch" class="form-control" name="lunch"
								placeholder="Lunch">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-offset-2 col-md-2 control-label">DINNER
						:</label>
					<div class="col-md-5 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-cutlery"></i></span> <input type="number"
								ng-model="dinner" class="form-control" name="dinner"
								placeholder="Dinner">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-offset-2 col-md-2 control-label">ENTERTAINMENT
						COST :</label>
					<div class="col-md-5 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-film"></i></span> <input type="number"
								ng-model="encost" class="form-control" name="encost"
								placeholder="Ecost">
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-offset-2 col-md-2 control-label">OTHER
						EXPENSES :</label>
					<div class="col-md-5 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-glass"></i></span> <input type="number"
								ng-model="other" class="form-control" name="other"
								placeholder="Other">
						</div>
					</div>
				</div>



				<div class="form-group">
					<lable class="col-md-offset-2 col-md-2 control-label">
					<b>TOTAL AMOUNT :</b></lable>
					<div class="col-md-5 inputGroupContainer">
						<div class="input-gorup">

							<input type="text" class="form-control"
								value="{{tcost + acost + tfare + bfast + lunch + dinner + encost + other + total}}" name="total"> <b></b>
						</div>
					</div>
				</div>




				<input type="submit"
					class="col-md-offset-5 col-sd-2 btn btn-success" value="submit">
			</div>
		</div>
	</form>
</body>
</html>