// $(function(){

//     $("#btn").on("click", function(){

//         $.ajax({
//             //url: "{{ route('validador.refresh') }}",
//             url: "/validador",
//             type: "get",
//             dataType: 'json',
//             success: function(response){
//                 console.log(response);
//             }
//         });
   
//     });

// });

$(function(){

    $("#btn").on("click", function(){

        $.ajax({
            type: 'GET', //THIS NEEDS TO BE GET
            url: '/validador/refresh',
            dataType: 'json',
            success: function(response){
                 console.log(response);
            },error:function(){ 
                 console.log(response);
            }
        });
   
    });

});


