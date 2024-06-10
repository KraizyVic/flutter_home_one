import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:homeone/theme/theme.dart';
import 'package:homeone/theme/theme_provider.dart';
import 'package:homeone/util/constants.dart';
import 'package:provider/provider.dart';

class SpecificRoomDeviceTile extends StatefulWidget {

  final String deviceName;
  final IconData deviceIcon;

  const SpecificRoomDeviceTile({
    super.key,
    required this.deviceName,
    required this.deviceIcon,
  });

  @override
  State<SpecificRoomDeviceTile> createState() => _SpecificRoomDeviceTileState();
}

class _SpecificRoomDeviceTileState extends State<SpecificRoomDeviceTile> {
  var switchValue = false;

  var roomTile ;
  var roomText = textColor;
  var duration = detailsColor;
  var iconColo = iconColor;
  var iconback = backgroundColour;

  @override
  void initState() {
    super.initState();
    _loadState();
  }

  Future<void> _loadState() async {
    final box = Hive.box('mySwitchBox');
    setState(() {
      switchValue = box.get('${widget.deviceName}_switchState', defaultValue: false);
    });
  }

  Future<void> _saveState(bool value) async {
    final box = Hive.box('mySwitchBox');
    await box.put('${widget.deviceName}_switchState', value);
  }

  @override
  Widget build(BuildContext context) {

    final themeNoti = Provider.of<ThemeProvider>(context);
    if (themeNoti.themeData == darkTheme){
      roomTile = tileColour;
      if (switchValue == false){
        roomText = Colors.white;
        duration = Colors.grey[700];
        iconColo = Colors.white;
        iconback = Colors.black;
      }else{
        roomTile = lightTileColor;
        roomText = Colors.black;
        duration = detailsColor;
        iconColo = Colors.black;
        iconback = Colors.grey;
      }
    }
    else{
      roomTile = lightTileColor;
      if (switchValue == false){

        roomText = Colors.black;
        duration = Colors.grey[700];
        iconColo = Colors.white;
        iconback = Colors.grey;
      }else{
        roomTile = tileColour;
        roomText = Colors.white;
        duration = detailsColor;
        iconColo = Colors.white;
        iconback = Colors.black;
      }
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: roomTile,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      color: iconback,
                    ),

                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(widget.deviceIcon,color: iconColo,),
                    ),
                  ),
                  Transform.rotate(
                    angle: -90 * math.pi/180,
                    child: Switch(
                      value: switchValue,//themeNoti.themeData == lightMode,
                      onChanged: (value) {
                        setState(() {
                          switchValue = !switchValue;
                        });
                        _saveState(value);
                      },
                      inactiveThumbColor: Colors.black,
                      inactiveTrackColor: Colors.grey[600],
                      activeTrackColor: Colors.grey[600],
                      activeColor: Colors.white,
                      trackOutlineColor: WidgetStateColor.transparent,

                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.deviceName,
                    style: TextStyle(
                      fontSize: 18,
                      color: roomText,
                    ),
                  ),
                  Text(
                      'Active for 2hrs',
                    style: TextStyle(
                      color: duration,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
