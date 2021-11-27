import 'package:get/get.dart';
import './financial_controller.dart';

class FinancialBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(FinancialController());
    }
}