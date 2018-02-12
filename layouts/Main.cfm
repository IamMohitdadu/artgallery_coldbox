<!---
* File: Main.cfm
* Author: Mohit Dadu
* Purpose: Main page.
* Date: 09-jan-2018
--->

<cfoutput>
  <!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="utf-8">
      <title>Welcome to Coldbox!</title>
<!---       <title>ColdBox: A ColdFusion Framework : #getResource("title")#</title> --->
      <meta name="description" content="ColdBox Application Template">
      <meta name="author" content="Ortus Solutions, Corp">
      <!---Base URL --->
      <base href="#event.getHTMLBaseURL()#" />
      <!---css --->
      <link href="includes/css/bootstrap.min.css" rel="stylesheet">
      <link href="includes/css/main.css" rel="stylesheet">
      <!---js --->
      <script src="includes/js/jquery.js"></script>
      <script src="includes/js/bootstrap.min.js"></script>
      <script src="includes/js/main.js"></script>
    </head>
    <body data-spy="scroll">
      <!---Top NavBar --->
      <nav class="navbar navbar-inverse" role="navigation">
        <div class="container-fluid">
          <!---Brand --->
          <div class="navbar-header">
            <!---Responsive Design --->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="##navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!---Branding --->
            <a class="navbar-brand" href="#event.buildLink('')#"><strong>Art Gallery</strong></a>
<!---             <a class="navbar-brand" href="#event.buildLink('')#"><strong>Main Page</strong></a> --->
          </div>

          <div class="collapse navbar-collapse" id="navbar-collapse">
            <!---About --->
            <ul class="nav navbar-nav navbar-right">
              <li>
                <a href="#event.buildLink( "home" )#" >
                  <i class="glyphicon glyphicon-home"></i> Home
                </a>
              </li>
              <li>
                <a href="#event.buildLink( "gallery" )#" >
                  <i class="glyphicon glyphicon-book"></i> Gallery
                </a>
              </li>
              <li>
                <a href="#event.buildLink( "contact" )#" >
                  <i class="glyphicon glyphicon-bell"></i> Contact Us
                </a>
              </li>
              <cfif isdefined('session.username') and structKeyExists(session, 'isLogin') and structKeyExists(session, 'isLogin') >
                <li class="dropdown">
                  <a href="##" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="glyphicon glyphicon-user"></i> #session.username# <b class="caret"></b>
                  </a>
                  <ul id="actions-submenu" class="dropdown-menu">
                    <li><a href="#event.buildLink( "myprofile" )#"><i class="glyphicon glyphicon-user"></i> Setting</a></li>
                    <li><a href="#event.buildLink( "addart" )#"><i class="glyphicon glyphicon-user"></i> Add Art</a></li>
                    <li><a href="#event.buildLink( "logout.logoutUser" )#"><i class="glyphicon glyphicon-user"></i> logout</a></li>
                  </ul>
                </li>
              <cfelse>
                <li>
                  <a href="#event.buildLink( "signin.login" )#" >
                    <i class="glyphicon glyphicon-user"></i> singup/signin
                  </a>
                </li>
              </cfif>
            </ul>
          </div>
        </div> <!---end container --->
      </nav> <!---end navbar --->



<div class="st-banner0-wrapper">
	<div class="st-header-image" >				
<!---     <img id="banner" src="includes/images/galeria7.jpg" class="header-image center" height="280" width="1920" alt="Sławek Gruca pastele" /> --->
    <img id="banner" class="header-image center" height="280" width="1920" alt="" />
	</div>
</div>	


      <!---Container And Views --->
    <!--- 	#getInstance( 'messagebox@cbmessageBox').renderIt()# --->
      <div class="container">#renderView()#</div>

      <footer class="footer">
        <p class="pull-right">
          <a href="##"><i class="glyphicon glyphicon-arrow-up"></i> Back to top</a>
        </p>
      </footer>

      <script>
      $(function() {
        // activate all drop downs
        $('.dropdown-toggle').dropdown();
        // Tooltips
        $("[rel=tooltip]").tooltip();
      })
      </script>
    </body>
  </html>
</cfoutput>
