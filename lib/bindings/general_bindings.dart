import 'package:get/get.dart';
import 'package:blood_donation_app/common/network_manager.dart';

class GeneralBindings extends Bindings{
  @override
  void dependencies() {
Get.put(NetworkManager());
  }
}