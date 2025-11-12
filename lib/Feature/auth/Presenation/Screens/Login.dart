import 'dart:developer';

import 'package:fire_bse/Feature/Homepage/Presentation/home_page.dart';
import 'package:fire_bse/Feature/auth/Presenation/Screens/Signup.dart';
import 'package:fire_bse/Feature/auth/Presenation/Screens/bloc/bloc/auth/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _testState();
}

class _testState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(
      listener: (context, state) {
        log("loginstate Isfailure${state.Isfailure}");
        print("//////////////////////////////////");
        log("loginstate Issuccess ${state.Issuccess}");
        print("//////////////////////////////////");
        log("loginstate Isloading ${state.Isloading}");
        print("//////////////////////////////////");
        if (state.Isloading == true) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => const Center(child: CircularProgressIndicator()),
          );
        } else {
          if (Navigator.canPop(context)) Navigator.pop(context);
        }

        // Success
        if (state.Issuccess == true) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text("✅ Login Successful")));
          Navigator.push(
            context,
            (MaterialPageRoute(builder: (context) => Homepage())),
          );
        }

        // Failure
        if (state.Isfailure == true) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("❌ ${state.Errormessage}")));
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
                      onPressed: state.Isloading == true
                          ? null
                          : () {
                              if (email.text.trim().isEmpty ||
                                  password.text.trim().isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Email and password required!',
                                    ),
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
                      child: state.Isloading == true
                          ? const CircularProgressIndicator()
                          : const Text(
                              "Log In",
                              style: TextStyle(color: Colors.white),
                            ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Container(
                //   color: Colors.black,
                //   height: 50,
                //   width: double.infinity,
                //   child: TextButton(onPressed: (){}, child: Text("Sign In with Google",style: TextStyle(
                //       color: Colors.white
                //   ),)),
                // )
                Container(
                  decoration: BoxDecoration(color: Colors.black),
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://developers.google.com/identity/images/g-logo.png",
                        height: 24,
                      ),
                      TextButton(
                        child: const Text(
                          "Sign in with Google",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          context.read<SignupBloc>().add(
                            SignupEvent.googleSignIn(),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
