<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<h4 class="modal-title" id="myModalLabel">
				Search <b>Lifesavers</b>
			</h4>
		</div>
		<div class="modal-body">
			<div class="row">
				<div class="well">
					<form:form modelAttribute="person" class="form-horizontal">
						<div class="form-group">
							<div class="col-lg-8">
								<form:select path="bloodGroup" class="form-control" id="search">
									<form:option value="" label="Select Blood Type" />
									<form:options path="${availableOptions}" />
								</form:select>
							</div>
							<div class="col-lg-4">
								<a id="search" href="#" class="btn btn-info btn-block"
									onclick="getdonors()">Search</a>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>