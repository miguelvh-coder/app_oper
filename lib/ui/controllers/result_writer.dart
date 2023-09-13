import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Resul_writer extends GetxController {
  final _count = 0.obs;
  get count => _count.value;
  newdigit(int a) => _count.value = _count.value * 10 + a;
  reset() => _count.value = 0;
}
