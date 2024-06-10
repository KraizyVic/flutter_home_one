import 'package:flutter/cupertino.dart';

class Room{
  final String roomName;
  final String roomImage;
  final List<String> devices;
  final Map<String,IconData>deviceIcons;

  Room({
    required this.roomName,
    required this.roomImage,
    required this.devices,
    required this.deviceIcons,
  });
}