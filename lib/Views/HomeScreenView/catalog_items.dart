import 'package:cart/Model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controller/product_controller.dart';

class CatalogItems extends StatelessWidget {
  const CatalogItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: Product.products.length,
            itemBuilder: (BuildContext, index) {
              return CatalogItemsCard(index: index);
            }));
  }
}

class CatalogItemsCard extends StatelessWidget {
  CatalogItemsCard({Key? key, required this.index}) : super(key: key);
  final int index;
  RxBool favorite = false.obs;
  final cartController = Get.put(CartController());
  void change(){
    favorite.toggle();
  }
  @override
  Widget build(BuildContext context) {
    return Obx(()=> Padding(padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(Product.products[index].imageUrl),
          ),
          const SizedBox(width: 20,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: Text(Product.products[index].name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)),
                  Expanded(child: Text('${Product.products[index].price.toString()}'" \$", style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),))
                ],
              ),
              Padding(padding: const EdgeInsets.only(top: 10, right: 10),
                child: Text(Product.products[index].description),)
            ],
          )),
          IconButton(
              onPressed: (){
                cartController.addProduct(Product.products[index]);
              },
              icon: const Icon(Icons.add_circle, color: Color.fromRGBO(33, 135, 171, 1),)),
          Visibility(
            child: IconButton(
                onPressed: (){
                  change();
                },
                icon: const Icon(Icons.favorite_border, color: Color.fromRGBO(187, 5, 5, 1),)),
            visible: favorite.isFalse,
            replacement: IconButton(
                onPressed: (){
                  change();
                },
                icon: const Icon(Icons.favorite, color: Color.fromRGBO(187, 5, 5, 1),)),),
        ],
      ),
    ));
  }

}
