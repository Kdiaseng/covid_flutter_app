import 'package:covid_flutter_app/app/modules/countries/models/country_model.dart';
import 'package:covid_flutter_app/app/modules/home/models/info_world.dart';
import 'package:dio/dio.dart';

class WorldometerRepository {
  final url = 'https://disease.sh/v3/covid-19';

  Future<InfoWorld> getInfoWorld() async {
    try {
      Response response = await Dio().get('$url/all');
      return InfoWorld.fromJson(response.data);
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
