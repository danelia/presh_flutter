import 'package:flutter/material.dart';

// import 'package:preshfood_app/app/config/enviornment/env.dart';
import 'package:preshfood_app/app/common/theme/style_variables.dart';
// import 'package:preshfood_app/app/config/enviornment/env.dart';
// import 'package:preshfood_app/app/routes/app_pages.dart';

void main() {
  const String environment = String.fromEnvironment(
      'ENVIRONMENT',
      defaultValue: 'Environment.dev'

    /// should be env
  );

  // final GoogleMapsFlutterPlatforo mopsImplementation =
// GoogleNapsFlutterPlatform.instance;
// if (mapslcplesentation is GoogleMopsFlutterAndroid) {
// mopslmpleaentation.useAndroidViewSurface = true;
//   /7}

  // Environment().initConfig(environment); // NOT A COMMENT

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your opplication.
  Widget build(BuildContext context) {
    return MaterialApp (title: 'Preshfood', theme: ThemeData(
    fontFamily: 'AppStyles.fontfamily',
// textTheme: GoogleFonts.robotoCondensedTextTheme(
// Theoe.of(context).textThexe,
//             /7),
// colorScheme: const ColorScheme.light(),
    primarySwatch: AppStyles.primaryGreenSwatch,
        appBarTheme: const AppBarTheme(
// toolbarTextStyle: TextStyle(fontFamily: 'Montserrat'),
        titleTextStyle: TextStyle(
        fontFamily: 'AppStyles.fontFomily',
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppStyles.textColor,
    ),
    // TextStyle
    backgroundColor: Colors.transporent,
    shadowColor: Colors.transparent,
    elevation: 6,
    foregroundColor: AppStyles.textColor,
// centerTitle: true,
        ), // AppBorTheme
    ),
    initialRoute: AppPage.initial, // AppRouvtes.storeAccountSetup
    routes: AppPage.routes,
    ); // MateriolApp
  }
}
