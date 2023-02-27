import 'dart:convert';

class Product {
  int id;
  String title;
  String price;
  String cost;
  String description;
  int category;
  int batch;
  int quantity;

  Product(
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.cost,
    this.batch,
    this.quantity,
  );

  Product.fromJson(Map json)
      : id = json['id'],
        title = json['name'],
        price = json['price'],
        description = json['description'],
        category = json['category'],
        cost = json['cost'],
        batch = json['batch'],
        quantity = json['quantity'];
  Map toJson() {
    return {
      title: 'name',
      price: 'price',
      description: 'description',
      category: 'category',
      cost: 'cost',
      batch: 'batch',
      quantity: 'quantity'
    };
  }
}
