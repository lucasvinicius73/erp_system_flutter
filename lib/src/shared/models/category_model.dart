class CategoryModel {
  final int id;
  final String name;

  CategoryModel(
    this.id,
    this.name,
  );

  CategoryModel.fromJson(Map json)
      : id = json['id'],
        name = json['name'];
  Map toJson() {
    return {name: 'name'};
  }
}
