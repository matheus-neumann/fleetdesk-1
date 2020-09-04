import 'package:fleetdesk/app/controller/documents/documents_controller.dart';
import 'package:get/get.dart';

class DocumentsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DocumentsController>(() {
      return DocumentsController();
    });
  }
}
