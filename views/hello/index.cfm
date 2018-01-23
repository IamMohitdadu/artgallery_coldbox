<cfoutput>
<h1>hello.index</h1>
</cfoutput>

<cfoutput>
<h1>Hello from ColdBox Land!</h1>
<p><a href="#event.buildLink( "main.index" )#">Go home</a></p>
</cfoutput>

<cfoutput>
<!--- <p>Hello #encodeForHTML( rc.name )#, today is #prc.when#</p> --->
</cfoutput>

<cfoutput>
<h1>My Contacts</h1>
#html.table( data=prc.aContacts, class="table table-striped" )#
</cfoutput>
