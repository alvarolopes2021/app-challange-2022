class InstallerModel {
  String name = "";
  int rating = -1;
  double pricePerKm = 0.0;
  double lat = 0.0;
  double lng = 0.0;

  InstallerModel(this.name, this.rating, this.pricePerKm, this.lat, this.lng);

  InstallerModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        rating = json['rating'],
        pricePerKm = json['pricePerKm'],
        lat = json['lat'],
        lng = json['lng'];

  static List<InstallerModel> fromJsonToList(List<Map<String, dynamic>> json){
    List<InstallerModel> installerList = [];

    json.forEach((element) {

      var installerModel = InstallerModel(
        element['name'],
        element['rating'],
        element['pricePerKm'],
        element['lat'],
        element['lng']
      );

      installerList.add(installerModel);
    });

    return installerList;
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'rating': rating,
        'pricePerKm': pricePerKm,
        'lat': lat,
        'lng': lng
      };
}
