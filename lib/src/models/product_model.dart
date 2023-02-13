class Product {
  final int id;
  final String title;
  final String price;
  final String cost;
  final String description;
  final int category;
  final int batch;

  Product(
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.cost,
    this.batch,
  );

  Product.fromJson(Map json)
      : id = json['id'],
        title = json['name'],
        price = json['price'],
        description = json['description'],
        category = json['category'],
        cost = json['cost'],
        batch = json['batch'];
  Map toJson() {
    return {
      id: 'id',
      title: 'name',
      price: 'price',
      description: 'description',
      category: 'category',
      cost: 'cost',
      batch: 'batch'
    };
  }
}
