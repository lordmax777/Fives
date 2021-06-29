import 'package:azizga/models/boshSahifa.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => Kirish(),
        "/homePage": (context) => Kirish(),
        "/a": (context) => DotStepperDemo(),
      },

      initialRoute: "/a",

      onGenerateRoute: (stngs) {
        List<String> pathElementlari = stngs.name.toString().split("/");
        if (pathElementlari[1] == "AsosiySahifa") {
          return MaterialPageRoute(
            settings: RouteSettings(name: stngs.name),
            builder: (context) {
              return AsosiyPage(int.parse(pathElementlari[2]));
            },
          );
        }
      },
    );
  }
}
