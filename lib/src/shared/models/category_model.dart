class CategoryModel {
  final String name;

  CategoryModel(this.name);

  CategoryModel.fromJson(Map json) : name = json['name'];
  Map toJson() {
    return {name: 'name'};
  }
}
