<!--- Login app  --->

<link rel="stylesheet" href="includes/css/signin.css">

<cfoutput>

  <cfif flash.exists( "notice" )>
    <div class="alert alert-info">#flash.get( "notice" )#</div>
  </cfif>

  <br><br><br>
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-4 col-md-offset-4 toppad" >
      <div class="panel panel-info">
        <div class="panel-heading">
          <h3 class="panel-title">Login</h3>
        </div>
        <div class="panel-body">

          <cfif structKeyExists(prc, 'data')>
            <span class="fa fa-circle-sm icon-resize-small" aria-hidden="true" style="color: red">#prc.data#</span>
          </cfif>
          
          <form id="login" name="loginForm" class="form-horizontal" method="post" action="index.cfm?event=signin.loginProcess">
            <br>  
            <input type="email" id="email" name="email" placeholder="Email Address" class="form-control" /><br>
            <input type="password" id="password" name="password" placeholder="password" class="form-control" />
            <div class="pull-right"><img src="https://shots.jotform.com/kade/Screenshots/blue_question_mark.png" height="13px"/>
            </div><br>
  <!---             <div class="g-recaptcha" data-sitekey="6LdyWTcUAAAAAMHaPqDwy0PS0nVln8Cg_OWSVmQe"></div> --->
  <!---             <input type="hidden" class="hiddenRecaptcha required" name="hiddenRecaptcha" id="hiddenRecaptcha"> --->
            <input type="submit" name="" class="btn btn-primary btn-block" value="Submit"/>
          </form>
        </div>
      </div>
      <p class="pull-right"><a href="#event.buildLink( "signin.registration" )#"> Create New Account</a></p>
      
  <!---       <div class="g-signin2" data-onsuccess="onSignIn"></div> --->
    </div>
  </div>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
  <!--- <script src="includes/js/validation.js"></script> --->
  <!--- <script src="includes/js/form.js"></script> --->

</cfoutput>