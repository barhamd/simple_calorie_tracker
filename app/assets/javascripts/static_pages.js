//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
//#

$(document).ready(function(){
  var data = [[1, 300], [2, 600], [3, 550] ];
      $.plot($("#placeholder"), [data]);
});
