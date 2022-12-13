import 'package:appstoreapi/helper/api_class.dart';
import 'package:appstoreapi/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String descreption,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      "title": title,
      "price": price,
      "description": descreption,
      "image": image,
      "category": category,
    });

    return ProductModel.fromJson(data);
  }
}
