<style>
	.lightbox img {
		border : 1px solid lightgray;
		padding : 20px;
		margin:5px;
	}
	.lightbox img:hover {
		border : 1px solid lightgray;
		padding : 0px;
	}
	.container {
		padding:0px;
<!--- 		margin:0px; --->
	}
</style>

<cfoutput>
<!--- #html.table( data=prc.art, class="table table-striped" )# --->
</cfoutput>
<div class="gallery" style="text-align:center;">
	<h3 style="color:gray; text-transform: uppercase;">Gallery</h3>
	<cfoutput query="prc.art" >
		<a class="lightbox" href="#prc.art.ImageFile#">
			<cfif #prc.art.Imagefile# NEQ "">
				<img src="#prc.art.ImageFile#" alt="#prc.art.ImageName#" width="270" height="310">
			<cfelse>
				<img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
			</cfif>
		</a>
	</cfoutput>
</div>
