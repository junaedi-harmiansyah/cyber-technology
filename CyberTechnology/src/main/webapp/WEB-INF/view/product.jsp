<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="col-xs-1" style="width: 5.33333333%;">
					<div class="input-group input-group-bg pull-right">
						<div class="input-group-btn pull-right">
							<button type="button" class="btn btn-primary btn-bg pull-right"
								data-toggle="modal" data-target="#modalProduct"
								onclick="insert()">
								<i class="fa fa-plus"></i>
							</button>
							<div class="btn-group">
								<button type="button"
									class="btn btn-primary btn-bg dropdown-toggle "
									data-toggle="dropdown">
									<span class="glyphicon glyphicon-download-alt"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#" class="btn btn-info btn-sm"
										onclick='download()'>Download</a></li>
									<li><a href="#" class="btn btn-info btn-sm"
										onclick="upload()">Upload</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="box">
					<div class="box-body">
						<table id="table-product"
							class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>Name</th>
									<th>Count</th>
									<th>Marketing</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody></tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<form id="form-product">
			<div class="modal fade" id="modalProduct">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title">Product</h4>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-xs-12">
									<input type="hidden" class="form-control" name="id" id="id"
										placeholder="id">
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6">
									<div class="form-group">
										<input type="text" class="form-control" name="name:string"
											id="name" placeholder="Name">
									</div>
								</div>
								<div class="col-xs-6">
									<div class="form-group">
										<select class="custom-select d-block w-100 form-control"
											name="roomId" id="roomId">
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6">
									<div class="form-group">
										<select class="custom-select d-block w-100 form-control"
											name="technologyId" id="technologyId">
										</select>
									</div>
								</div>
								<div class="col-xs-6">
									<div class="form-group">
										<select class="custom-select d-block w-100 form-control"
											name="trainerId" id="trainerId">
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6">
									<div class="form-group">
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input type="text" class="form-control" name="periodFrom"
												id="periodFrom" placeholder="Period From">
										</div>
									</div>
								</div>
								<div class="col-xs-6">
									<div class="form-group">
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input type="text" class="form-control" name="periodTo"
												id="periodTo" placeholder="Period To">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6">
									<div class="form-group">
										<select class="custom-select d-block w-100 form-control"
											name="bootcampTypeId" id="bootcampTypeId">
										</select>
									</div>
								</div>
								<div class="col-xs-6">
									<div class="form-group">
										<textarea class="form-control" rows="2" name="notes"
											id="notes" placeholder="Notes"></textarea>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default pull-left"
								data-dismiss="modal">Cancel</button>
							<button type="button" class="btn btn-primary" onclick="simpan()">Save</button>
						</div>
					</div>
				</div>
			</div>
		</form>

		<form id="form-addParticipant">
			<div class="modal fade" id="modalAddParticipant">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title">Add Particpant</h4>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-xs-12">
									<div class="form-group">
										<input type="hidden" class="form-control" name="productId"
											id="idParticipant">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div class="form-group">
										<select class="custom-select d-block w-100 form-control"
											name="biodataId" id="biodataId"></select>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default pull-left"
								data-dismiss="modal">Cancel</button>
							<button type="button" class="btn btn-primary"
								onclick="simpanPartcipant()">Save</button>
						</div>
					</div>
				</div>
			</div>
		</form>

		<!-- Setup Test -->
		<form id="form-setupTest">
			<div class="modal fade" id="modalSetupTest">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title">Setup Test</h4>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<input type="hidden" class="form-control" name="productId"
									id="productId" placeholder="ProductId">
							</div>
						</div>
						<div class="modal-body">
							<div id="setupTest"></div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								onclick="simpanSetupTest()">Close</button>
						</div>
					</div>
				</div>
			</div>
		</form>

	</section>

	<script type="text/javascript">
		function refreshTabel() {
			$
					.ajax({
						type : 'GET',
						url : 'product/',
						data : {
							name : $('#table-product').val()
						},
						success : function(d) {
							tableProduct.clear().draw();
							$(d)
									.each(
											function(index, element) {
												tableProduct.row
														.add(
																[
																		element.name,
																		element.count,
																		element.marketing,
																		element.status,
																		'<input class="btn btn-default btn-sm" type="button" value="Edit" data-toggle="modal" data-target="#modalProduct" onclick="loadEdit(\''
																				+ element.id
																				+ '\')"> &nbsp;' ])
														.draw();
											})
						},
						error : function(d) {
							console.log('Error');
						}
					});
		}

		function loadEdit(id) {
			$.ajax({
				type : 'GET',
				url : 'product/' + id,
				success : function(d) {
					refreshTabel();
					$('#id').val(d.id);
					$('#name').val(d.name);

					modeSubmit = 'update';
				},
				error : function(d) {
					console.log('Error');
				}
			});
		}

		var tableProduct;
		$(document).ready(function() {
			tableProduct = $('#table-product').DataTable({
				'searching' : true,
				'lengthChange' : true,
				'lengthMenu' : [ 5, 10, 15 ]
			});
			$('#priodFrom').datepicker({
				autoclose : true,
				format : 'yyyy-mm-dd'
			});
			$('#periodTo').datepicker({
				autoclose : true,
				format : 'yyyy-mm-dd'
			});
			refreshTabel();
		});
	</script>
</body>
</html>