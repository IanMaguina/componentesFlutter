import 'package:compilate/src/pages/alert_page.dart';
import 'package:compilate/src/pages/animated_container.dart';
import 'package:compilate/src/pages/avatar_page.dart';
import 'package:compilate/src/pages/card_page.dart';
import 'package:compilate/src/pages/home_page.dart';
import 'package:compilate/src/pages/input_page.dart';
import 'package:compilate/src/pages/listview_page.dart';
import 'package:compilate/src/pages/slider_page.dart';
import 'package:flutter/material.dart';



Map<String, WidgetBuilder> getApplicationRoutes(){


return <String, WidgetBuilder>{
        '/' : ( BuildContext context ) => HomePage(),
        'alert' : ( BuildContext context ) => AlertPage(),
        'avatar' : ( BuildContext context ) => AvatarPage(),
        'card' : ( BuildContext context ) => CardPage(),
        'animatedContainer' : ( BuildContext context ) => AnimatedContainerPage(),
        'inputs' : ( BuildContext context ) => InputPage(),
        'slide' : ( BuildContext context ) => SliderPage(),
        'list' : ( BuildContext context ) => ListaPage(),
      };
}
