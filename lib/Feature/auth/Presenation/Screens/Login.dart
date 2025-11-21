import 'dart:developer';

import 'package:fire_bse/Feature/Homepage/Presentation/home_page.dart';
import 'package:fire_bse/Feature/auth/Presenation/Screens/Signup.dart';
import 'package:fire_bse/Feature/auth/Presenation/Screens/bloc/bloc/auth/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _testState();
}

class _testState extends State<LoginPage> {
  TextEditingController email = TextEditingController(
    text: "iamsreeragsreedhar@gmail.com",
  );
  TextEditingController password = TextEditingController(text: "sreerag1527");
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(
      listener: (context, state) {
        print("////////////////////////////////// ✅");
        log("Success:${state.Issuccess}");
        log("Ltype:${state.loadingtype}");
        log("Meesage:${state.Errormessage}");
         print("////////////////////////////////// ✅");
        if (state.Isloading == false ) {
          // Success
          if (state.Issuccess == true &&
              state.loadingtype == AuthLoadingStatus.login) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(const SnackBar(content: Text("✅ Login Successful")));
            Navigator.pushReplacement(
              context,
              (MaterialPageRoute(builder: (context) => Homepage())),
            );
          }

          if (state.Issuccess == true &&
              state.loadingtype == AuthLoadingStatus.google) {
            print("inisde this ");
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Google SignIn Login Successful")),
            );
            Navigator.pushReplacement(
              context,
              (MaterialPageRoute(builder: (context) => Homepage())),
            );
          }
          // Failure
          // if (state.Isfailure == true) {
          //   ScaffoldMessenger.of(
          //     context,
          //   ).showSnackBar(SnackBar(content: Text("❌ ${state.Errormessage}")));
          // }
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    label: Text("Email"),
                    border: OutlineInputBorder(),
                  ),
                  controller: email,
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    label: Text("Password"),
                    border: OutlineInputBorder(),
                  ),
                  controller: password,
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                    child: TextButton(
                      onPressed: () {
                        print("pressed");
                        if (email.text.trim().isEmpty ||
                            password.text.trim().isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Email and password required!'),
                            ),
                          );
                          return;
                        } else {
                          context.read<SignupBloc>().add(
                            SignupEvent.loginPressed(
                              email.text.trim(),
                              password.text.trim(),
                            ),
                          );
                        }
                      },
                      child:
                          state.Isloading == true &&
                              state.loadingtype == AuthLoadingStatus.login
                          ? Center(
                              // child: LoadingAnimationWidget.twistingDots(
                              //   leftDotColor: const Color(0xFF1A1A3F),
                              //   rightDotColor: const Color(0xFFEA3799),
                              //   size: 40,
                              // ),
                              child: LoadingAnimationWidget.waveDots(
                                color: const Color(0xFFEA3799),
                                size: 40,
                              ),
                            )
                          : const Text(
                              "Log In",
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                (state.Isloading == true &&
                        state.loadingtype == AuthLoadingStatus.google)
                    ? Center(
                        // child: LoadingAnimationWidget.twistingDots(
                        //   leftDotColor: const Color(0xFF1A1A3F),
                        //   rightDotColor: const Color(0xFFEA3799),
                        //   size: 40,
                        // ),
                        child: LoadingAnimationWidget.waveDots(
                          color: const Color(0xFFEA3799),
                          size: 40,
                        ),
                      )
                    : Container(
                        color: Colors.black,
                        height: 50,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            context.read<SignupBloc>().add(
                              SignupEvent.googleSignIn(),
                            );
                          },
                          child: Text(
                            "Sign In with Google",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),

                // Container(
                //           decoration: BoxDecoration(color: Colors.black),
                //           height: 50,
                //           width: double.infinity,
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Image.network(
                //                 "https://developers.google.com/identity/images/g-logo.png",
                //                 height: 24,
                //               ),

                //               TextButton(
                //                 child: const Text(
                //                   "Sign in with Google",
                //                   style: TextStyle(color: Colors.white),
                //                 ),
                //                 onPressed: () {

                //                 },
                //               ),
                //             ],
                //           ),
                //         )
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      child: Text("Register Account"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
