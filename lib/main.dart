
// import 'package:compilate/src/pages/home_temp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 
import 'package:compilate/src/routes/routes.dart';
import 'package:compilate/src/pages/alert_page.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compilate App',
      debugShowCheckedModeBanner: false,
      // home: HomePage()
      
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],//para los idiomas.
      supportedLocales: [
        const Locale('en', 'US'), // English
        const Locale('es', 'ES'), // Español
        // ... other locales the app supports
      ],


      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ){
        // print('ruta llamada:  ${settings.name}');

        return MaterialPageRoute(
          builder: ( BuildContext context ) => AlertPage()
          
          );

      },
    );
  }
}