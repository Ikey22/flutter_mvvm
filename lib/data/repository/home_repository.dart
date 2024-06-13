class HomeRepository {
  Future<List<String>> getItems() async {
    return Future.delayed(
        const Duration(seconds: 5), () => ['Collins', 'David 1', 'Painter']);
  }
}
