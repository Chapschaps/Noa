import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

import "../plugins/tab";

import "../plugins/flatpickr";

import { initSelect2 } from '../plugins/init_select2';

initMapbox();

var animateButton = function(e) {

  e.preventDefault;
  //reset animation
  e.target.classList.remove('animate');

  e.target.classList.add('animate');
  setTimeout(function(){
    e.target.classList.remove('animate');
  },10000000);
};

var bubblyButtons = document.getElementsByClassName("bubbly-button");

for (var i = 0; i < bubblyButtons.length; i++) {
  bubblyButtons[i].addEventListener('mouseover', animateButton, false);
}

for (var i = 0; i < bubblyButtons.length; i++) {
  bubblyButtons[i].addEventListener('click', animateButton, false);
}

initSelect2();

const form = document.querySelector('#search-form');
form.addEventListener('submit', updateResultsList);

$(document).ready(function() {
  function formatExample(animal) {
    var originalOption = $(animal.element);
    return "   " + animal.text;
  }
  $('select#template-example').select2({
    formatResult: formatExample,
    formatSelection: formatExample,
    escapeMarkup: function(m) { return m; }
  });
});
