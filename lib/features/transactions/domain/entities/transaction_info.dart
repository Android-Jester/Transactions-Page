import 'package:flutter/cupertino.dart';

class TransactionInfo {
  final String? type, location;
  final IconData icon;
  final String? time;

  TransactionInfo({
    required this.type,
    required this.location,
    required this.icon,
    required this.time,
  });
}
