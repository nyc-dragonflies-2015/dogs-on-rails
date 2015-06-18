$(document).ready(function() {
  $("#add-dog").on('click', function(event) {
    event.preventDefault()
    $.ajax("http://localhost:3000/dogs/form")
      .done(function(formHtml) {
        $("body").append(formHtml);
        $("form").on('submit', function(e) {
          e.preventDefault();

          $.ajax("http://localhost:3000/dogs", {
            method: "POST",
            data: $("form").serialize()
          })
          .done(function(dogPartial) {

          })
          .fail(function(){
            console.log('zack panda');
          });
        });
      })
      .fail(function() {
        console.log("o shit, son");
      });
  });
});
