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
				<div class="box">
					<div class="box-body">

						<!-- <h3>
							<center>Product</center>
						</h3> -->
						<br>
						<div class="col-xs-1">
							<div class="input-group input-group-sm pull-right">
								<div class="input-group-btn pull-right">
									<button type="button" class="btn btn-primary btn-sm pull-right"
										data-toggle="modal" data-target="#modalProduct"
										onclick="insert()">
										<i class="fa fa-plus"></i>
									</button>
									<!-- <div class="btn-group">
										<button type="button" class="btn btn-primary btn-sm dropdown-toggle "
											data-toggle="dropdown">
											<span class="glyphicon glyphicon-download-alt"></span>
										</button>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#" class="btn btn-info btn-sm"
												onclick='download()'>Download</a></li>
											<li><a href="#" class="btn btn-info btn-sm" onclick="upload()">Upload</a></li>
										</ul>
									</div> -->
								</div>
							</div>
						</div>
						<div class="row">
							<div class="box-tools">
								<div class="col-xs-5 pull-right">
									<div class="input-group input-group-sm pull-right">
										<input type="text" id="search" class="form-control pull-right"
											placeholder="Search name product please!">
										<div class="input-group-btn">
											<button type="button" class="btn btn-default"
												onclick="refreshTabel()">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<table id="table-product"
							class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>Name</th>
									<th>Count</th>
									<th>Selling Price</th>
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
	var modeSubmit = 'insert';
	function refreshTabel() {
		$.ajax({type:'get', url:'product/', data:{
			name : $('#search').val()
		},
		success:function(d){
			tableProduct.clear().draw();
			$(d).each(function(index, element){tableProduct.row.add([
					element.technology.name, element.name, element.trainer.name,
					'<input class="btn btn-default btn-sm" type="button" value="Edit" data-toggle="modal" data-target="#modalProduct" onclick="loadEdit(\''
					+ element.id
					+ '\')"> &nbsp;'
					+ '<input class="btn btn-danger btn-sm" type="button" value="Add Participant" data-toggle="modal" data-target="#modalAddParticipant" onclick="loadParticipant(\''
					+ element.id
					+ '\')"> &nbsp;'
					+ '<input class="btn btn-primary btn-sm" type="button" data-toggle="modal" data-target="#modalSetupTest" value="Setup Test" onclick="loadTest(\''
					+ element.id
					+ '\')"> ' ]).draw();})
		}, error : function(d){console.log('Error');}});
	}
	function loadTest(id) {
		$.ajax({
			type : 'GET',
			url : 'test/',
			success : function(d) {
				$('#productId').val(id);
				showTest(d);
			},
			error : function(d) {
				console.log('Error - loadTest');
			}
		});
	}

	function showTest(d) {
		var s = '';
		$(d)
				.each(
						function(index, element) {
							s += '<div class="row">'
									+ '<div class="col-xs-12">'
									+ '<div class="input-group input-group-sm">'
									+ '<input type="text" class="form-control" value="' + element.name + '" readonly>'
									+ '<span class="input-group-btn">'
									+ '<input type="checkbox" value="' + element.id + '" name="testId[]">'
									+ '</span>' + '</div>' + '</div>'
									+ '</div>'
						});
		$('#setupTest').html(s);
	}
	
	function simpanSetupTest() {
		var data = $('#form-setupTest').serializeJSON();
		$.ajax({
			type : 'post',
			url : 'productTest/',
			data : JSON.stringify(data),
			contentType : 'aplication/json',
			success : function(d) {
				refreshTabel();
				$('#form-product').trigger("reset");
				$('#form-product input[type=hidden]').val('');
				$('#modalProduct').modal('hide');
			},
			error : function(d) {
				console.log('Error')
			}
		});
	}

	function simpan() {
		var method;
		if (modeSubmit == 'insert') {
			var data = $('#form-product').serializeJSON();
			method = 'post';
		} else {
			var data = $('#form-product').serializeJSON();
			$('#modalProduct').modal('hide');
			method = 'put';
		}
		if ($('#periodFrom').val() >= $('#periodTo').val()) {
			alert("Input Tanggal yang Benar")
		} else {
			$.ajax({
				type : method,
				url : 'product/',
				data : JSON.stringify(data),
				contentType : 'application/json',
				success : function(d) {
					refreshTabel();
					if (d == 1) {
						alert("Nama sudah ada!");
					} else if (d == 2) {
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
				error : function(d) {
					console.log('Error')
				}
			});
		}
	}

	//	Add Participant
	function loadParticipant(id) {
		$('#form-addParticipant').trigger("reset");
		$('#form-addParticipant input[type=hidden]').val('');
		$.ajax({
			type : 'get',
			url : 'product/' + id,
			success : function(d) {
				refreshTabel();
				$('#idParticipant').val(d.id);
			},
			error : function(d) {
				console.log('Error');
			}
		});
	}

	function simpanPartcipant() {
		var data = $('#form-addParticipant').serializeJSON();
		$('#modalAddParticipant').modal('hide');
		$.ajax({
			type : 'post',
			url : 'clazz/',
			data : JSON.stringify(data),
			contentType : 'application/json',
			success : function(d) {
				refreshTabel();
				$.notify("Save Participant Success", "success");
			},
			error : function(d) {
				console.log('Error');
			}
		});
	}

	function insert() {
		modeSubmit = 'insert';
		$('#form-product').trigger("reset");
		$('#form-product input[type=hidden]').val('');
	}

	function loadEdit(id) {
		$.ajax({
			type : 'get',
			url : 'product/' + id,
			success : function(d) {
				refreshTabel();
				$('#id').val(d.id);
				$('#name').val(d.name);
				$('#roomId').val(d.roomId);
				$('#technologyId').val(d.technologyId);
				$('#trainerId').val(d.trainerId);
				$('#periodFrom').val(d.periodFrom);
				$('#periodTo').val(d.periodTo);
				$('#bootcampTypeId').val(d.bootcampTypeId);
				$('#notes').val(d.notes);
				modeSubmit = 'update';
			},
			error : function(d) {
				console.log('Error');
			}
		});
	}

	//Load dan show FK
	function loadRoom() {
		$.ajax({
			type : 'GET',
			url : 'room/',
			success : function(d) {
				showRoom(d);
			},
			error : function(d) {
				console.log('Error - loadRoom');
			}
		});
	}

	function showRoom(d) {
		var s = '<option value="" disabled selected> - Choose Room -</option>';
		$(d)
				.each(
						function(index, element) {
							s += '<option value="' + element.id 
            + '" data-nama="' + element.name + '">'
									+ element.name + '</option>';
						});
		$('#roomId').html(s);
	}

	function loadTechnology() {
		$.ajax({
			type : 'GET',
			url : 'technology/',
			success : function(d) {
				showTechnology(d);
			},
			error : function(d) {
				console.log('Error - loadTechnology');
			}
		});
	}

	function showTechnology(d) {
		var s = '<option value="" disabled selected> - Choose Technology -</option>';
		$(d)
				.each(
						function(index, element) {
							s += '<option value="' + element.id 
            + '" data-nama="' + element.name + '">'
									+ element.name + '</option>';
						});
		$('#technologyId').html(s);
	}

	function loadTrainer() {
		$.ajax({
			type : 'GET',
			url : 'trainer/',
			success : function(d) {
				showTrainer(d);
			},
			error : function(d) {
				console.log('Error - loadTrainer');
			}
		});
	}

	function showTrainer(d) {
		var s = '<option value="" disabled selected> - Choose Trainer -</option>';
		$(d)
				.each(
						function(index, element) {
							s += '<option value="' + element.id 
            + '" data-nama="' + element.name + '">'
									+ element.name + '</option>';
						});
		$('#trainerId').html(s);
	}

	function loadBootcampType() {
		$.ajax({
			type : 'GET',
			url : 'bootcampType/',
			success : function(d) {
				showBootcampType(d);
			},
			error : function(d) {
				console.log('Error - loadBootcampType');
			}
		});
	}

	function showBootcampType(d) {
		var s = '<option value="" disabled selected> - Choose BootcampType -</option>';
		$(d)
				.each(
						function(index, element) {
							s += '<option value="' + element.id 
            + '" data-nama="' + element.name + '">'
									+ element.name + '</option>';
						});
		$('#bootcampTypeId').html(s);
	}

	function loadBiodata() {
		$.ajax({
			type : 'GET',
			url : 'biodata/findAll/',
			success : function(d) {
				showBiodata(d);
			},
			error : function(d) {
				console.log('Error - loadBiodata');
			}
		});
	}

	function showBiodata(d) {
		var s = '<option value="" disabled selected> - Add Participant -</option>';
		$(d)
				.each(
						function(index, element) {
							s += '<option value="' + element.id 
            + '" data-nama="' + element.name + '">'
									+ element.name + '</option>';
						});
		$('#biodataId').html(s);
	}


	
	var tableProduct;
	$(document).ready(function(){
		tableProduct = $('#table-product').DataTable({
			'searching':false;
			'lengthChange':false;
			'lengthMenu':[10]
		});
		$('#priodFrom').datepicker({
			autoclose:true,
			format:'yyyy-mm-dd'
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