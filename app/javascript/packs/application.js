// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// $(document).on('click', '#abtn',
 $( document ).ready(function() {
    $('#form1').submit(function(e) { 
        e.preventDefault()
        
        var valuesToSubmit = $(this).serialize();
        
        $.ajax({
            type: "POST",
            url: $(this).attr('action'), //sumbits it to the given url of the form
            data: valuesToSubmit,
            dataType: "JSON" // you want a difference between normal and ajax-calls, and json is standard
        }).done(window.location.href='/ajaxforms');
         return false; // prevents normal behaviour
    });
});

$( document ).ready(function() {
    $('#form2').submit(function(e) { 
        e.preventDefault()
        
        var valuesToSubmit = $(this).serialize();
        
        $.ajax({
            type: "POST",
            url: $(this).attr('action'), //sumbits it to the given url of the form
            data: valuesToSubmit,
            dataType: "XML" // you want a difference between normal and ajax-calls, and json is standard
        }).done(window.location.href='/ajaxforms');
        return false; // prevents normal behaviour
    });
});

$( document ).ready(function() {
    $('#form3').submit(function(e) { 
        e.preventDefault()
       
        var valuesToSubmit = $(this).serialize();
        
        $.ajax({
            type: "POST",
            url: $(this).attr('action'), //sumbits it to the given url of the form
            data: valuesToSubmit,
            dataType: "js" // you want a difference between normal and ajax-calls, and json is standard
        }).done(window.location.href='/ajaxforms');
        return false; // prevents normal behaviour
    });
});


// $(document).ready(function(){
//     $("#abtn").click(function(e){
//         e.preventDefault();
//       $.ajax({type: "POST",
//               url: "/ajaxforms",
//               data: { id: $("#abtn").val(), access_token: $("#access_token").val() },
//               dataType: "JSON"
//               success:function(result){
//         $("#sharelink").html(result);
//       }});
//     });
//   });