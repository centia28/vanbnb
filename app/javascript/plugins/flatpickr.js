import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

// Van list date picker
// flatpickr(".datepicker", {})

const range_start = document.getElementById('range_start');
const range_end = document.getElementById('range_end');

if (range_end){
  const list_end_fp = flatpickr(range_end, {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    minDate: "today"
  });
  flatpickr(range_start, {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    minDate: "today",
    onChange: function(selectedDates, dateStr, instance) {
      list_end_fp.set('minDate', selectedDates.pop().fp_incr(1));
    }
  });
}



// Rent datepicker
const start = document.getElementById('rent_start_date');
if (start){
  const end = document.getElementById('rent_end_date');
  const unav_dates = JSON.parse(document.getElementById('unav_dates').innerHTML);

  const end_fp = flatpickr(end, {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    minDate: "today",
    disable: unav_dates
  });

  const start_fp = flatpickr(start, {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    minDate: "today",
    disable: unav_dates,
    onChange: function(selectedDates, dateStr, instance) {
      end_fp.set('minDate', selectedDates.pop());
    }
  });
}

