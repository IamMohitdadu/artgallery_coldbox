/**
* I am a new Model Object
*/
component singleton accessors="true"{
	
	// Properties
	property name="name" type="string" default="";
	property name="email" type="string" default="";
	property name="password" type="string" default="";
	property name="cpassword" type="string" default="";
	property name="address" type="string" default="";
	property name="contact" type="string" default="";	
	property name="ImageFile" type="string" default="";	
	property name="ImageName" type="string" default="";	
	property name="ImageDescription" type="string" default="";	
	property name="UserId" type="string" default="";	

	/**
	 * Constructor
	 */
	GalleryService function init(){

		return this;
	}
	
	/**
	* getAllArtists
	*/
	function getAllArtists(){
 		// return variables.data;
		myQry = new Query();
		myQry.setDatasource("artgallery"); 
		myQry.setSQL("SELECT* FROM [dbo].[User]");
		myQuery = myQry.execute();
		// writeDump(myQuery.getPrefix());
 		return myQuery.getResult();
	}

	/**
	* getAllArts
	*/
	function getAllArt(){

		myQry = new Query();
		myQry.setDatasource("artgallery"); 
		myQry.setSQL("SELECT * FROM gallery");
		myQuery = myQry.execute();

 		return myQuery.getResult();
	}
	
	/**
	* getArt of an artist
	*/
	function getArt(userid){

		myQry = new Query();
		myQry.setDatasource("artgallery"); 
		myQry.setSQL("SELECT * FROM gallery WHERE USERID=:userid");
		myQry.addParam(name="userid",value="#userid#",cfsqltype="VARCHAR");
		
		myQuery = myQry.execute();

 		return myQuery.getResult();
	}

	/**
	* Login
	*/
	function login(rc){

		setEmail(rc.email);
		setPassword(rc.password);
		var login = structNew();
		login.status = "false";
		login.data = "";
		session.isLogin = "false";
		
		if(trim(email) == '' or trim(password) == ''){
			login.data = "Email address and password required";
			return login;
		}

		myQry = new Query();
		myQry.setDatasource("artgallery"); 
		myQry.setSQL("SELECT NAME, ADDRESS, EMAIL FROM [dbo].[User] 
					  WHERE EMAIL=:email and PASSWORD=:password");
		myQry.addParam(name="email",value="#email#",cfsqltype="VARCHAR");
    	myQry.addParam(name="password",value="#hash(password)#",cfsqltype="VARCHAR");
		myQuery = myQry.execute();
		var recordFound = myQuery.getResult().recordCount;
		
		if(recordFound != 1){
			login.data = "User not available. Please enter the valid details.";
			return login;
		}

		login.status = "true";
		login.data = myQuery.getResult();
		session.username = login.data.name;
		session.isLogin = "true";
	
 		return login;

	}

	/**
	* Registration
	*/
	function registration(rc){

		setName(trim(rc.name));
		setEmail(trim(rc.email));
		setPassword(trim(rc.password));
		setAddress(trim(rc.address));
		setContact(trim(rc.contact));
		setCpassword(trim(rc.cpassword));
		var register = structNew();
		register.status = "false";
		register.data = "";
		session.isLogin = "false";

		if(name == '' or email == '' or password == '' or contact == '' or address == '' or 
		cpassword == '' or password != cpassword ){
			register.data="Registration Failed. Please enter the valid details.";
			return register;
		}

		myQry = new Query();
		myQry.setDatasource("artgallery"); 
		myQry.setSQL("SELECT Email FROM [dbo].[User] 
					  WHERE EMAIL=:email");
		myQry.addParam(name="email",value="#email#",cfsqltype="VARCHAR");
		myQuery = myQry.execute();
		var recordFound = myQuery.getResult().recordCount;

		if(recordFound != 0){
			register.data="Account already exists. Please login.";
			return register;
		}

		myQry.setSQL("INSERT INTO [dbo].[User] ( NAME, EMAIL, ADDRESS, CONTACT, PASSWORD ) 
					VALUES (:name,:email,:address,:contact,:password) ");
		myQry.addParam(name="name",value="#name#",cfsqltype="VARCHAR");
		myQry.addParam(name="email",value="#email#",cfsqltype="VARCHAR");
		myQry.addParam(name="address",value="#address#",cfsqltype="VARCHAR");
		myQry.addParam(name="contact",value="#contact#",cfsqltype="VARCHAR");
    	myQry.addParam(name="password",value="#hash(password)#",cfsqltype="VARCHAR");
    	myQuery = myQry.execute();
		register.status = "true";
		register.data = "Registration Successful.";
		session.username = name;
		session.isLogin = "true";

 		return register;
		// writeDump(myQuery.getPrefix());
 		// return myQuery.getResult();

	}
	/**
	* addart
	*/
	function addart(rc){

		setImageFile(rc.ImageFile);
		setImageName(rc.ImageName);
		setImageDescription(rc.ImageDescription);
		setUserId(rc.UserId);
		writeDump(imagefile);
		abort;
		var login = structNew();
		login.status = "false";
		login.data = "";
		session.isLogin = "false";
		
		if(trim(email) == '' or trim(password) == ''){
			login.data = "Email address and password required";
			return login;
		}

		myQry = new Query();
		myQry.setDatasource("artgallery"); 
		myQry.setSQL("SELECT NAME, ADDRESS, EMAIL FROM [dbo].[User] 
					  WHERE EMAIL=:email and PASSWORD=:password");
		myQry.addParam(name="email",value="#email#",cfsqltype="VARCHAR");
    	myQry.addParam(name="password",value="#hash(password)#",cfsqltype="VARCHAR");
		myQuery = myQry.execute();
		var recordFound = myQuery.getResult().recordCount;
		
		if(recordFound != 1){
			login.data = "User not available. Please enter the valid details.";
			return login;
		}

		login.status = "true";
		login.data = myQuery.getResult();
		session.username = login.data.name;
		session.isLogin = "true";
	
 		return login;

	}

}