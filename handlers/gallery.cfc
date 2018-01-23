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
		// param an incoming variable.
		event.paramValue( "name", "nobody" );
		// set a private variable
		prc.when = dateFormat( now(), "full" );
		// set the view to render
		prc.art = galleryService.getAllArt();
		// event.renderData( data=prc.aContacts, formats="xml,json,pdf,html" );
		event.setView( "gallery/index" );
	}
	
	function getArt( event, rc, prc ){
		var data = event.getCollection();
		prc.art = galleryService.getArt(data.userid);
		event.setView( "gallery/index" );
	}
}
