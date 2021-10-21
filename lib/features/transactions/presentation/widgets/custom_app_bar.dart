import 'package:flutter/material.dart';
import 'package:tranactions_page/features/transactions/presentation/config.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    Config.init(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: itemHeight(27.0), horizontal: itemWidth(15.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: itemWidth(30.0),
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
                child: Icon(Icons.person, size: itemHeight(45.0),),
              ),
              RichText(
                
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                    children: [
                const TextSpan(text: "Hello \n"),
                TextSpan(
                  text: name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]))
            ],
          ),
          Stack(
            children: [
            IconButton(
              icon: Icon(Icons.notifications, size: itemWidth(45.0), color: Colors.white,),
              onPressed: () {},
            ),
            const Positioned(
              top: 15.0,
              left: 35.0,
                child: Icon(Icons.brightness_1, color: Colors.red, size: 9.0,)),
          ])
        ],
      ),
    );
  }
}
