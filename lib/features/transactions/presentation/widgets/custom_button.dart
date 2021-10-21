import 'package:flutter/material.dart';
import 'package:tranactions_page/features/transactions/presentation/config.dart';

class CustomButton extends StatelessWidget {
  final String option;
  final void Function()? onPressed;
  CustomButton({
    required this.option,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: itemHeight(40.0),
      width: itemWidth(150.0),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(itemHeight(15.0))
          )),
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          elevation: MaterialStateProperty.all(2.0),
        ),
        child: Center(
          child: Text(option, style: TextStyle(
            color: Colors.white
          ),),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
