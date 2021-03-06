class WorldInfo {
  int updated;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int todayRecovered;
  int active;
  int critical;
  int casesPerOneMillion;
  double deathsPerOneMillion;
  int tests;
  double testsPerOneMillion;
  int population;
  int oneCasePerPeople;
  int oneDeathPerPeople;
  int oneTestPerPeople;
  int undefined;
  double activePerOneMillion;
  double recoveredPerOneMillion;
  double criticalPerOneMillion;
  int affectedCountries;

  WorldInfo({
      this.updated, 
      this.cases, 
      this.todayCases, 
      this.deaths, 
      this.todayDeaths, 
      this.recovered, 
      this.todayRecovered, 
      this.active, 
      this.critical, 
      this.casesPerOneMillion, 
      this.deathsPerOneMillion, 
      this.tests, 
      this.testsPerOneMillion, 
      this.population, 
      this.oneCasePerPeople, 
      this.oneDeathPerPeople, 
      this.oneTestPerPeople, 
      this.undefined, 
      this.activePerOneMillion, 
      this.recoveredPerOneMillion, 
      this.criticalPerOneMillion, 
      this.affectedCountries});

  WorldInfo.fromJson(dynamic json) {
    updated = json["updated"];
    cases = json["cases"];
    todayCases = json["todayCases"];
    deaths = json["deaths"];
    todayDeaths = json["todayDeaths"];
    recovered = json["recovered"];
    todayRecovered = json["todayRecovered"];
    active = json["active"];
    critical = json["critical"];
    casesPerOneMillion = json["casesPerOneMillion"];
    deathsPerOneMillion =  json["deathsPerOneMillion"] as double;
    tests = json["tests"];
    testsPerOneMillion = json["testsPerOneMillion"];
    population = json["population"];
    oneCasePerPeople = json["oneCasePerPeople"];
    oneDeathPerPeople = json["oneDeathPerPeople"];
    oneTestPerPeople = json["oneTestPerPeople"];
    undefined = json["undefined"];
    activePerOneMillion = json["activePerOneMillion"];
    recoveredPerOneMillion = json["recoveredPerOneMillion"];
    criticalPerOneMillion = json["criticalPerOneMillion"];
    affectedCountries = json["affectedCountries"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["updated"] = updated;
    map["cases"] = cases;
    map["todayCases"] = todayCases;
    map["deaths"] = deaths;
    map["todayDeaths"] = todayDeaths;
    map["recovered"] = recovered;
    map["todayRecovered"] = todayRecovered;
    map["active"] = active;
    map["critical"] = critical;
    map["casesPerOneMillion"] = casesPerOneMillion;
    map["deathsPerOneMillion"] = deathsPerOneMillion;
    map["tests"] = tests;
    map["testsPerOneMillion"] = testsPerOneMillion;
    map["population"] = population;
    map["oneCasePerPeople"] = oneCasePerPeople;
    map["oneDeathPerPeople"] = oneDeathPerPeople;
    map["oneTestPerPeople"] = oneTestPerPeople;
    map["undefined"] = undefined;
    map["activePerOneMillion"] = activePerOneMillion;
    map["recoveredPerOneMillion"] = recoveredPerOneMillion;
    map["criticalPerOneMillion"] = criticalPerOneMillion;
    map["affectedCountries"] = affectedCountries;
    return map;
  }

}