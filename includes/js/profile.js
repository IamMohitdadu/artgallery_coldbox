// My Profile

$(function() {
    $(".btn-pref .btn").click(function () {
        $(".btn-pref .btn").removeClass("btn-primary").addClass("btn-default");
        // $(".tab").addClass("active"); // instead of this do the below
        $(this).removeClass("btn-default").addClass("btn-primary");
    });

    // show hide edit button
    $("#edit").click(function() {
        $("#profile").hide();
        $("#editprofile").show();
    });

    // show hide cancel button
    $("#cancel").click(function() {
        $("#editprofile").hide();
        $("#profile").show();
    });

    // upload profile image
    $(document).on('change', '#imagefile', function() {
        console.log("hi");
        var property = document.getElementById("imagefile").files[0];
        console.log(property);
        var image_name = property.name;
        console.log(image_name);
        var image_extn = image_name.split('.').pop().toLowerCase();
        console.log(image_extn);
        if(jQuery.inArray(image_extn, ['gif','png','jpg','jpeg']) == -1)
        {
            alert("Invalid image file");
            return false;
        } else {
            var image_size = property.size;
            console.log(image_size);
            if(image_size > 2000000)
            {
                alert("image size in very big");
                return false;
            } else {
                var form_data = new FormData();
                form_data.append("file", property);
                $.ajax({
                    url:"index.cfm?event=myprofile.uploadImage",
                    method:"POST",
                    data:form_data,
                    contentType:false,
                    cache:false,
                    processData:false,
                    beforeSend:function(){
                        $('#uploaded_image').html("<label class=''>Image Uploading...</label>");
                    },
                    success:function(data)
                    {
                        $('#uploaded_image').html(data);
                    }
                })
            }
        }
    });
    
});
