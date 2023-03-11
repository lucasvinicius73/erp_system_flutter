import 'dart:convert';

class Product {
  int id;
  String name;
  String price;
  int brand;
  int category;
  String description;

  Product(
    this.id,
    this.name,
    this.price,
    this.brand,
    this.description,
    this.category,
  );

  Product.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        price = json['price'],
        description = json['description'],
        category = json['category'],
        brand = json['brand'];

  Map toJson() {
    return {
      name: 'name',
      price: 'price',
      brand: 'brand',
      category: 'category',
      description: 'description',
    };
  }
}
