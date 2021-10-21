import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tranactions_page/features/transactions/presentation/widgets/custom_app_bar.dart';
import 'package:tranactions_page/features/transactions/presentation/widgets/price_info.dart';
import 'package:tranactions_page/features/transactions/presentation/widgets/transaction_history.dart';

import '../config.dart';

class TransactionsPage extends StatelessWidget {
  
 static const String name = "Kelvin";
 static const double amount = 50000;

  const TransactionsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Config.init(context);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          const CustomAppBar(name: name),
          AmountInfo(amount: amount, context: context),
          SizedBox(height: itemHeight(20.0),),
          Expanded(
            flex: 5,
            child: TransactionHistory(context: context),
          )
        ],
      ),
    );
  }
}
