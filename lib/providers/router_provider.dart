import 'package:country_list/routes/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final routerProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});
