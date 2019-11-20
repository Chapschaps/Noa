import flatpickr from "flatpickr";
import "flatpickr/dist/themes/confetti.css"; // Note this is important!

flatpickr(".datepicker", {});

const el = document.getElementById('start');
flatpickr(el, {
});

const ell = document.getElementById('end');
flatpickr(ell, {
});
