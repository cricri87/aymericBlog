$(document).ready(function() {
  $("p").click(function() {
    $(this).css("color", "red");
  })
});

var pen = {
  type: 'ballpoint',
  color: 'black',
  origin: 'france'
};



var films = ["conair", "armageddon", "the rock", "batman"];
var count = films.length;


for (var i = 0; i < films.length; i++) {
  console.log(films[i].toUpperCase());
}

