$(document).ready ->
  currentLangCode = 'ru';

  $('#calendar').fullCalendar

    editable: true,
    header:
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'
    defaultView: 'month',
    defaultButtonText: {today:"Сегодня",month:"Месяц",week:"Неделя",day:"День",list:"Повестка дня"},
    allDayText:"Весь день",
    datepickerLang: {currentText:"Сегодня"},
    lang: 'ru',
    height: 600,
    minTime : "07:00:00",
    maxTime: "23:00:00",
    slotMinutes: 30,

    eventSources: [{
      url: '/events',
    }],


    timeFormat: 'h:mm t{ - h:mm t} ',
    dragOpacity: "0.5"

    eventDrop: (event, dayDelta, minuteDelta, allDay, revertFunc) ->
      updateEvent(event);

    eventResize: (event, dayDelta, minuteDelta, revertFunc) ->
      updateEvent(event);


updateEvent = (the_event) ->
  $.update "/events/" + the_event.id,
    event:
      title: the_event.title,
      starts_at: "" + the_event.start,
      ends_at: "" + the_event.end,
      description: the_event.description

