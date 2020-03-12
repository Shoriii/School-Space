var event_ids = #{@events.ids}
    var facility_id = #{@facility.id} 
    var calendar = $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month'
      },
      axisFormat: 'H:mm',
      timeFormat: 'H:mm',
      monthNames: ['１月','２月','３月','４月','５月','６月','７月','８月','９月','１０月','１１月','１２月'],

      events: { //日ごとの情報をイベントとして取得
    
      url: ':facility_id/events.json',
      type: 'GET',
      data: {
        id: event_ids,
      },
      },
    });