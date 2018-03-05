<!--- Gallery app  --->

<link rel="stylesheet" href="includes/css/gallery.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">

<cfoutput>
	<!--- #html.table( data=prc.art, class="table table-striped" )# --->
</cfoutput>

<div class="tz-gallery gallery" style="text-align:center;">
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script> baguetteBox.run('.tz-gallery'); </script>
