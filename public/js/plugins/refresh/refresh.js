// $(function(){

//     $("#btn").on("click", function(){

//         $.ajax({
//             //url: "{{ route('validador.refresh') }}",
//             url: "/validador/refresh",
//             type: "get",
//             data: $(this).serialize(),
//             dataType: 'json',
//             success: function(response){
//                 console.log(response);
//                 var trHTML = '';
//                 $.each(response, function(i, item) {
//                     trHTML += '<tr><td>' + item.id+ '</td><td>' + item.nome+ '</td><td>' + item.url + '</td><td>' + item.status_code+ '</td><td>' + item.resposta+ '</td><td>' + item.url_verified_at+ '</td></tr>';
//                 });
//                 $('#aps').append(trHTML);
//             }
//         });
   
//     });

// });

$('#my-datatable').DataTable().ajax.reload();