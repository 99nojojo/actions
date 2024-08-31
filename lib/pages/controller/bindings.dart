import 'package:get/get.dart';

class CommonBinding implements Bindings {
  final Function()? func;

  CommonBinding(this.func);

  @override
  void dependencies() {
    func?.call();
  }
}
