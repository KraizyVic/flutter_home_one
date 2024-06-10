import 'package:flutter/material.dart';
import 'package:homeone/models/general_model.dart';
import 'package:homeone/util/constants.dart';
class BasicTiles extends StatelessWidget {
  final GeneralModel generals;
  const BasicTiles({
    super.key,
    required this.generals,
  });

  @override
  Widget build(BuildContext context) {
    var iconsColor = Theme.of(context).colorScheme.tertiary;
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 200,
          color: Theme.of(context).colorScheme.primary,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).colorScheme.surface,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Icon(generals.icon,color: iconsColor,),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(generals.element,style: TextStyle(color:Theme.of(context).colorScheme.tertiary,fontSize: 18),)
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      generals.digits.toString(),
                      style: TextStyle(
                        fontSize: 50,
                        //fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                    Text(
                      generals.siUnit,
                      style: TextStyle(
                        fontSize: 30,
                        //fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
