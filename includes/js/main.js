window.onload = choosePic;
var randPics = new Array("includes/images/galeria1.jpg","includes/images/galeria2.jpg",
                            "includes/images/galeria3.jpg","includes/images/galeria4.jpg",
                        "includes/images/galeria5.jpg","includes/images/galeria6.jpg");
function choosePic() {
    var randomNum = Math.floor(Math.random() * randPics.length);
    document.getElementById("banner").src = randPics[randomNum];
}