import 'package:appstoreapi/helper/api_class.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    // Set Url

    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
