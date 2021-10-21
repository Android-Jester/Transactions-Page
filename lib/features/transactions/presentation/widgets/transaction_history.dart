import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tranactions_page/features/transactions/domain/entities/transaction_info.dart';
import 'package:tranactions_page/features/transactions/presentation/widgets/time_info.dart';

import '../config.dart';
import 'custom_button.dart';
import 'custom_tab_button.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: itemWidth(20.0))
          .copyWith(top: itemHeight(20.0)),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recents Transactions",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Padding(
            padding: EdgeInsets.only(top: itemHeight(8.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTabButton(
                  text: "All",
                  isSelected: false,
                  onPress: () {},
                ),
                CustomTabButton(
                  text: "History",
                  isSelected: true,
                  onPress: () {},
                ),
                CustomTabButton(
                  text: "Card",
                  isSelected: false,
                  onPress: () {},
                ),
              ],
            ),
          ),
         Column(
              children: [
                TimeInfo(timeline: "Today", context: context),
                TimeInfo(timeline: "Yesterday", context: context),
              ],
            ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  option: "Send",
                  onPressed: () {},
                ),
                CustomButton(
                  option: "Request",
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
