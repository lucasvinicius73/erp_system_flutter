class Brand {
  final int id;
  final String name;

  Brand(this.id, this.name);

  Brand.fromJson(Map json)
      : id = json['id'],
        name = json['name'];

  Map toJson() {
    return {id: 'id', name: 'name'};
  }
}
