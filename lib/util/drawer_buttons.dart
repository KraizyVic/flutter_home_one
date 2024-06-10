import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeone/util/constants.dart';
class DrawerButtons extends StatelessWidget {
  final IconData buttonIcon;
  final String buttonName;
  const DrawerButtons({
    super.key,
    required this.buttonIcon,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(13)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: Row(
              children: [
                Icon(buttonIcon,color: Theme.of(context).colorScheme.secondary,),
                SizedBox(width: 20,),
                Text(buttonName,style: TextStyle(color: Theme.of(context).colorScheme.tertiary),)//style: TextStyle(color: Colors.white),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
