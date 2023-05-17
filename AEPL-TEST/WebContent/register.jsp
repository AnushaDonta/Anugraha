<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

</head>
<body>
	<div class="container">
	<div class="row text-center" style="color: tomato;">
		<h2>User Registration with JSP, Servlet and Hibernate</h2>
	</div>
	<hr>
		<div class="row col-md-10 col-md-offset-3">	
			
			<div class="card card-body">
			
				<h2>User Register Form</h2>
				<div class="col-md-8 col-md-offset-3">

					<form action="<%=request.getContextPath()%>/register" method="post">

						<div class="form-group">
							<label for="name">Name:</label> <input type="text"
								class="form-control" id="name" placeholder="Name"
								name="name" required>
						</div>

						<div class="form-group">
							<label for="email">Email:</label> <input type="email"
								class="form-control" id="email" placeholder="email"
								name="email">
						</div>

						<div class="form-group">
							<label for="PhoneNo">Phone No:</label> <input type="tel"
								class="form-control" id="PhoneNo" placeholder="PhoneNo"
								name="phoneNo">
						</div>
						
						<div class="form-group">
							<label for="DOB">Date of Birth:</label> <input type="date"
								class="form-control" id="DOB" placeholder="DOB"
								name="DOB">
						</div>
						
						<div class="form-group">
						<select name="location">
						<option value="Any Location">Any Location</option>
						<option value="Bangalore">Bangalore</option>
						<option value="Hyderabad">Hyderabad</option>
						<option value="Chennai">Chennai</option>
						<option value="New Delhi">New Delhi</option>
						</select>
						</div>
						
						<div class="form-group">
						<label for="upload">Upload file</label>
						<input type="file" name="identity" id="identity">
						</div>

						<button type="submit" class="btn btn-primary">Submit</button>

					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
