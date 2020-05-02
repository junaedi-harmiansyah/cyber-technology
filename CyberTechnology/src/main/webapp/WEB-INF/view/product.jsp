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
				<br> <br>
				<div class="box">
					<div class="box-body">
						<table id="table-product"
							class="table table-bordered table-striped">
							<thead>
								<tr>
									<th style="width: 200px;">Name</th>
									<th style="width: 100px;">Marketing</th>
									<th style="width: 100px;">Discription</th>
									<th style="width: 100px;">Status</th>
									<th style="width: 100px;"><center>Action</center></th>
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
							<!-- <div class="row">
								<div class="col-xs-12">
									<input type="hidden" class="form-control" name="id" id="id"
										placeholder="id">
								</div>
							</div> -->
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
											name="marketing:string" id="marketingId">
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6">
									<div class="form-group">
										<input type="number" class="form-control"
											name="selling_prince:string" id="sellingPrice"
											placeholder="input selling prince">
									</div>
								</div>
								<div class="col-xs-6">
									<div class="form-group">
										<input type="number" class="form-control"
											name="buy_prince:string" id="buyPrice"
											placeholder="input buy prince">
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
											<input type="text" class="form-control" name="buy_date"
												id="buyDate" placeholder="Buy Date">
										</div>
									</div>
								</div>
								<div class="col-xs-6">
									<div class="form-group">
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input type="text" class="form-control" name="selling_date"
												id="sellingDate" placeholder="Selling Date">
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6">
									<div class="form-group">
										<textarea class="form-control" rows="2" name="description:string"
											id="description" placeholder="Description"></textarea>
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
		<form id="form-modalProductTerjual">
			<div class="modal fade" id="modalProductTerjual">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title">Product</h4>
							<div class="modal-body">
								<div class="row">
									<div class="col-xs-12">
										<center>
											<label>Product akan di Set Terjual dan akan di Non
												Active !</label>
										</center>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default pull-left"
									data-dismiss="modal">Cancel</button>
								<button type="button" class="btn btn-primary"
									onclick="simpanTerjual()">Ok</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</section>

	<script type="text/javascript">
		var modeSubmit = 'insert';
		var date = new Date();
		function refreshTabel() {
			$
					.ajax({
						type : 'GET',
						url : 'product/findAll',
						data : {
							name : $('#table-product').val()
						},
						success : function(d) {

							tableProduct.clear().draw();
							$(d)
									.each(
											function(index, element) {
												if (element.status == 1) {
													var status = 'Active';
												} else {
													var status = 'Non Active';
												}
												tableProduct.row
														.add(
																[
																		element.name,
																		element.marketing,
																		element.discription,
																		status,
																		'<center><input class="btn btn-default btn-sm" type="button" value="Edit" data-toggle="modal" data-target="#modalProduct" onclick="loadEdit (\''
																				+ element.id
																				+ '\')"> &nbsp;'
																				+ '<input class="btn btn-default btn-sm" type="button" value="Terjual" data-toggle="modal" data-target="#modalProductTerjual" onclick="setTerjual(\''
																				+ element.id
																				+ '\')"> &nbsp;</center>' ])
														.draw();
											})
						},
						error : function(d) {
							console.log('Error');
						}
					});
		}
		
		function simpan() {
			var method;
			if (modeSubmit == 'insert') {
					var data = $('#form-product').serializeJSON();
					method = 'post';
			}else {
				var data = $('#form-product').serializeJSON();
				$('#modalProduct').modal('hide');
				method = 'put';
			}
			if ($('#buyDate').val() > $('#sellingDate').val()) {
				alert("Tanggal pembelian melebihi tanggal penjualan");
			}else {
				$.ajax({
					type : method,
					url :'product/save',
					data : JSON.stringify(data),
					contentType : 'application/json',
					success : function (d) {
						console.log(data)
						refreshTabel();
						if (d==1) {
							alert("Nama sudah terdaftar");
						}else if (d==2) {
							modeSubmit = 'insert';
							$('#form-product').trigger("reset");
							$('#form-product input[type=hidden]').val('');
							$('#modalProduct').modal('hide');
						}
						if (method == 'post') {
							$.notify("Input Success", "success");
						}
						if (method == 'put') {
							$.notify("Edit Success", "success");
						}
					},
					error : function (d) {
						console.log(error.message)
					}
				});
			}
		}
		
		function insert() {
			modeSubmit = 'insert';
			$('#form-product').trigger("reset");
			$('#form-product input[type=hidden]').val('');
		}
		
		var tableProduct;
		$(document).ready(function() {
			tableProduct = $('#table-product').DataTable({
				'searching' : true,
				'lengthChange' : true,
				'lengthMenu' : [ 5, 10, 15 ]
			});
			$('#buyDate').datepicker({
				autoclose : true,
				format : 'yyyy-mm-dd'
			});
			$('#sellingDate').datepicker({
				autoclose : true,
				format : 'yyyy-mm-dd'
			});
			refreshTabel();
		});

	</script>
</body>
</html>