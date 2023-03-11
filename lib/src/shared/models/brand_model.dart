class Brand {
  final String name;

  Brand(this.name);

  Brand.fromJson(Map json) : name = json['name'];

  Map toJson() {
    return {name: 'name'};
  }
}
