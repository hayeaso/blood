<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<h4 class="modal-title" id="myModalLabel">
				<b>Update Password</b>
			</h4>
		</div>
		<div class="modal-body">
			<div class="row">
				<div class="well">
					<form class="form-horizontal" action="afterchange" method="POST">
						<div class="form-group">
							<div class="col-lg-4">
								<label class="control-label" for="oldPassword">Old
									Password</label>
							</div>
							<div class="col-lg-8">
								<input id="oldPassword" type="password" class="form-control"
									value="" name="password" /> <span class="help-block"></span>
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-4">
								<label class="control-label" for="newPassword">New
									Password</label>
							</div>
							<div class="col-lg-8">
								<input id="newPassword" type="password" class="form-control"
									value="" /> <span class="help-block"></span>
							</div>
						</div>

						<div class="form-group">
							<div class="col-lg-4">
								<label class="control-label" for="confirmNewPassword">Confirm
									New Password</label>
							</div>
							<div class="col-lg-8">
								<input type="password" class="form-control" value=""
									id="confirmNewPassword" name="confirmNewPassword" /> <span
									class="help-block"></span>
							</div>
						</div>
						<input type="submit" id="btnAdd" class="btn btn-info btn-block"
							value="Change Password" onclick="return Validate()"> <span
							class="help-block"></span>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	function Validate() {
		var password = document.getElementById("newPassword").value;
		var confirmPassword = document.getElementById("confirmNewPassword").value;
		debugger;
		if (password != confirmPassword) {
			alert("Passwords do not match.");
			return false;
		} else {
			var x = confirm("You will be logged out. Are you sure?");
			if (x == true) {
				return true;
			}
			return false;
		}

	}
</script>