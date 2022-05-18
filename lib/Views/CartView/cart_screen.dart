import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controller/product_controller.dart';
import 'cart_products.dart';
import 'cart_total.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(166, 207, 221, 1),
      appBar: AppBar(title: Text("Your Cart"), backgroundColor: Color.fromRGBO(33, 135, 171, 1),),
      body: Obx(()=> cartController.quantityy == 0 ? Center(child: Text("No Items in cart", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),),) :
      Column(
            children: [
              Expanded(child: CartProducts()),
              CartTotal()
            ],
          ),
        )
    );
  }
}
