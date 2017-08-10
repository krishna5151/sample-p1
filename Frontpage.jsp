<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  
  
  </head>
  <body>
   <form action="./addexpenses.jsp" method="get">
  <div class="table table-bordered well">
  <div class="container ">
  <div class="jumbotron">
  	<div class="well center">	
	<h2>Front Page</h2>  
 	</div>
    <div id="datetimepicker" class="input-append date">
    <label class="col-md-offset-2 col-md-2 control-label">Set Date & Time :</label>
      <input type="text" placeholder="Date & Time" name="datetime"></input>
      <span class="add-on">
        <i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
      </span>
    </div>
    
    <jsp:include page="FrontPageLink.jsp" />
		
					
		<div class="form-group">
  			<label class="col-md-offset-2 col-md-2 control-label">From :</label>  
  				<div class="col-md-5 inputGroupContainer">
 					 <div class="input-group">
  						<span class="input-group-addon"><i  class="fa fa-bus""></i></span>
  							<input type="text"class="form-control"name="Fromplace" placeholder="From" >
    				</div>
 				</div>
		</div>
		
							
		<div class="form-group">
  			<label class="col-md-offset-2 col-md-2 control-label">To :</label>  
  				<div class="col-md-5 inputGroupContainer">
 					 <div class="input-group">
  						<span class="input-group-addon"><i class="glyphicon glyphicon-bus"></i></span>
  							<input type="text"class="form-control"name="Toplace" placeholder="To" >
    				</div>
 				</div>
		</div>
				<button type="submit" class="btn btn-success">submit</button>
	
		</div>
		
		
		
 </div>
 </div>

</form>
  </body>
</html>