import 'dart:developer';

import 'package:fire_bse/Core/network/api_constants.dart';
import 'package:fire_bse/Feature/AddProducts/Presentation/Screens/addnewProduct.dart';
import 'package:fire_bse/Feature/Homepage/Presentation/BLOC/product/product_bloc.dart';
import 'package:fire_bse/Feature/auth/Presenation/Screens/Login.dart';
import 'package:fire_bse/Feature/auth/Presenation/Screens/bloc/bloc/auth/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:logger/logger.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
      // ProductEvent.getProdcts(ApiConstants.endpoint),
      ProductEvent.getProdctsfromBase(),
    );
    super.initState();
  }

  bool isloadingCard = false;

  var logger = Logger(printer: PrettyPrinter());
  Widget build(BuildContext context) {
    return BlocListener<ProductBloc, ProductState>(
      listener: (context, state) {
        if (state.isloading == true) {
          isloadingCard = true;
        }
      },
      child: BlocBuilder<ProductBloc, ProductState>(
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
                  itemCount: state.firebaseDataList.length,
                  itemBuilder: (context, index) {
                    var item = state.firebaseDataList[index];
                    return Card(
                      elevation: 3.0,
                      child: ListTile(
                        title: Text(
                          item.name,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  item.image,
                                  fit: BoxFit.cover,
                                  height: 100,
                                ),
                                SizedBox(width: 10.0),
                                Expanded(
                                  child: Text(
                                    item.description,
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                
                            Text(
                              "Price: ${item.price} INR",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
            // : ListView.builder(
            //     itemCount: state.DataList.length,
            //     itemBuilder: (context, index) {
            //       var item = state.DataList[index];
            //       return Card(
            //         elevation: 3.0,
            //         child: ListTile(
            //           title: Text(item.name),
            //           subtitle: Column(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Text(item.description),
            //               SizedBox(height: 10),
            //               Text(item.brand),
            //               SizedBox(height: 10),
            //               Text("${item.price} INR"),
            //               SizedBox(height: 10),
            //               Text(
            //                 item.availability == "true"
            //                     ? "In stock"
            //                     : "Not available in Stock",
            //               ),
            //             ],
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            floatingActionButton: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  (MaterialPageRoute(builder: (context) => AddProduct())),
                );
              },
              child: Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
