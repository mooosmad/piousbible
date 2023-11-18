import 'package:get/get.dart';

import '../controllers/searchbible_controller.dart';

class SearchbibleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchbibleController>(
      () => SearchbibleController(),
    );
  }
}
