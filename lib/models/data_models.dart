class DataModel {

  String name;

  String img;
  int price;
  int people;
  int stars;
  String description;
  String location;
  //added by mee
  String a1,a2,a3,a4,a5;


  DataModel({
    required this.name,
    required this.img,
    required this.price,
    required this.people,
    required this.stars,
    required this.description,
    required this.location,
    required this.a1,
    required this.a2,
    required this.a3,
    required this.a4,
    required this.a5
});

  factory DataModel.fromJson(Map<String,dynamic>json){
    return DataModel(name: json['name'],
        img: json['img'],
        price: json['price'],
        people: json['people'],
        stars: json['stars'],
        description: json['description'],
        location: json['location'],
        a1: json['a1'],
      a2: json['a2'],
      a3: json['a3'],
      a4: json['a4'],
      a5: json['a5']
    );
  }
}