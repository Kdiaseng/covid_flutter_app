import 'country_info.dart';

class CountryModel {
  int updated;
  String country;
  CountryInfo countryInfo;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int todayRecovered;
  int active;
  int critical;
  int casesPerOneMillion;
  int tests;
  int testsPerOneMillion;
  int population;
  String continent;
  int oneCasePerPeople;
  int oneDeathPerPeople;
  int oneTestPerPeople;


  CountryModel({
      this.updated, 
      this.country, 
      this.countryInfo, 
      this.cases, 
      this.todayCases, 
      this.deaths, 
      this.todayDeaths, 
      this.recovered, 
      this.todayRecovered, 
      this.active, 
      this.critical, 
      this.casesPerOneMillion,
      this.tests, 
      this.testsPerOneMillion, 
      this.population, 
      this.continent, 
      this.oneCasePerPeople, 
      this.oneDeathPerPeople, 
      this.oneTestPerPeople,
  });

  CountryModel.fromJson(dynamic json) {
    updated = json["updated"];
    country = json["country"];
    countryInfo = json["countryInfo"] != null ? CountryInfo.fromJson(json["countryInfo"]) : null;
    cases = json["cases"];
    todayCases = json["todayCases"];
    deaths = json["deaths"];
    todayDeaths = json["todayDeaths"];
    recovered = json["recovered"];
    todayRecovered = json["todayRecovered"];
    active = json["active"];
    critical = json["critical"];
    casesPerOneMillion = json["casesPerOneMillion"];
    tests = json["tests"];
    testsPerOneMillion = json["testsPerOneMillion"];
    population = json["population"];
    continent = json["continent"];
    oneCasePerPeople = json["oneCasePerPeople"];
    oneDeathPerPeople = json["oneDeathPerPeople"];
    oneTestPerPeople = json["oneTestPerPeople"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["updated"] = updated;
    map["country"] = country;
    if (countryInfo != null) {
      map["countryInfo"] = countryInfo.toJson();
    }
    map["cases"] = cases;
    map["todayCases"] = todayCases;
    map["deaths"] = deaths;
    map["todayDeaths"] = todayDeaths;
    map["recovered"] = recovered;
    map["todayRecovered"] = todayRecovered;
    map["active"] = active;
    map["critical"] = critical;
    map["casesPerOneMillion"] = casesPerOneMillion;
    map["tests"] = tests;
    map["testsPerOneMillion"] = testsPerOneMillion;
    map["population"] = population;
    map["continent"] = continent;
    map["oneCasePerPeople"] = oneCasePerPeople;
    map["oneDeathPerPeople"] = oneDeathPerPeople;
    map["oneTestPerPeople"] = oneTestPerPeople;
    return map;
  }

}