class ApiModel {
  var id;
  String title;
  String description;
  var price;
  var discountPercentage;
  var rating;
  var stock;
  String brand;
  String category;
  String thumbnail;

  ApiModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
  });

  factory ApiModel.formJSON({required Map data}) {
    return ApiModel(
      id: data['id'],
      title: data['title'],
      description: data['description'],
      price: data['price'],
      discountPercentage: data['discountPercentage'],
      rating: data['rating'],
      stock: data['stock'],
      brand: data['brand'],
      category: data['category'],
      thumbnail: data['thumbnail'],
    );
  }
}
