/**
* I am a new handler
*/
component accessors="true"{

	// dependancy injection
	property name='galleryService' inject;

	property name="name";
	property name="email";
	property name="password";
	property name="cpassword";
	property name="address";
	property name="contact";	
	property name="ImageFile";	
	property name="ImageName";	
	property name="ImageDescription";	
	property name="UserId";

	// OPTIONAL HANDLER PROPERTIES
	this.prehandler_only 	= "";
	this.prehandler_except 	= "";
	this.posthandler_only 	= "";
	this.posthandler_except = "";
	this.aroundHandler_only = "";
	this.aroundHandler_except = "";
	// REST Allowed HTTP Methods Ex: this.allowedMethods = {delete='POST,DELETE',index='GET'}
	this.allowedMethods = {};

	/**
	IMPLICIT FUNCTIONS: Uncomment to use
	function preHandler( event, rc, prc, action, eventArguments ){
	}
	function postHandler( event, rc, prc, action, eventArguments ){
	}
	function aroundHandler( event, rc, prc, targetAction, eventArguments ){
		// executed targeted action
		arguments.targetAction( event );
	}
	function onMissingAction( event, rc, prc, missingAction, eventArguments ){
	}
	function onError( event, rc, prc, faultAction, exception, eventArguments ){
	}
	function onInvalidHTTPMethod( event, rc, prc, faultAction, eventArguments ){
	}
	*/

    function init(){
        setName('');
        setEmail('');
        setPassword('');
        setCpassword('');
        setAddress('');
        setContact('');
        setImageFile('');
        setImageName('');
        setImageDescription('');
        setUserId('');
    }
		
	/**
	* login
	*/
	function login( event, rc, prc ){
		prc.data = "";
		event.setView( "signin/login" );
	}

	/**
	* registration
	*/
	function registration( event, rc, prc ){
		prc.data = "";
		event.setView( "signin/registration" );
	}

	/**
	* loginProcess
	*/
	function loginProcess( event, rc, prc ){
		// var person = populateModel( "Signin" );
		// writeDump( person );abort;

		var data = event.getCollection();
		var loginStatus = galleryService.login(data);
		prc.data = loginStatus.data;

		if(loginStatus.status == "false")
		{
			flash.put( "notice", prc.data );
			setNextEvent('signin.login');
			// event.setView('signin/login');
		} else {
			setNextEvent('home');
		}
		
	}
	
	/**
	* registrationProcess
	*/
	function registrationProcess( event, rc, prc ){

		var data = event.getCollection();
		var registrationStatus = galleryService.registration(data);
		prc.data = registrationStatus.data;

		if(registrationStatus.status == "false")
		{
			flash.put( "notice", prc.data );
			// event.setView('signin/registration');
			setNextEvent('signin.registration');
		} else {
			setNextEvent('home');
		}
		
	}
}
