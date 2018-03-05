/**
* I am a new handler
*/
component {

	property name='galleryService' inject;
/*
	property name="name";
	property name="address";
	property name="contact";	
	property name="comment";	
	property name="ImageFile";	
	property name="ImageName";	
	property name="ImageDescription";	
	property name="UserId";
*/
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
/*
    function init(){
        setName('');
        setAddress('');
        setContact('');
        setComment('');
        setImageFile('');
        setImageName('');
        setImageDescription('');
        setUserId('');
    }
*/

	/**
	* Profile index
	*/
	function index( event, rc, prc ){
		
		if(structKeyExists(session, 'isLogin'))
		{
			prc.profile = galleryService.myprofile();
			event.setView( "myprofile/index" );
		} else {
			setNextEvent('signin.login');
		}	

	}
	
	/**
	* edit profile
	*/
	function editprofile(event, rc, prc){
		
		if(structKeyExists(session, 'isLogin')) {
			var data = event.getCollection();

			var profileDetails = galleryService.editprofile(data);

			if(profileDetails.status == "true") {
				flash.put( "notice", profileDetails.data );
				setNextEvent( "myprofile.index" );
			}
			// prc.data = status.data;

		} else {
			setNextEvent('signin.login');
		}	

	}

	/**
	* Upload profile Image
	*/
	function uploadImage( event, rc, prc ){
		
		if(structKeyExists(session, 'isLogin'))
		{
			var data = event.getCollection();
			var status = galleryService.editprofile(data);
			prc.data = status.data;
			flash.put( "notice", prc.data );
			event.setView( "myprofile/index" );
		} else {
			setNextEvent('signin.login');
		}	

	}

}
