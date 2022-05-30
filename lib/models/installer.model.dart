class InstallerModel {
  int id = -1;
  String name = "";
  int rating = -1;
  int pricePerKm = 0;
  double lat = 0.0;
  double lng = 0.0;

  InstallerModel(
      this.id, this.name, this.rating, this.pricePerKm, this.lat, this.lng);

  InstallerModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        rating = json['rating'],
        pricePerKm = json['price_per_km'],
        lat = json['lat'],
        lng = json['lng'];

  static List<InstallerModel> fromJsonToList(List<dynamic> json) {
    List<InstallerModel> installerList = [];

    json.forEach((element) {
      try {
        var installerModel = InstallerModel(
            element['id'],
            element['name'],
            element['rating'],
            element['price_per_km'],
            element['lat'],
            element['lng']);

        installerList.add(installerModel);
      } 
      catch (e) {
        print(e);
      }
    });

    return installerList;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'rating': rating,
        'pricePerKm': pricePerKm,
        'lat': lat,
        'lng': lng
      };
}
