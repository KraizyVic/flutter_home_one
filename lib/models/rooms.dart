import 'package:flutter/material.dart';
import 'package:homeone/models/room.dart';

List<Room> rooms =[
    Room(
        roomName: "Living Room",
        roomImage: "lib/assets/images/furniture-998265.jpg",
        devices: [
          "Lights",
          "Curtains",
          "TV",
          "AC"
        ],
      deviceIcons: {
          "Lights":Icons.light,
          "Curtains":Icons.curtains_closed,
          "TV":Icons.tv,
          "AC":Icons.ac_unit,
      }
    ),
    Room(
        roomName: "Kitchen",
        roomImage: "lib/assets/images/largeKitchen.jpg",
        devices: [
          "Lights",
          "Fridge",
          "Oven",
          "Coffee"
        ],
        deviceIcons: {
          "Lights":Icons.light,
          "Fridge":Icons.kitchen_sharp,
          "Oven":Icons.food_bank,
          "Coffee":Icons.coffee_maker_outlined,
        }
    ),
    Room(
      roomName: "Stairs",
      roomImage: "lib/assets/images/stairsLarge.jpg",
      devices: [
        "Lights",
      ],
        deviceIcons: {
          "Lights":Icons.light,
        }
    ),
    Room(
        roomName: "Bedroom",
        roomImage: "lib/assets/images/bedroom.jpg",
        devices: [
          "Lights",
          "TV",
          "AC",
        ],
        deviceIcons: {
          "Lights":Icons.light,
          "TV":Icons.tv,
          "AC":Icons.ac_unit,
        }
    ),
    Room(
      roomName: "Bathroom",
      roomImage: "lib/assets/images/bathroomLarge.jpg",
      devices: [
        "Lights",
        "Heater",
        "Shower",
      ],
      deviceIcons: {
        "Lights":Icons.light,
        "Heater":Icons.heat_pump,
        "Shower":Icons.shower_outlined,
      }
    ),
    Room(
        roomName: "Exterior",
        roomImage: "lib/assets/images/house two.jpg",
        devices: [
          "Lights",
          "Garage",
          "Sprinkler"
        ],
        deviceIcons: {
          "Lights": Icons.light,
          "Garage": Icons.garage_outlined,
          "Sprinkler": Icons.water,
        }
    ),
  ];
