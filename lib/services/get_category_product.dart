import 'package:appstoreapi/helper/api_class.dart';

import '../models/product_model.dart';

class CategoryService {
  Future<List<ProductModel>> getCategoryProduct(
      {required String categoryName}) async {
    // هنا انا بستدعي ال URL بتاع المنتجات كلهها

    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    // هنا انا بخليه يجلب كل البيانات اللي جوا الداتا

    // هنا انا بعرفله ليسته فاضيه عشان يحطلي فيها المنتجات

    List<ProductModel> productList = [];

    for (int i = 0; i < data.length; i++) {
      // ههنا انا هخليه يضيف المنتجات من اللوب

      productList.add(data[i]);
    }

    // هنا بعد مضيفت المنتجات في الليسا برجعها تاني للفانكشن

    return productList;
  }
}
