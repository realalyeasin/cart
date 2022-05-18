import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controller/product_controller.dart';
import '../CartView/cart_screen.dart';
import 'catalog_items.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    RxInt number = controller.quantityy;
    return Obx(() => Scaffold(
      backgroundColor: Color.fromRGBO(166, 207, 221, 1),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(child: Icon(Icons.shopping_bag, size: 20,),
            badgeContent: Text(controller.favoritetQuantity.toString()),),
          )
        ],
        backgroundColor: Color.fromRGBO(33, 135, 171, 1),
        title: const Text("Catalog"),),
      body: SafeArea(
        child: Column(
          children: [
            CatalogItems(),
            Badge(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color.fromRGBO(33, 135, 171, 1)),
                  onPressed: (){ Get.to(() => CartScreen()); },
                  child: const Text("Go to Cart")),
              badgeContent: Text(number.string, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              badgeColor: Colors.black,
              borderRadius: BorderRadius.circular(10),
              toAnimate: false,
              animationType: BadgeAnimationType.slide,
              animationDuration: Duration(seconds: 2),
              showBadge: true,
            ),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    ));
  }
}
