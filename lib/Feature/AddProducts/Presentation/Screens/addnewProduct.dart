import 'package:fire_bse/Core/Widgets/commonTextfield.dart';
import 'package:fire_bse/Core/Widgets/comonButton.dart';
import 'package:fire_bse/Feature/AddProducts/Domain/entity/product_enttiy.dart';
import 'package:fire_bse/Feature/AddProducts/Presentation/addproduct/addproduct_bloc.dart';

import 'package:fire_bse/Feature/Homepage/Presentation/BLOC/product/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController name = TextEditingController(text: "");
  TextEditingController desc = TextEditingController();
  TextEditingController img = TextEditingController();
  TextEditingController price = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    desc.dispose();
    img.dispose();
    price.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<AddproductBloc, AddproductState>(
        listener: (context, state) {
          if (state.issuccess == true &&
              state.productstate == addProdcutState.addproductadded) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("${state.msg}")));
            name.clear();
            desc.clear();
            img.clear();
            price.clear();
          }
          if (state.iserror == true &&
              state.productstate == addProdcutState.error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Error :${state.msg}")));
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/logo1.svg',
                  width: 300,
                  height: 300,
                ),
                Commontextfield(controller: name, label: "Product Name"),
                Commontextfield(
                  controller: desc,
                  label: "Description",
                  maxlines: 3,
                ),
                Commontextfield(controller: img, label: "ImageUrl"),
                Commontextfield(controller: price, label: "Price"),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Comonbutton(
                      color: Colors.deepPurpleAccent,
                      w: 150,
                      h: 60,
                      txt: "CANCEL",
                      onPressed: () {},
                    ),
                    BlocBuilder<AddproductBloc, AddproductState>(
                      builder: (context, state) {
                        return (state.isloadng ==true)?Center(
                              // child: LoadingAnimationWidget.twistingDots(
                              //   leftDotColor: const Color(0xFF1A1A3F),
                              //   rightDotColor: const Color(0xFFEA3799),
                              //   size: 40,
                              // ),
                              child: LoadingAnimationWidget.waveDots(
                                color: const Color.fromARGB(255, 240, 240, 240),
                                size: 40,
                              ),
                            ):Comonbutton(
                          color: Colors.deepPurpleAccent,
                          w: 150,
                          h: 60,
                          txt: "SAVE",
                          onPressed: () {
                            print("pressed");
                            final product = AddProductEnttiy(
                              name: name.text,
                              descption: desc.text,
                              imageUrl: img.text,
                              price: price.text,
                            );
                            context.read<AddproductBloc>().add(
                              AddproductEvent.addNewProducts(product),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
