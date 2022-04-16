var calendar_init = function calendar_init() {
  $('#calendar').each(function () {
    var calendar = $(this);
    calendar.fullCalendar({
      header: {
          left: 'prev,next today',
          center: 'title',
          right: 'basicWeek,month'
      },
      eventColor: '#FFBA49',
      defaultView: 'basicWeek',
      selectable: true,
      editable: true,
      eventLimit: true,
      displayEventTime: false,
      events: '/events.json',

      eventRender: function(event, element) {
        element.find('.fc-content').append('<br><strong><div class="description">' + event.description + '</div></strong>');
        element.find('.fc-content').append('<div class="teacher">' + event.teacher + '</div>');
      },
    });
  });
};

$(document).ready(calendar_init);
