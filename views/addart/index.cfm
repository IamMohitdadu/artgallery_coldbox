
<cfoutput>

<br><br>
<div class="row">
	<div class="col-md-10 col-md-offset-1 toppad" >
		<div class="panel panel-info">
			<div class="panel-heading">
				<h3 class="panel-title">Add New Art</h3>
			</div>
			<div class="panel-body">
				<!--- Add New Image Form --->
				<form id="addNewImage" class="form-horizontal" method="post" enctype="multipart/form-data" action="index.cfm?event=addart.addProcess">
					<div class="modal-body ">
						<div class="col-md-12">
							<input type="hidden" id="userId" name="userId" value="2" />
						</div>
						<div class="form-group">
							<label class="col-md-3" for="ImageName">Art Title</label>
							<div class="col-md-9">
								<input type="text" id="ImageName" name="ImageName" placeholder="ART Title" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3" for="ImageDescription">Image description</label>
							<div class="col-md-9">
								<input type="text" id="ImageDescription" name="ImageDescription" placeholder="Image Description" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3" for="ImageFile">Upload Image</label>
							<div class="col-md-9">
								<input type="file" id="ImageFile" name="ImageFile" />
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<a class="btn btn-danger" href="index.cfm?event=gallery.getArt&UserId=2">Cancel</a>
						<input type="submit" class="btn btn-primary" id="submit" name="submit" value="Submit" />
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</div>

<!-- Bootstrap core JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
<!--- <script src="includes/js/validation.js"></script> --->

</cfoutput>