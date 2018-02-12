<style>
  #email {
    cursor: auto;
    background-color: white;
  }
</style>

<cfoutput>
  <div class="container">
    <br><br>
    <div class="row">
      <div class="col-md-3 col-sm-12">
        <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
      </div>
      <div class="col-md-9 col-sm-12">
        <h2>My Profile</h2>
        <input type="button" class="btn btn-primary pull-right" name="Edit" value="Edit">
        <hr>
        <p><strong>Name:  </strong>#prc.profile.name#</p>
        <p><strong>Email:  </strong>#prc.profile.email#</p>
        <p><strong>Contact:  </strong>#prc.profile.contact#</p>
        <p><strong>Address:  </strong>#prc.profile.address#</p>
        <p><strong>About Me:  </strong>#prc.profile.comment#</p>
      </div>
      <div class="col-md-9 col-sm-12">
        <h2>My Profile</h2><hr>
        <form >
          <label for="name">Name:</label><input type="text" class="form-control" name="name" value="#prc.profile.name#">
          <label for="email">Email:</label><input type="text" class="form-control" name="email" id="email" value="#prc.profile.email#" disabled>
          <label for="contact">Contact:</label><input type="text" class="form-control" name="contact"  value="#prc.profile.contact#">
          <label for="address">Address:</label><input type="text" class="form-control" name="address" value="#prc.profile.address#">
          <label for="comment">comment:</label><input type="text" class="form-control" name="comment" value="#prc.profile.comment#">
          <br>
          <input type="button" class="btn btn-primary btn-block" name="save" value="SAVE">
        </form>
      </div>
    </div>
  </div>
</cfoutput>