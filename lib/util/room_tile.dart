import 'package:flutter/material.dart';

import '../models/room.dart';
class RoomTile extends StatelessWidget {
  final Room room;
  const RoomTile({
    super.key,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10,),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: double.maxFinite,
                child: Image.asset(
                  room.roomImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [Theme.of(context).colorScheme.surface,Colors.transparent],
                  begin: Alignment.bottomLeft,

                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "${room.roomName}",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                          "Devices: ${room.devices.length}",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}
