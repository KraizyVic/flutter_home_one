import 'package:flutter/material.dart';
class SettingsTiles extends StatelessWidget {
  final String settingTileName;
  final Widget actionWidget;
  const SettingsTiles({
    super.key,
    required this.settingTileName,
    required this.actionWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 0,vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              settingTileName,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
            actionWidget,
          ],
        ),
      ),
    );
  }
}
