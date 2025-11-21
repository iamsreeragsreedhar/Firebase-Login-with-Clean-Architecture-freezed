import 'dart:developer';

import 'package:fire_bse/Core/network/api_constants.dart';
import 'package:fire_bse/Feature/Homepage/Presentation/BLOC/product/product_bloc.dart';
import 'package:fire_bse/Feature/auth/Presenation/Screens/Login.dart';
import 'package:fire_bse/Feature/auth/Presenation/Screens/bloc/bloc/auth/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:logger/logger.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  @override
  void initState() {
    context.read<ProductBloc>().add(
      ProductEvent.getProdcts(ApiConstants.endpoint),
    );
    super.initState();
  }

  var logger = Logger(printer: PrettyPrinter());
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      // listener: (context, state) {},
      builder: (context, state) {
        log("state ${state.DataList}");
        return Scaffold(
          appBar: AppBar(
            title: Text("Welcome"),

            actions: [
              BlocListener<SignupBloc, SignupState>(
                listener: (context, state) {
                  print("LOGOUT LISTENER");
                  print("LOGOUT loading ${(state.Isloading)}");
                  print("LOGOUT success ${(state.Issuccess)}");


                  if (state.Isloading == false &&
                      state.Issuccess == true &&
                      state.loadingtype == AuthLoadingStatus.logout) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => LoginPage()),
                    );
                  }
                },
                child: IconButton(
                  onPressed: () {
                    context.read<SignupBloc>().add(SignupEvent.logout());
                  },
                  icon: Icon(Icons.logout),
                ),
              ),
            ],
          ),
          body: (state.isloading == true)
              ? Center(
                  child: LoadingAnimationWidget.fourRotatingDots(
                    color: const Color(0xFFEA3799),
                    size: 40,
                  ),
                )
              : ListView.builder(
                  itemCount: state.DataList.length,
                  itemBuilder: (context, index) {
                    var item = state.DataList[index];
                    return Card(
                      elevation: 3.0,
                      child: ListTile(
                        title: Text(item.name),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(item.description),
                            SizedBox(height: 10),
                            Text(item.brand),
                            SizedBox(height: 10),
                            Text("${item.price} INR"),
                            SizedBox(height: 10),
                            Text(
                              item.availability == "true"
                                  ? "In stock"
                                  : "Not available in Stock",
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                floatingActionButton: ElevatedButton(onPressed: (){
                  
                }, child: Icon(Icons.add))
        );
      },
    );
  }
}
