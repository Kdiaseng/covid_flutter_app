class CountryInfo {
  int id;
  String iso2;
  String iso3;
  String flag;

  CountryInfo({
      this.id, 
      this.iso2, 
      this.iso3,
      this.flag});

  CountryInfo.fromJson(dynamic json) {
    id = json["_id"];
    iso2 = json["iso2"];
    iso3 = json["iso3"];
    flag = json["flag"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["_id"] = id;
    map["iso2"] = iso2;
    map["iso3"] = iso3;
    map["flag"] = flag;
    return map;
  }

}