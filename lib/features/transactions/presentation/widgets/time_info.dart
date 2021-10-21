import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tranactions_page/features/transactions/domain/entities/transaction_info.dart';

import '../config.dart';
import 'transactions_card.dart';

class TimeInfo extends StatelessWidget {
  TimeInfo({
    Key? key,
    required this.timeline,
    required this.context,
  }) : super(key: key);

  final String timeline;
  final BuildContext context;
   List<TransactionInfo> transactions = [
    TransactionInfo(
        type: "Ticket",
        location: "SilvaBird",
        icon: FontAwesomeIcons.ticketAlt,
        time: "5:30am"),
    TransactionInfo(
        type: "Subscription",
        location: "Apple Music",
        icon: FontAwesomeIcons.music,
        time: "7:00pm"),
    TransactionInfo(
        type: "Cash Deposit",
        location: "Mobile Money",
        icon: FontAwesomeIcons.wallet,
        time: "6:00am"),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: itemWidth(15.0),
              top: itemHeight(15.0),
              bottom: itemHeight(5.0)),
          child: Text(
            timeline,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        ...List.generate(transactions.length - 1, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TransactionInfoCard(
              transactions: transactions[index],
            ),
          );
        })
      ],
    );
  }
}
