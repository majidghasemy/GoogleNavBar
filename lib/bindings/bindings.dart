import 'package:get/get.dart';
import '../controllers/navigatorControllers.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigatorController(), fenix: true);
  }
}
