import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../Controller/product_controller.dart';

class CartTotal extends StatelessWidget {
  CartTotal({Key? key}) : super(key: key);
  final CartController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    var number = controller.quantity;
    return Obx(() => Column(
          children: [
            Text(
              'Total ${number}',
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "${controller.total.toString()}" " \$",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
