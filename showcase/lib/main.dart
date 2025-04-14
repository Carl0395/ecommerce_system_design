import 'package:ecommerce_system_design/foundation/themes.dart';
import 'package:flutter/material.dart';
import 'package:showcase/config/routes/app_routes.dart';
import 'package:showcase/screens/atoms_page.dart';
import 'package:showcase/screens/foundation_page.dart';
import 'package:showcase/screens/home_page.dart';
import 'package:showcase/screens/molecules_page.dart';
import 'package:showcase/screens/organism_page.dart';
import 'package:showcase/screens/pages_page.dart';
import 'package:showcase/screens/templates_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      onGenerateRoute: (settings) {
        final name = settings.name;

        switch (name) {
          case AppRoutes.foundation:
            return MaterialPageRoute(
              builder: (context) => const FoundationPage(),
            );
          case AppRoutes.atoms:
            return MaterialPageRoute(builder: (context) => const AtomsPage());
          case AppRoutes.molecules:
            return MaterialPageRoute(
              builder: (context) => const MoleculesPage(),
            );
          case AppRoutes.organisms:
            return MaterialPageRoute(
              builder: (context) => const OrganismPage(),
            );
          case AppRoutes.templates:
            return MaterialPageRoute(
              builder: (context) => const TemplatesPage(),
            );
          case AppRoutes.pages:
            return MaterialPageRoute(builder: (context) => const PagesPage());
          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
        }
      },
    );
  }
}
