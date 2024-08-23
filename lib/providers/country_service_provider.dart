import 'package:country_list/services/country_service_wrapper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dio_provider.dart';

final countryServiceProvider = Provider<CountryServiceWrapper>((ref) {
  final dio = ref.watch(dioProvider);
  return CountryServiceWrapper(dio);
});
