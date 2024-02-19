import 'dart:async';

import 'package:craft_scene/common/constants/app_theme.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter/material.dart';

const bool devicePreviewEnabled = false;
const supportedLocales = [
  Locale('en'),
  Locale('ar'),
];
const fallbackLocale = Locale('en');
const localizationAssetPath = 'assets/translation_files';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();

  const App({super.key});
  @override
  Widget build(BuildContext context) {
    final page = GestureDetector(
      onTap: () async {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'craftscene',
        builder: (context, widget) {
          final mediaQueryData = MediaQuery.of(context);
          return MediaQuery(
            // Disable device font scaling
            data: mediaQueryData.copyWith(
                textScaler: const TextScaler.linear(1.0)),
            child: widget!,
          );
        },
        theme: AppTheme.primaryTheme(context),
        home: const Placeholder(),
      ),
    );
    return page;
  }
}
