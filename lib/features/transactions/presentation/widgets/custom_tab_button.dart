import 'package:flutter/material.dart';

import '../config.dart';

class CustomTabButton extends StatelessWidget {
  final bool isSelected;
  final String text;
  final void Function()? onPress;
  CustomTabButton({
    required this.isSelected,
    required this.text,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    Config.init(context);
    return Container(
      width: (isSelected) ? itemWidth(120.0) : itemWidth(90.0),
      height: (isSelected) ? itemHeight(50.0) : itemHeight(36.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(itemWidth(15.0)),
          border: Border.all(
            width: 2.0,
            color: Colors.grey.withOpacity(0.5),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 2,
                offset: Offset(1, 4),
                color: Colors.grey.withOpacity(0.5))
          ]),
      child: TextButton(
        onPressed: onPress,
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: (isSelected) ? Colors.black : Colors.grey.withOpacity(0.5), fontSize: (isSelected) ? 20.0 : 15.0),
        ),
      ),
    );
  }
}
