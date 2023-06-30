import "package:flutter/material.dart";
import "package:flutter_garbage/utils/routes.dart";
import "package:flutter_garbage/widgets/themes.dart";
import "home_screen.dart";
import "details_page.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        // "/": (context) => LoginPage(),
        "/": (context) => HomeScreen(),
        MyRoutes.detailRoute: (context) => DetailsPage(),
        MyRoutes.homeRoute: (context) => HomeScreen()
      },
      // routes: ,
      // home: HomeScreen(),
    );
  }
}
