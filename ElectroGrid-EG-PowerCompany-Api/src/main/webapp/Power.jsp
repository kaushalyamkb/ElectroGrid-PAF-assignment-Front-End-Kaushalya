<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@ page import="java.util.*" %>
<%@ page import="com.electrogrid.model.*" %>
<%@ page import="com.electrogrid.repository.*" %>



<%
	PowerRepository powerrpository=new PowerRepository();
	List<Power> powers= powerrpository.getPowers();
%>

    
    
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="views/bootstrap.min.css">
<link rel="stylesheet" href="views/power.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="components/user.js"></script>

<meta charset="ISO-8859-1">

<title>User List</title>
</head>
<body>

<figure class="text-center">
	<blockquote class="blockquote">
		<h2><b>POWER MANAGEMENT</b></h2>
	</blockquote>
	<figcaption class="blockquote-footer">
		MANAGE THE POWER CONSUPTION DETAILS
	</figcaption>
</figure>


<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>Manage <b>Power</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="#addPowerModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New User</span></a>												
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover" id="displayUsers">
				<thead>
					<tr>						
						<th>Power Conn, Type</th>
						<th>Bill ID</th>
 						<th>Used Units</th>
 						<th>Unit Value</th>
 						<th>Paid Amount</th>
						<th>Balance</th> 
	 					<th>Bill Amount</th>
	 					<th>Action</th>
					</tr>
				</thead>
				<tbody>
				
				<%for (int recodeCount = 0; recodeCount < powers.size();recodeCount++){ %>
				<% Power power = powers.get(recodeCount); %>
				
 					<tr>						
						<td><%= power.getPower_connection_type() %> </td>
 						<td><%= power.getPower_bill_id() %> </td>
 						<td><%= power.getPower_used_units() %> </td>
 						<td><%= power.getPower_unit_value() %> </td>
 						<td><%= power.getPower_pay_value() %> </td>
 						<td><%= power.getPower_pay_balance() %></td>
 						<td><%= power.getPower_bill_value() %></td>
											
						<td>
							<a href="#editPowerModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
							<a href="#deletePowerModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
					</tr>
				<%} %>
				</tbody>
			</table>
			
			<div class="clearfix">
				<div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
				<ul class="pagination">
					<li class="page-item disabled"><a href="#">Previous</a></li>
					<li class="page-item"><a href="#" class="page-link">1</a></li>
					<li class="page-item"><a href="#" class="page-link">2</a></li>
					<li class="page-item active"><a href="#" class="page-link">3</a></li>
					<li class="page-item"><a href="#" class="page-link">4</a></li>
					<li class="page-item"><a href="#" class="page-link">5</a></li>
					<li class="page-item"><a href="#" class="page-link">Next</a></li>
				</ul>
			</div>
		</div>
	</div>        
</div>

<!-- Add Modal HTML -->
<div id="addPowerModal" name = "addPowerModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form id="addformPower" name="addformPower">
				<div class="modal-header">						
					<h4 class="modal-title">Add Power Consumption</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>power_connection_type</label>
						<input type="text" class="form-control" id = "power_connection_type" name = "power_connection_type" required>
					</div>
					<div class="form-group">
						<label>power_bill_id</label>
						<input type="text" class="form-control" id = "power_bill_id" name = "power_bill_id" required>
					</div>					
					<div class="form-group">
						<label>power_used_units</label>
						<textarea class="form-control" id = "power_used_units" name = "power_used_units" required></textarea>
					</div>
					<div class="form-group">
						<label>power_unit_value</label>
						<input type="text" class="form-control" id = "power_unit_value" name = "power_unit_value" required>
					</div>
					<div class="form-group">
						<label>power_pay_value</label>
						<input type="text" class="form-control" id = "power_pay_value" name = "power_pay_value" required>
					</div>
					<div class="form-group">
						<label>power_pay_balance</label>
						<input type="text" class="form-control" id = "power_pay_balance" name = "power_pay_balance" required>
					</div>
					<div class="form-group">
						<label>power_bill_value</label>
						<input type="text" class="form-control" id = "power_bill_value" name = "power_bill_value" required>
					</div>
										
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-success" id = "addPower" name = "addPower" value="Add">
				</div>
			</form>
			<div id="alertSuccess" class="alert alert-success"></div>
			<div id="alertError" class="alert alert-danger"></div>
		</div>
	</div>
</div>

	
<!-- Edit Modal HTML -->
<div id="editPowerModal" name = "editPowerModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form id="editformPower" name="editformPower">
				<div class="modal-header">						
					<h4 class="modal-title">Edit Power</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>power_connection_type</label>
						<input type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>power_bill_id</label>
						<input type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>power_used_units</label>
						<textarea class="form-control" required></textarea>
					</div>
					<div class="form-group">
						<label>power_unit_value</label>
						<input type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>power_pay_value</label>
						<input type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>power_pay_balance</label>
						<input type="text" class="form-control" required>
					</div>		
					<div class="form-group">
						<label>power_bill_value</label>
						<input type="text" class="form-control" required>
					</div>			
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-info" value="Save">
				</div>
			</form>
		</div>
	</div>
</div>

<!-- Delete Modal HTML -->
<div id="deletePowerModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form>
				<div class="modal-header">						
					<h4 class="modal-title">Delete Power</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<p>Are you sure you want to delete these Records?</p>
					<p class="text-warning"><small>This action cannot be undone.</small></p>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-danger" value="Delete">
				</div>
			</form>
		</div>
	</div>
</div>

</body>
</html>
