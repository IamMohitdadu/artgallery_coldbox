<!---
* File: home/index.cfm
* Author: Mohit Dadu
* Purpose: to display all artists.
* Date: 10-jan-2018
--->

<cfoutput>

<!--- Page Content --->
<div class="container">
  <!--- Introduction Row --->
  <h1 class="" align="center">
    <small>"Great things are done by a series of small things brought together."</small>
  </h1>
<!---   <p align="center">Welcome to the Art Gallery.</p> --->
  <hr style="height: 10px; border: 0; box-shadow: 0 10px 10px -10px black inset;">
  <!--- Team Members Row --->
  <div class="row">
    <div class="pull-right col-lg-12 col-md-12 col-sm-12" style="padding-bottom: 20px;">
<!---       <input type="search" class="pull-right form-control" style="width:200px;" name="search" id="search" placeholder="Search"> --->
    </div>
<!---     #html.table( data=prc.artists, class="table table-striped" )# --->
  </div>
</div>

</cfoutput>

<div class="col-sm-12">
  <div class="col-md-3">
    <h3>Welcome to Art Gallery</h3>
    <p style="color:gray;">Welcome to the original gallery Sławek Gruca. 
The formula of the gallery allows us to display works directly in connection with the website www.slawekgruca.com, regardless of their functioning in various types of internet galleries. This solution gives you the opportunity to buy work directly from the creator, allows you to book them, and in most cases also allows you to negotiate prices. 
The gallery is updated on a regular basis, which, we believe, will facilitate the review of work for those interested in a possible purchase. 
We also strongly encourage you to sign up for our mailing list, thanks to which we will be able to inform you about new items in the gallery.</p>
  </div>
  <div class="col-md-9">
    <cfoutput query="prc.artists"> 
      <div class="col-sm-12 artists-lists">
        <h3 style="text-transform: uppercase;">&nbsp&nbsp #prc.artists.Name#</h3><hr>
        <div class="col-sm-3 text-center" style="margin-bottom: 5px; pull-right">
          <a href="index.cfm?event=gallery.getart&userid=#prc.artists.UserId#">
            <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
          </a>
  <!---         
          <cfif fileExists(expandPath(prc.artists.ImageAddress)) EQ "NO" > 
            <img class="img-thumbnail" src="http://placehold.it/200x200" alt="">
          <cfelse>
            <img src="#prc.artists.ImageAddress#" alt="#prc.artists.Name#" id="rcorners6" class="text-right" width="210" height="160">
          </cfif>
  --->
        </div>
        <div class="col-sm-9" style="color:gray;">
          <h7>#prc.artists.UserId#</h7>&nbsp
          <h7>#prc.artists.Name#</h7>&nbsp
          <h7>#prc.artists.Address#</h7>&nbsp
          <h7>#prc.artists.Email#</h7>&nbsp
          <h7>#prc.artists.Contact#</h7>&nbsp
          <h7>#prc.artists.ImageAddress#</h7>&nbsp
          <h7>#prc.artists.Password#</h7>&nbsp
          <h7>#prc.artists.LastLogin #</h7>&nbsp
          <h7>#prc.artists.CreatedOn#</h7>&nbsp
          <h7>#prc.artists.ModifiedOn#</h7>&nbsp

          <cfif prc.artists.Comment NEQ ''>
            <p>#prc.artists.Comment#</p>
          <cfelse>
            <p>
              For my part I know nothing with any certainty, but the sight of the stars makes me dream.
              I dream of painting and then I paint my dream.
              I feel that there is nothing more truly artistic than to love people.
              The best way to know God is to love many things.
              I often think that the night is more alive and more richly colored than the day.
              What would life be if we had no courage to attempt anything?
              If you truly love Nature, you will find beauty everywhere.
            </p>
          </cfif>
  <!---           <p>Address: #prc.artists.Address#</p>
          <p>Email: #prc.artists.Email#</p>
          <p>Contact: #prc.artists.Contact#</p> --->
        </div>
      </div>
    </cfoutput>
  </div>
</div>