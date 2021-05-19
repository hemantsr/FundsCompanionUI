import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fund_screener_page/views/home/home_page.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: <Widget>[
                  HomePage()
                  //AutoCompleteBar(200, 20)
                ],
              ),
          ),
        ),
    );
  }
}