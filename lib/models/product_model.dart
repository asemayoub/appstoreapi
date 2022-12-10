// Product Model Class

class ProductModel {
  final String id;
  final String title;
  final double price;
  final String descreption;
  final String category;
  final String image;
  final Rating rating;

  // Add Constructor Product Model

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.descreption,
      required this.category,
      required this.image,
      required this.rating});

  // Add Factory Json Data

  factory ProductModel.fromJson(jsondata) {
    return ProductModel(
      id: jsondata['id'],
      title: jsondata['title'],
      price: jsondata['price'],
      descreption: jsondata['description'],
      category: jsondata['category'],
      image: jsondata['image'],
      // هنا اما استدعيت الموديل اللي فيه الماب استدعيته بالطريقة دي عشان يرجعلي كل البيانات الي جوا الماب
      rating: Rating.fromJson(jsondata['rating']),
    );
  }
}

// هنا في ماب تانية جوا الماب فانا هتعامل معاها انها موديل

class Rating {
  final double rate;
  final int count;

  Rating({required this.rate, required this.count});

  factory Rating.fromJson(jsondata) {
    return Rating(rate: jsondata['rate'], count: jsondata['count']);
  }
}
