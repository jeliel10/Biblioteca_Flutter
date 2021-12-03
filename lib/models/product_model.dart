class Product {
  late String title;
  late String pages;
  late num price;
  late String imageName;

  Product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    pages = json['pages'];
    price = json['price'];
    imageName = json['imageName'];
  }
}
