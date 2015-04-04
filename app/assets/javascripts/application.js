// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery-fileupload
//= require jquery-ui
//= require turbolinks
//= require_tree .

/* Chained Selects Plugin for jQuery */
/* For jquery.chained.remote.js */

$(document).ready(function() {
  $(".description").remoteChained({
      parents: ".name",
      url: "/description",   
      loading: "Loading...",
      clear: true
  });
  $(".price").remoteChained({
      parents : ".description",
      url: "/price",   
      loading: "Loading...",
      clear: true
  }); 

});

/* Handsontable */
/* Test data

data = [
      ['', 'Kia', 'Nissan', 'Toyota', 'Honda'],
      ['2008', 10, 11, 12, 13],
      ['2009', 20, 11, 14, 13],
      ['2009', 30, 15, 12, 13]
    ]

/* HANDSONTABLE input capture */
/* This code is working 
$(document).on('click', '#hotBtn', function() {
  console.log('server_side');
});

/* This gets the entire DOM 
$.post( "http://localhost:3000/upload_hot_1", function( data ) { 
  console.log(data);  
}); 

/*  Test code
$.ajax({
      url: 'json/save.json',
      type: 'POST',  
      data:({
          id: 0
      }),
      success:function(response) {
          console.log('response');
          console.log(response);
      }
  });(jQuery);

*/


/* jQuery-File-Upload / blueimp example */

