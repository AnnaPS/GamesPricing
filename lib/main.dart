import 'package:GCPrice/presentation/routes/myRoutes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      onGenerateRoute: MyRouter.generateRoute,
      initialRoute: MyRouter.homeRoute,
    );
  }
}
