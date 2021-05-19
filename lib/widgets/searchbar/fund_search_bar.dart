import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fund_screener_page/model/fund.dart';

class SearchBar extends StatelessWidget {

  // ignore: non_constant_identifier_names
  static List<Fund> FUND_LIST = [
    new Fund(name : "AXIS"),
    new Fund(name : "TATA"),
    new Fund(name : "ICICI"),
  ];

  final String hintText;

   SearchBar(
      this.hintText, {
        Key key,
      }) : super(key: key);

  List<Fund> getFunds() {
    return FUND_LIST;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.60,
      // ignore: missing_required_param
      child: AutoCompleteTextField<Fund>(
        decoration: InputDecoration(
          hintText: this.hintText,
          hintStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          prefixIcon: Icon(Icons.search),
          suffixIcon: Padding(
            padding: EdgeInsets.all(5),
          ),
        ),
        style: TextStyle(color: Colors.black, fontSize: 16.0),
        suggestions: getFunds(),
        clearOnSubmit: false,
        itemFilter: (item, query) {
          return item.name.toLowerCase().contains(query.toLowerCase());
        },
        itemSorter: (a, b) {
          return a.name.compareTo(b.name);
        },
        itemSubmitted: (item) {},
        itemBuilder: (context, item) {
          return fundSuggestionLayout(item);
        },
      )
    );
  }

  /// Represents how suggestions will be shown.
  Widget fundSuggestionLayout(Fund fund) {
    return ListTile(
        leading: Icon(Icons.analytics),
        title: Text(
            fund.name,
            style: TextStyle(
            fontSize: 16.0,
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600
            )
        ),
      selectedTileColor: Colors.teal,
    );
  }
}