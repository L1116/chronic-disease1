$(document).ready(function() {
    setInterval(function show(){
        var d = new Date();
        var year= d.getFullYear();
        var month = d.getMonth()+1;
        var day = d.getDate();
        now = year+"年"+month+"月"+day+"日";
        $('.current-time').html(now);
    },1000);
});