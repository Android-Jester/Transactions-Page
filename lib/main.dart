import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tranactions_page/features/transactions/presentation/pages/transactions.dart';

import 'features/transactions/presentation/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
            bodyText2: TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
              fontWeight: FontWeight.bold
            ),
        bodyText1: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          color: Colors.grey
        ),
        headline4: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.w500,
        ),
        headline5: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w200,
        ),
      )),
      home: TransactionsPage(),
    );
  }
}
