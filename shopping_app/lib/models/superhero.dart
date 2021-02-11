class Superhero {
  String id;
  String name;

  Superhero({this.id, this.name});

  Map toJson() => {
        'id': id,
        'name': name,
      };

  Superhero.fromJson(Map json)
      : id = json['id'],
        name = json['name'];
}
