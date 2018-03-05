<!--- My Profile App  --->

<script src="includes/js/profile.js"></script>
<link rel="stylesheet" href="includes/css/profile.css">

<cfoutput>

  <cfif flash.exists( "notice" )>
    <div class="alert alert-info">#flash.get( "notice" )#</div>
  </cfif>

  <div class="container">
    <br><br>
    <div class="row">
      <h3 style="color:gray; text-align:center; text-transform: uppercase;">My Profile</h3><hr>
      <div class="col-md-3 col-sm-12">
        <div id="shop">
          <div class="content">
            <img class="img-thumbnail" src="http://placehold.it/200x200" alt=""><br>
            <button class="btn btn-block" name="upload">Upload Image</button>
            <input type="file" name="imagefile" id="imagefile">
            <span id="uploaded_image"></span>
          </div>
        </div>
        <br>
      </div><br>
      <div class="col-md-9 col-sm-12" id="profile">
<!---         <button class="btn btn-primary pull-right" id="edit">Edit</button>           --->
        <button class="btn btn-default pull-right" id="edit"><i class="fa fa-edit"></i></button>

        <p><strong>Name:  </strong>#prc.profile.name#</p>
        <p><strong>Email:  </strong>#prc.profile.email#</p>
        <p><strong>Contact:  </strong>#prc.profile.contact#</p>
        <p><strong>Address:  </strong>#prc.profile.address#</p>
        <p><strong>About Me:  </strong>#prc.profile.comment#</p>
      </div>
      <div class="col-md-9 col-sm-12" id="editprofile" style="display:none">
        <button class="btn btn-default pull-right" id="cancel"><i class="fa fa-times"></i></button><br><br>
<!---         <button class="btn btn-danger" id="cancel">Cancel</button> --->
        <form method="post" action="index.cfm?event=myprofile.editprofile">
          <label for="name">Name:</label><input type="text" class="form-control" name="name" value="#prc.profile.name#">
          <label for="email">Email:</label><input type="text" class="form-control" name="email" id="email" value="#prc.profile.email#" disabled>
          <label for="contact">Contact:</label><input type="text" class="form-control" name="contact"  value="#prc.profile.contact#">
          <label for="address">Address:</label><input type="text" class="form-control" name="address" value="#prc.profile.address#">
          <label for="comment">comment:</label><input type="text" class="form-control" name="comment" value="#prc.profile.comment#">
          <br>
          <input type="submit" class="btn btn-primary pull-right" name="save" value="SAVE">
        </form>
      </div>
    </div>
  </div>

</cfoutput>