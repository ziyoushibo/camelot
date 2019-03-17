// // console.log(data);
// $("#submitButton").click(
//     function fapost() {
//         const s = $("#form-signin input")
//         let username = s[0].value
//         let password = s[1].value
//
//         let data = {
//             "username": username,
//             "password": password
//         }
//         $.ajax({
//             url: "/login/",
//             method: "POST",
//             data: JSON.stringify(data),
//             dataType: "json",
//             contentType: "application/json; charset=utf-8",
//             success: function (response) {
//                 console.log(response)
//                 document.write(response.success)
//             }
//         })
//     }
// )
//
