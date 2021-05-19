import 'package:flutter/material.dart';
import 'package:fund_screener_page/views/home/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fund Screener',
      theme: ThemeData(
        primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Open Sans',
          ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(),
    );
  }
}