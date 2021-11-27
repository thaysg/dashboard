import 'package:get/get.dart';
import './client_controller.dart';

class ClientBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ClientController());
    }
}