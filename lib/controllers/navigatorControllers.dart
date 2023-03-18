import 'package:get/get.dart';

class NavigatorController extends GetxController {
  var selectedIndex = 0;

  void changeNavBarIndex(int index) {
    selectedIndex = index;
    update(["change NavBar Index"]);
  }
}
