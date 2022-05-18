import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/product_controller.dart';
import '../../Model/product_model.dart';

class CartProducts extends StatelessWidget {
  final CartController cartController = Get.put(CartController());
  CartProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => SizedBox(
      height: 600,
      child: ListView.builder(
          itemCount: cartController.products.length,
          itemBuilder: (BuildContext, index){
            return CartProductItems(
              index: index,
              controller: cartController,
              product: cartController.products.keys.toList()[index],
              quantity: cartController.products.values.toList()[index],);
          }),
    ),
    );
  }
}

class CartProductItems extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;
  CartProductItems({Key? key, required this.controller, required this.product, required this.quantity, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(product.imageUrl),
          ),
          SizedBox(width: 20,),
          Expanded(child: Text(product.name)),
          IconButton(onPressed: (){
            controller.removeProduct(product);
          }, icon: Icon(Icons.remove_circle)),
          Text(quantity.toString()),
          IconButton(onPressed: (){
            controller.addProduct(product);
          }, icon: Icon(Icons.add_circle))
        ],
      ),);
  }
}
