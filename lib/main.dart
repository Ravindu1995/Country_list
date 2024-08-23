import 'dart:async';

import 'package:country_list/providers/package_info_provider.dart';
import 'package:country_list/ui/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

_initLogger() {
  if (kReleaseMode) {
    debugPrint = (message, {wrapWidth}) {};
  }
}

void main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await _initLogger();
      final packageInfo = await PackageInfo.fromPlatform();
      runApp(
        ProviderScope(
          overrides: [packageInfoProvider.overrideWithValue(packageInfo)],
          child: const AppView(),
        ),
      );
    },
    (error, stackTrace) {},
  );
}
