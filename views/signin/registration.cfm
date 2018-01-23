<style>
.st-banner0-wrapper {
  display: none;
}
</style>

<cfoutput>

<div class="container">
  <br><br><br>
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-4 col-md-offset-4 toppad" >
      <div class="panel panel-info">
        <div class="panel-heading">
          <h3 class="panel-title">Create New Account!</h3>
        </div>
        <div class="panel-body">
<!---
          <cfif event.isArgDefined('registration_success')>
            <cfset Local.data = arguments.event.getArg('registration_data')/>
              <cfloop array="#local.data#" index="message">
                <cfoutput>
                  <span class="fa fa-circle-sm icon-resize-small" aria-hidden="true" style="color: red">#message#</span><br>
                </cfoutput>
              </cfloop>
          </cfif>
--->
          <form id="register" class="form-horizontal" method="post" action="index.cfm?event=signin.registrationProcess">
<!---               
            <cfif event.isArgDefined('registration_success')> 
              <input type="hidden" id="error_status" name="error_status" placeholder="error_status" value="already submitted" />
            </cfif>
--->
            <input type="text" id="name" name="Name" placeholder="Name" class="form-control" /><br>
            <input type="text" id="Address" name="Address" placeholder="Address" class="form-control" /><br>
            <input type="number" id="Contact" name="Contact" placeholder="Phone Number" class="form-control" /><br>
            <input type="email" id="email" name="Email" placeholder="Email Address" class="form-control" /><br>
            <input type="password" id="password" name="Password" placeholder="password" class="form-control" /><br>
            <input type="password" id="cpassword" name="cPassword" placeholder="confirm password" class="form-control" /><br>
            <input type="submit" name="" class="btn btn-primary btn-block" value="Submit">
<!---
            <cfif event.isArgDefined('register_error') and arguments.event.getArg('register_error') NEQ ''>
              <cfoutput>
                <span style="color: red">#arguments.event.getArg('register_error')#</span>
              </cfoutput>
              <cfset arguments.event.setArg('register_error','')/>
            </cfif>
--->
          </form>
        </div>
      </div>
      <p class="pull-right"><a href="#event.buildLink( "signin.login" )#"> Already have an account</a></p>
    </div>
  </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
<!--- <script src="includes/js/validation.js"></script> --->

</cfoutput>