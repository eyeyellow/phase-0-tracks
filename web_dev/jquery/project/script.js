$(document).ready(function() {
  $('#button').click(function() {
    var day = '#' + document.getElementById("day").value;
    var textarea_input = document.getElementById('textEntryBox').value
    $(day).append('<div class="item">' + textarea_input + '</div>');
  });
});

