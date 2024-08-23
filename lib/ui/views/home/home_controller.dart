import 'package:country_list/model/country/country.dart';
import 'package:country_list/providers/country_service_provider.dart';
import 'package:country_list/services/country_service_wrapper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// FutureProvider that fetches the list of countries
final countryDataProvider = FutureProvider<List<Country>>((ref) async {
  final countryService = ref.read(countryServiceProvider);
  return HomeController(countryService, ref).fetchCountries();
});

final sortingCriteriaProvider = StateProvider<String>((ref) => "Population");
final sortingOrderProvider = StateProvider<String>((ref) => "Descending");

class HomeController {
  HomeController(this.countryService, this.ref);

  final Ref ref;
  final CountryServiceWrapper countryService;

  // Method to fetch countries
  Future<List<Country>> fetchCountries() async {
    try {
      // Fetch the countries from the service
      final countries = await countryService.getCountries();

      return countries;
    } catch (e) {
      throw Exception('Failed to fetch countries: $e');
    }
  }
}
