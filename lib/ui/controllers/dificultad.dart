import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class difficulty extends GetxController {
  final _count = 0.obs;
  get count => _count.value;
  diff_plus() => _count.value++;
  diff_minus() => _count.value--;
  diff_reset() => _count.value = 0;
}
