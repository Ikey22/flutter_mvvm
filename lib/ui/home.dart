// lib/ui/view/home_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_tutorial/data/model/home_view_model.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = Get.find<HomeViewModel>();
    homeViewModel.fetchItems();

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Class')),
      body: Center(child: Obx(
        () {
          if (homeViewModel.items.isEmpty) {
            return CircularProgressIndicator();
          }
          return ListView.builder(
            itemCount: homeViewModel.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(homeViewModel.items[index]),
              );
            },
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeViewModel.items.clear();
          homeViewModel.fetchItems;
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
