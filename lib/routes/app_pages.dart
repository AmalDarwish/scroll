import 'package:get/get.dart';
import '../controlller_binding.dart';
import '../test.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
        name: AppRoutes.test,
        page: () => const Test(),
        binding: ControllerBindings()),
  ];
}
