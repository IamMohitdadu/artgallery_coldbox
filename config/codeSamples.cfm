/* Define the Route */
// Create a named route
addRoute(
pattern = "/user/:username/:page",
name = "user_detail"
);
// Same for modules
routes = [
{
pattern = "/detail/:username/:page",
name = "user_detail"
}
];
/* Build Links */
<a href="#event.route( name="user_detail", params={ username="luis", page="1" } )#">User Details</a>
/* The route method signature can be seen below: */
/**
* Builds links to named routes with or without parameters. If the named route is not found, this method will throw an
`InvalidArgumentException`.
* If you need a route from a module then append the module address: `@moduleName` in order to find the right route.
*
* @name The name of the route
* @params The parameters of the route to replace
* @ssl Turn SSL on/off or detect it by default
*
* @throws InvalidArgumentException
*/
string function route( required name, struct params={}, boolean ssl )
=================
<cfoutput>
<form method="POST" action="#event.buildLink('posts/#prc.post.getId()#')#">
<input type="hidden" name="_method" value="DELETE" />
<button type="submit">Delete</button>
</form>
</cfoutput>
=================
/**
* Executes events with full life-cycle methods and returns the event results if any were returned.
* @event The event string to execute, if nothing is passed we will execute the application's default event.
* @prePostExempt If true, pre/post handlers will not be fired. Defaults to false
* @private Execute a private event if set, else defaults to public events
* @defaultEvent The flag that let's this service know if it is the default event running or not. USED BY THE FRAMEWOR
K ONLY
* @eventArguments A collection of arguments to passthrough to the calling event handler method
* @cache.hint Cached the output of the runnable execution, defaults to false. A unique key will be created according
to event string + arguments.
* @cacheTimeout.hint The time in minutes to cache the results
* @cacheLastAccessTimeout.hint The time in minutes the results will be removed from cache if idle or requested
* @cacheSuffix.hint The suffix to add into the cache entry for this event rendering
* @cacheProvider.hint The provider to cache this event rendering in, defaults to 'template'
*/
function runEvent(
event="",
boolean prePostExempt=false,
boolean private=false,
boolean defaultEvent=false,
struct eventArguments={},
boolean cache=false,
cacheTimeout="",
cacheLastAccessTimeout="",
cacheSuffix="",
cacheProvider="template"
)
================
this.mappings[ "/cborm" ] = COLDBOX_APP_ROOT_PATH & "modules/cborm";
<!--- This module also comes with two new WireBox DSL namespaces for injecting entity services: --->
// Inject a global ORM service
property name="genericEntityservice" inject="entityservice";
// Inject a Virtual entity service according to entityName
property name="foobarService" inject="entityservice:foobar";
============================
<!--- To install The Storages Module using command box simply use the following command. --->

<!--- box install cbstorages --->
<!--- If you have existing calls to the old plugins such as  --->

getPlugin( 'SessionStorage' ).setVar('loggedin', true);
getPlugin( 'ApplicationStorage' )
getPlugin( 'CookieStorage' )

<!--- Then after you install the module you can replace those with --->

getInstance( 'sessionStorage@cbstorages' )
getInstance( 'applicationStorage@cbstorages' )
getInstance( 'cookieStorage@cbstorages' )