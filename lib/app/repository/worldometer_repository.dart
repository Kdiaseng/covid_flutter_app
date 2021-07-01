import 'package:covid_flutter_app/app/modules/countries/models/country_model.dart';
import 'package:covid_flutter_app/app/modules/home/models/world_info.dart';
import 'package:dio/dio.dart';

class WorldometerRepository {
  final url = 'https://disease.sh/v3/covid-19';

  Future<WorldInfo> getInfoWorld() async {
    try {
      Response response = await Dio().get('$url/all');
      return WorldInfo.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }

  Future<List<CountryModel>> getInfoCountries() async {
    try {
      Response response = await Dio().get('$url/coutries');
      final responseList = response.data as List;

      return responseList.map((json) => CountryModel.fromJson(json)).toList();
    } on DioError catch (e) {
      throw e;
    }
  }

  Future<CountryModel> getInfoByCountry(String country) async {
    try {
      Response response = await Dio()
          .get('$url/countries/$country', queryParameters: {'strict': true});
      
      return CountryModel.fromJson(response.data);
    } on DioError catch (e) {
      throw e;
    }
  }
}
