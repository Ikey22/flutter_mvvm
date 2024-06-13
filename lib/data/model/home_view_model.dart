import 'package:get/get.dart';
import 'package:mvvm_tutorial/data/repository/home_repository.dart';

class HomeViewModel extends GetxController {
  final HomeRepository homeRepository;

  HomeViewModel({required this.homeRepository});

  var items = <String>[].obs;

  void fetchItems() async {
    try {
      print('Fetching items...');
      var fetchedItems = await homeRepository.getItems();
      items.value = fetchedItems;
      print('Fetched Items: $fetchedItems');
    } catch (e) {
      print('Failed to fetch items: $e');
    }
  }
}
