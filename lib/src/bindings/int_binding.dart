import 'package:get/get.dart';
import 'package:my_first_flutter_project/src/controller/bottom_nav_controller.dart';

class IntBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController());
  }
}
