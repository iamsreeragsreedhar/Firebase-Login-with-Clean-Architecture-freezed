import 'dart:developer';

import 'package:fire_bse/Feature/auth/Domain/entity/signup_entity.dart';
import 'package:fire_bse/Feature/auth/Presenation/Screens/Login.dart';
import 'package:fire_bse/Feature/auth/Presenation/Screens/bloc/bloc/auth/signup_bloc.dart';
import 'package:fire_bse/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignInState();
}

class _SignInState extends State<Signup> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController user = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(
      listener: (context, state) {
        log("state Isfailure${state.Isfailure}");
        print("//////////////////////////////////");
        log("state Issuccess ${state.Issuccess}");
        print("//////////////////////////////////");
        log("state Isloading ${state.Isloading}");
        print("//////////////////////////////////");

        if (state.Isfailure == true &&
            state.loadingtype == AuthLoadingStatus.signup) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.Errormessage)));
        }

        if (state.Isloading == true &&
            state.loadingtype == AuthLoadingStatus.signup) {
          Center(child: CircularProgressIndicator());
        }

        if (state.Issuccess == true &&
            state.loadingtype == AuthLoadingStatus.signup) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Sign Up Successfully")));
          user.clear();
          email.clear();
          password.clear();
          Navigator.push(
            context,
            (MaterialPageRoute(builder: (context) => LoginPage())),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    label: Text("User Name"),
                    border: OutlineInputBorder(),
                  ),
                  controller: user,
                ),
                SizedBox(height: 10),
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
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black87,
                  ),
                  height: 50,
                  width: 400,
                  child: TextButton(
                    onPressed: () {
                      context.read<SignupBloc>().add(
                        SignupEvent.signupPressed(
                          email.text.trim(),
                          password.text.trim(),
                          user.text.trim(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have account ..?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          (MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          )),
                        );
                      },
                      child: Text("Login Account"),
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
