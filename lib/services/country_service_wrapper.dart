import 'package:country_list/api/country_service.dart';
import 'package:country_list/model/country/country.dart';
import 'package:dio/dio.dart';

class CountryServiceWrapper {
  final CountryService _countryService;

  CountryServiceWrapper(Dio dio) : _countryService = CountryService(dio);

  Future<List<Country>> getCountries() async {
    try {
      final response = await _countryService.getCountries();

      //print(response.length);
      return response;
    } on DioException catch (e) {
      // Handle Dio errors
      throw Exception('Failed to load countries: ${e.message}');
    } catch (e) {
      // Handle other errors
      throw Exception('An unexpected error occurred: ${e.toString()}');
    }
  }
}
