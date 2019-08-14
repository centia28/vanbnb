import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {});
flatpickr("#range_start", {
  plugins: [new rangePlugin({ input: "#range_end"})]
});
