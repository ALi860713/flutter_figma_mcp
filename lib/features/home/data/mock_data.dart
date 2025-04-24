import 'models/product.dart';

final List<Product> mockProducts = [
  const Product(
    id: '1',
    name: 'Product name',
    brand: 'Brand',
    price: 10.99,
    imageUrl: 'assets/images/product1.png',
  ),
  const Product(
    id: '2',
    name: 'Product name',
    brand: 'Brand',
    price: 10.99,
    imageUrl: 'assets/images/product2.png',
  ),
  const Product(
    id: '3',
    name: 'Product name',
    brand: 'Brand',
    price: 10.99,
    imageUrl: 'assets/images/product3.png',
  ),
];

final List<Category> mockCategories = [
  const Category(
    id: '1',
    name: 'Title',
    imageUrl: 'assets/images/product1.png',
  ),
  const Category(
    id: '2',
    name: 'Title',
    imageUrl: 'assets/images/product2.png',
  ),
  const Category(
    id: '3',
    name: 'Title',
    imageUrl: 'assets/images/product3.png',
  ),
  const Category(
    id: '4',
    name: 'Title',
    imageUrl: 'assets/images/product1.png',
  ),
];

final List<String> mockBannerImages = [
  'assets/images/banner.png',
  'assets/images/banner.png',
  'assets/images/banner.png',
  'assets/images/banner.png',
  'assets/images/banner.png',
]; 