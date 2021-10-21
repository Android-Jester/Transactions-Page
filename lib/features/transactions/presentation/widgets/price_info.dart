import 'package:flutter/material.dart';
import 'package:tranactions_page/features/transactions/presentation/config.dart';

class AmountInfo extends StatelessWidget {
  const AmountInfo({
    Key? key,
    required this.amount,
    required this.context,
  }) : super(key: key);

  final double amount;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "GH₵ ${amount}",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.white),
        ),
        SizedBox(height: itemHeight(10.0)),
        Text(
          "Available Balance",
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
