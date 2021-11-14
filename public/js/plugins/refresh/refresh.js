$(function(){

    $("#btn").on("click", function(){

        $.get("/validador/refresh", function(data) {
            $("#some_div").html(data);
            console.log('foi');   
        });
   
    });

});

// function update() {
//     $.get("/validador/refresh", function(data) {
//       $("#some_div").html(data);
//       console.log('foi');   
//     });
//   }
//   window.setTimeout(update, 10000);