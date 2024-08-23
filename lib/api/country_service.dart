import 'package:country_list/model/country/country.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'country_service.g.dart';

@RestApi(baseUrl: "https://restcountries.com/v3.1/")
abstract class CountryService {
  factory CountryService(Dio dio, {String baseUrl}) = _CountryService;

  @GET("region/europe")
  Future<List<Country>> getCountries(
      {@Query('fields')
      String fields = 'name,capital,flags,region,languages,population'});
}
