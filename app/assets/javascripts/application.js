// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require moment
//= require moment/ja.js
//= require fullcalendar
//= require fullcalendar/lang/ja
//= require_tree .

$(function () {
    // 画面遷移
    $(document).on('turbolinks:load', function () {
        if ($('#calendar').length) {
            function Calendar() {
                return $('#calendar').fullCalendar({
                    //events: '/events.json'追加
                    events: '/events.json',
                    //カレンダー上部を年月で表示
                    titleFormat: 'YYYY年 M月',
                    //曜日
                    dayNamesShort: ['日', '月', '火', '水', '木', '金', '土'],
                    //ボタン
                    header: {
                        left: '',
                        center: 'title',
                        right: 'today prev,next'
                    },
                    //終了時刻がないイベントの表示間隔
                    defaultTimedEventDuration: '03:00:00',
                    buttonText: {
                        prev: '前',
                        next: '次',
                        prevYear: '前年',
                        nextYear: '翌年',
                        today: '今日',
                        month: '月',
                        week: '週',
                        day: '日'
                    },
                    // Drag & Drop & Resize
                    editable: true,
                    // 時間の書式
                    timeFormat: 'H(:mm)',
                    //イベントの色
                    eventColor: '#87cefa',
                    //イベントの文字色
                    eventTextColor: '#000000',
                    eventRender: function(event, element) {
                        element.scss("font-size", "0.8em");
                        element.scss("padding", "5px");
                    }
                });
            }
            function clearCalendar() {
                $('#calendar').html('');
            }

            $(document).on('turbolinks:load', function () {
                Calendar();
            });
            $(document).on('turbolinks:before-cache', clearCalendar);



        }
    });
});