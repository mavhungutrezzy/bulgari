
class Product {

  String image;
  String title;
  double price;
  String description;
  

  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.description,

  });

  factory Product.fromJson(Map<String, dynamic> json) {

    return Product(
      image: json['image'],
      title: json['title'],
      price: json['price'],
      description: json['description']
    );
  }
}

