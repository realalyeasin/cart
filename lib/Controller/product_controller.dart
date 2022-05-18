import 'package:cart/Model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  var _products = {}.obs;
  var _favorite ={}.obs;
  var quantity = 0.obs;
  var favoritetQuantity = 0.obs;
  void addProduct(Product product){
    if(_products.containsKey(product)){
      _products[product] +=1;
      quantity++;
    } else {
      _products[product] = 1;
      quantity++;
    }
    Get.snackbar("Product Added", "You have added ${product.name} to the cart", backgroundColor: Color.fromRGBO(124, 192, 216, 1),
      snackPosition: SnackPosition.TOP,
      duration: Duration(seconds: 2),
      margin: EdgeInsets.all(15));
  }

  void removeProduct(Product product){
    if(_products.containsKey(product) && _products[product] ==1){
      _products.removeWhere((key, value) => key == product);
      quantity--;
    } else {
      _products[product] -=1;
      quantity--;
    }
  }

  get favorite => _favorite;

  get products => _products;

  get quantityy => quantity;

  //get productSubtotal => _products.entries.map((e) => e.key.price * e.value).toList();

  get total => _products.entries.map((total) => total.key.price * total.value).toList().reduce((value, element) => value + element).toStringAsFixed(2);
}