import 'package:get/get.dart';
import 'package:mvvm_tutorial/data/model/home_view_model.dart';
import 'package:mvvm_tutorial/data/repository/home_repository.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeRepository>(
      () => HomeRepository(),
    );
    Get.lazyPut<HomeViewModel>(
      () => HomeViewModel(homeRepository: Get.find<HomeRepository>()),
    );
  }
}
