import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:j_store/features/authentications/screens.onboarding/onboarding.dart';
import 'package:j_store/features/authentications/screens.onboarding/widgets/onboarding_page.dart';
import 'package:j_store/utils/theme/theme.dart';

/// --Use this class to setup themes , initial Bindings , any animation and
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: JAppTheme.lightTheme,
      darkTheme: JAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}