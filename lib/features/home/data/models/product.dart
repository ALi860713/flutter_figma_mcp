class Product {
  final String id;
  final String name;
  final String brand;
  final double price;
  final String imageUrl;

  const Product({
    required this.id,
    required this.name,
    required this.brand,
    required this.price,
    required this.imageUrl,
  });
}

class Category {
  final String id;
  final String name;
  final String imageUrl;

  const Category({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
} 