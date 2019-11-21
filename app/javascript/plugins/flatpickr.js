import flatpickr from "flatpickr";
import "flatpickr/dist/themes/dark.css"; // Note this is important!
if (document.querySelector('.datepicker')) {
  flatpickr(".datepicker", {});
}
