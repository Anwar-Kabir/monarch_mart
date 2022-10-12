import 'package:get/get.dart';

class GetxDependencyInjection implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => TabController());
    Get.lazyPut(() => null);
  }
}
