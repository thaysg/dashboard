import 'package:get/get.dart';
import './main_app_controller.dart';

class MainAppBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(MainAppController());
    }
}