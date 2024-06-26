class Product {
  String name;
  String imageURL;
  String? description;
  String? video;


  Product({
    required this.name,
    required this.imageURL,
    this.description,
    this.video,
  });
}
