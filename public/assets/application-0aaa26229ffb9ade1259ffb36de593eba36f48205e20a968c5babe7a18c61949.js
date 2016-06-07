// app/assets/javascripts/application.js

...

//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function(){
$('.collapse').on('show.bs.collapse', function () {
    $('.collapse.in').collapse('hide');
});
  });
