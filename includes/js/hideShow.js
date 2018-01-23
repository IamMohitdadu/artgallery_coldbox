/**
* File    : hideShow.js
* Purpose : To hide/show form and buttons.
* Created : 10/25/2017
* Author  : Mohit Dadu
*/

  $(document).ready(function(){

      // remove edit form and cancle the update profile.
      $("#Cancel").click(function(){
          $("div .EditProfileDetails").hide();
          $("#EditProfile").show();
          $("#ChangeImage").show();
      });  //end
      // Show edit profile form and Hide buttons while click edit button
      $("#EditProfile").click(function(){
          $("div .EditProfileDetails").show();
          $("#EditProfile").hide();
          $("#ChangeImage").hide();
      });  //end

      // Show art list view
      $("#list_button").click(function(){
          $("#grid_display").hide();
          $("#list_display").show();
          $("#grid_button").removeClass("active");
          $("#list_button").addClass("active");
      });  //end
      // Show art grid view
      $("#grid_button").click(function(){
          $("#list_display").hide();
          $("#grid_display").show();
          $("#list_button").removeClass("active");
          $("#grid_button").addclass("active");
      });  //end

      // Show edit profile at profile page
      $(".profile_details_button").click(function(){
          $(".art_details").hide();
          $(".artyui_details").hide();
          $(".profile_details").show();
          $(".art_details_button").removeclass("active1");
          $(".artyui_details_button").removeclass("active1");
          $(".profile_details_button").addclass("active1");
      });  //end
      // Show art at profile page
      $(".art_details_button").click(function(){
          $(".artyui_details").hide();
          $(".profile_details").hide();
          $(".art_details").show();
          $(".artyui_details_button").removeclass("active1");
          $(".profile_details_button").removeclass("active1");
          $(".art_details_button").addclass("active1");

      });  //end
      // Show art at profile page
      $(".artyui_details_button").click(function(){
          $(".profile_details").hide();
          $(".art_details").hide();
          $(".artyui_details").show();
          $(".profile_details_button").removeclass("active1");
          $(".art_details_button").removeclass("active1");
          $(".artyui_details_button").addclass("active1");

      });  //end

      // to displart art list into datatable
      // $('#listart').DataTable();

  });
