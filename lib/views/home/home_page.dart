import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fund_screener_page/text/funds_companion.dart';
import 'package:fund_screener_page/widgets/search_button.dart';
import 'package:fund_screener_page/widgets/searchbar/fund_search_bar.dart';

/// Class to build Home page.
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Expanded(
      flex: 7,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // show Fund Companion Text
              FundsCompanionText(),
              SizedBox(height: 20),
              // Search bar for first Fund
              SearchBar('Fund Name'),
              SizedBox(height: 20),
              // Search Bar for Second Fund
              SearchBar('Fund Name'),
              SizedBox(height: 20),
              // Click button to compare.
              SearchButton('Compare'),
            ],
          ),
        ),
      ),
    );
  }
}