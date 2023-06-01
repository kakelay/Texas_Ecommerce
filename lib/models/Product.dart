// ignore: file_names
import 'package:flutter/material.dart';

class Product {
  final String image, title, rating;
  final int price;
  final Color bgColor;

  Product({
    required this.rating,
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });

  // selectedItem() => 1;
  int selectedItem = 1 ;
}

List<Product> cartItem = [];
List<Product> bookmarkedItem = [];
// ignore: non_constant_identifier_names
List<Product> demo_product = [
  Product(
    image: "assets/images/product_0.png",
    title: "Long Sleeve Shirts",
    price: 5,
    rating: "12345",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Casual Henley Shirts",
    price: 99,
    rating: "12345",
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 180,
    rating: "12345",
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Casual Nolin",
    price: 6,
    rating: "12345",
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/product_0.png",
    title: "Long Sleeve Shirts",
    price: 165,
    rating: "12345",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Casual Henley Shirts",
    price: 99,
    rating: "12345",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 180,
    rating: "123",
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Casual Nolin",
    price: 149,
    rating: "1234",
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/product_0.png",
    title: "Long Sleeve Shirts",
    price: 165,
    rating: "123",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
      image: "assets/images/product_1.png",
      title: "Casual Henley Shirts",
      price: 99,
      rating: "1233"),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 180,
    rating: "12345",
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Casual Henley Shirts",
    price: 99,
    rating: "12345",
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 180,
    rating: "12345",
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Casual Nolin",
    price: 149,
    rating: "12345",
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/product_0.png",
    title: "Long Sleeve Shirts",
    price: 165,
    rating: "12345",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Casual Henley Shirts",
    price: 99,
    rating: "12345",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 180,
    rating: "123",
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_3.png",
    title: "Casual Nolin",
    price: 149,
    rating: "1234",
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/product_0.png",
    title: "Long Sleeve Shirts",
    price: 165,
    rating: "123",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
      image: "assets/images/product_1.png",
      title: "Casual Henley Shirts",
      price: 99,
      rating: "1233"),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 180,
    rating: "12345",
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 180,
    rating: "12345",
    bgColor: const Color(0xFFF8FEFB),
  ),
];
