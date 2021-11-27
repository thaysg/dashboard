import 'package:get/get.dart';
import './selling_controller.dart';

class SellingBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(SellingController());
    }
}