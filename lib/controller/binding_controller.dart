import 'package:get/get.dart';
import 'package:invoice_billapp/controller/clientdetails_controller.dart';
import 'package:invoice_billapp/controller/home_controller.dart';

class BindingController implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut<ClientController>(() => ClientController(),fenix: true);
  Get.lazyPut<HomeController>(() => HomeController(),fenix: true);
  }
}