$(document).ready(function () {
  $('#main').mouseover(function(){
    $(this).stop().effect('shake', {distance:3}, 400);
  });
});
