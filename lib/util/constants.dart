import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeone/util/drawer_buttons.dart';
// Light Theme

// Dark Theme
const backgroundColour = Color(0xFF0c0d0c);
const tileColour = Color(0xFF272626);
const lightTileColor = Color(0xFFdbdada);
const textColor = Color(0xFF837e7e);
var detailsColor = Colors.grey[500];
const iconBackground = Colors.black;
const iconColor = Colors.white;




class DrawerThingy extends StatelessWidget {
  const DrawerThingy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: const Column(
        children: [
          DrawerHeader(child: Icon(Icons.home,color: Colors.grey,)),
          DrawerButtons(
            buttonIcon: CupertinoIcons.home,
            buttonName: "I",
          ),
          DrawerButtons(
            buttonIcon: CupertinoIcons.home,
            buttonName: "Have",
          ),
          DrawerButtons(
            buttonIcon: CupertinoIcons.home,
            buttonName: "No",
          ),
          DrawerButtons(
            buttonIcon: CupertinoIcons.home,
            buttonName: "IDEAS",
          ),
        ],
      ),
    );
  }
}