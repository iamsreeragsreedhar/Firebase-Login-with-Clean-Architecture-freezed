// BlocConsumer<SignupBloc, SignupState>(
//   listener: (context, state) {
//     if (state.Isloading == true) {
//       // You can show a loading spinner or dialog
//       showDialog(
//         context: context,
//         barrierDismissible: false,
//         builder: (_) => Center(child: CircularProgressIndicator()),
//       );
//     }

//     if (state.Issuccess == true) {
//       // Dismiss loading spinner if any
//       Navigator.of(context, rootNavigator: true).pop();
//       // Show success message or navigate
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Login/Signup Successful!')),
//       );
//       // Navigate, for example:
//       // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
//     }

//     if (state.Isfailure == true) {
//       // Dismiss loading spinner if any
//       Navigator.of(context, rootNavigator: true).pop();
//       // Show error message
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(state.Errormessage)),
//       );
//     }
//   },
//   builder: (context, state) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 label: Text("Email"),
//                 border: OutlineInputBorder(),
//               ),
//               controller: email,
//             ),
//             SizedBox(height: 10),
//             TextField(
//               decoration: InputDecoration(
//                 label: Text("Password"),
//                 border: OutlineInputBorder(),
//               ),
//               controller: password, // Make sure to add the controller!
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//             state.Isloading == true
//                 ? Center(child: CircularProgressIndicator())
//                 : Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.black87,
//                     ),
//                     height: 50,
//                     width: 400,
//                     child: TextButton(
//                       onPressed: () {
//                         context.read<SignupBloc>().add(
//                           SignupEvent.loginPressed(
//                             email.text.trim(),
//                             password.text.trim(),
//                           ),
//                         );
//                       },
//                       child: Text(
//                         "Log In",
//                         style: TextStyle(color: Colors.white, fontSize: 16),
//                       ),
//                     ),
//                   ),
//           ],
//         ),
//       ),
//     );
//   },
// )
