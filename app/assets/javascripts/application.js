//= require jquery3
//= require jquery_ujs
// require rails-ujs
//= require activestorage
//= require_tree ./application
//=require moment
//=require calendar
//=require fullcalendar

$(document).ready(function() {
  $('#calendar').fullCalendar({
    events: '/events.json'
  });
});
