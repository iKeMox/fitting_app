
import 'package:flutter/material.dart';
import 'package:graduation_project_fitting_app/features/categorise/pages/categorise_view.dart';
import 'package:graduation_project_fitting_app/features/product/pages/product_view.dart';
import 'package:graduation_project_fitting_app/settings_provider.dart';
import 'package:provider/provider.dart';

import 'core/config/application_theme_manager.dart';
import 'features/login/pages/login_view.dart';
import 'features/register/pages/register_view.dart';
import 'features/splash/pages/splash_view.dart';
import 'layout.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var vm = Provider.of<SettingsProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: vm.currentTheme,
      theme: ApplicationThemeManager.lightTheme,
      darkTheme: ApplicationThemeManager.darkTheme,
      title: "Fitting App",
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        LoginView.routeName: (context) => LoginView(),
        RegisterView.routeName: (context) => RegisterView(),
        CategoriseView.routeName: (context) => const CategoriseView(),
        ProductView.routeName: (context) => const ProductView(),
      },
    );
  }
}