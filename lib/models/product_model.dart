class ProductModel {
  final String name;
  final double price;
  final List<String> images;
  ProductModel({
    required this.name,
    required this.price,
    required this.images,
  });
}

List<ProductModel> products = [
  ProductModel(
      name: "Heavy Black Tshirt", price: 699, images: ["assets/cloths/1.png"]),
  ProductModel(
      name: "Be Creative", price: 899, images: ["assets/cloths/2.png"]),
  ProductModel(name: "White", price: 749, images: ["assets/cloths/3.png"]),
  ProductModel(
      name: "Lethal Blue", price: 849, images: ["assets/cloths/4.png"]),
  ProductModel(name: "Grey", price: 999, images: ["assets/cloths/5.png"]),
];
