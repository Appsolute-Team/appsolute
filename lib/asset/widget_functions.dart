import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website_01/models/popmenu.dart';

import 'constants/ui_constants.dart';

abstract class WidgetFunctions {
  static ThemeData entireAppThemeData() {
    return ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.tealAccent,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 20,
          ),
          headline2: TextStyle(
            fontSize: 18,
          ),
          bodyText1: TextStyle(
            fontSize: 14,
          ),
          bodyText2: TextStyle(
            fontSize: 12,
          ),
        ),
        fontFamily: GoogleFonts.abel().fontFamily);
  }

  static dynamic headerbar(BuildContext context) {
    final media = MediaQuery.of(context).size.width;
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColorLight,
              Theme.of(context).primaryColorDark,
            ],
          ),
        ),
      ),
      toolbarHeight: UiConstants.appBarSize,
      title: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "AppSolute Future Infotech",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.headline1.fontSize,
              ),
              textHeightBehavior: TextHeightBehavior(
                  applyHeightToFirstAscent: false,
                  applyHeightToLastDescent: false),
            ),
            Text(
              "All type of technical solution",
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyText2.fontSize,
              ),
              textHeightBehavior: TextHeightBehavior(
                  applyHeightToFirstAscent: false,
                  applyHeightToLastDescent: false),
            ),
          ],
        ),
      ),
      leading: Icon(
        Icons.business_rounded,
        size: UiConstants.appBarSize - 5,
      ),
      actions: [
        Theme(
          data: WidgetFunctions.entireAppThemeData(),
          child: PopupMenuButton(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            initialValue: popUpItems[1],
            onCanceled: () {
              print('You have not chossed anything');
            },
            tooltip: 'This is tooltip',
            onSelected: null,
            itemBuilder: (BuildContext context) {
              return popUpItems.map((dynamic choice) {
                return PopupMenuItem(
                  child: choice,
                );
              }).toList();
            },
          ),
        )
      ],
    );
  }
}
