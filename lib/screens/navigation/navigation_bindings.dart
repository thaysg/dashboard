import 'package:get/get.dart';
import './navigation_controller.dart';

class NavigationBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(NavigationController());
    }
}