import 'package:appstoreapi/helper/api_class.dart';

import '../models/product_model.dart';

class AllProductServices {
  Future<List<ProductModel>> getAllProduct() async {
    // هنا انا بستدعي ال URL بتاع المنتجات كلهها

    // الداتا اللي هنا كلها اخدتها من فايل Helper لان عملت كلاس رئيسي هناك

    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    // هنا انا بخليه يجلب كل البيانات اللي جوا الداتا

    // هنا انا بعرفله ليسته فاضيه عشان يحطلي فيها المنتجات

    List<ProductModel> productsList = [];

    for (int i = 0; i < data.length; i++) {
      // ههنا انا هخليه يضيف المنتجات من اللوب

      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }

    // هنا بعد مضيفت المنتجات في الليسا برجعها تاني للفانكشن

    return productsList;
  }
}
