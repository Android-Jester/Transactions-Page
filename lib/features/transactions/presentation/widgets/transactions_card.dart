import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart" as Font;
import 'package:tranactions_page/features/transactions/domain/entities/transaction_info.dart';

import '../config.dart';

class TransactionInfoCard extends StatelessWidget {
  final TransactionInfo transactions;
  TransactionInfoCard({required this.transactions});

  @override
  Widget build(BuildContext context) {
    Config.init(context);
    return Container(
      margin: EdgeInsets.only(top: itemHeight(5.0)),
      width: Config.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 2, offset: Offset(2, 4), color: Colors.grey)
        ],
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: itemWidth(14.0)),
        child: Row(
          children: [
            //TODO: Implement hexagonal shape path and wrap ClipPath around container
            Container(
              margin: EdgeInsets.symmetric(vertical: itemHeight(10.0)),
              padding: EdgeInsets.all(itemWidth(15.0)),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(itemWidth(15.0))),
              child: Center(child: Icon(transactions.icon)),
            ),
            SizedBox(
              width: itemWidth(10.0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(transactions.type!),
                Text(transactions.location!),
              ],
            ),
            Spacer(),
            Text(
              transactions.time!,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: itemWidth(12.0),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
