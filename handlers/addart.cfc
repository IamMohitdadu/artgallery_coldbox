/**
* I am a new handler
*/
component{
	
	property name='galleryService' inject;
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
		
	/**
	* index
	*/
	function index( event, rc, prc ){
		event.setView( "addart/index" );
	}

	function addProcess( event, rc, prc ){
		var data = event.getCollection();
		var status = galleryService.addart(data);
		prc.data = status.data;

		if(loginStatus.status == "false")
		{
			flash.put( "notice", prc.data );
			event.setView('signin/login');
		} else {
			setNextEvent('home');
		}

	}
	
}
