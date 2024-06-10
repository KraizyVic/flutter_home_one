import 'package:flutter/material.dart';
import 'package:homeone/util/constants.dart';
import 'package:homeone/util/specific_room_device_Tile.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

import '../models/room.dart';
import '../util/linear_indicator.dart';
class SpecificRoom extends StatefulWidget {
  final Room specificRoom;
  const SpecificRoom({
    super.key,
    required this.specificRoom,
  });

  @override
  State<SpecificRoom> createState() => _RoomState();
}

class _RoomState extends State<SpecificRoom> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth < 500){
          return  Scaffold(
              backgroundColor: Theme.of(context).colorScheme.surface,
              body: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20)),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20)),
                                  child: Image.asset(
                                    widget.specificRoom.roomImage,
                                    fit: BoxFit.cover,
                                    height: double.maxFinite,
                                    width: double.maxFinite,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Theme.of(context).colorScheme.surface,Colors.transparent],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topCenter,
                                      )
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppBar(
                                      title: Text("Back"),
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: Colors.white,
                                      actions: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 20),
                                          child: IconButton(
                                              onPressed: (){
                                                Navigator.pushNamed(context, '/settingsPage');
                                              },
                                              icon:Icon(
                                                MingCuteIcons.mgc_settings_1_line,
                                                size: 35,
                                                color: Colors.white,
                                              )
                                          ),//Theme.of(context).colorScheme.tertiary,),
                                        )

                                      ],
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Text(
                                        widget.specificRoom.roomName,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                        ),
                                      ),
                                    ),
                                    const Spacer()
                                  ],
                                )
                              ],
                            ),
                          )
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                      child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Container(
                                              height: double.maxFinite,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: Theme.of(context).colorScheme.primary,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 20,left: 8,right: 8),
                                                child:Column(
                                                  children: [
                                                    Text("Room Statistics",style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.tertiary),),
                                                    Expanded(
                                                      child: ListView.builder(
                                                          itemCount: widget.specificRoom.devices.length,
                                                          itemBuilder: (context,index){
                                                            return Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                  child: Text(
                                                                    widget.specificRoom.devices[index],
                                                                    style: TextStyle(
                                                                      fontSize: 18,
                                                                      color: Colors.grey,
                                                                    ),
                                                                  ),
                                                                ),
                                                                LinearIndicator()
                                                              ],
                                                            );
                                                          }
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                          )
                                      )
                                  )
                              ),
                              Expanded(
                                child: Container(
                                  child: GridView.builder(
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                                      itemCount: widget.specificRoom.devices.length,
                                      itemBuilder: (context,index){
                                        String deviceName = widget.specificRoom.devices[index];
                                        IconData icon = widget.specificRoom.deviceIcons[deviceName]!;
                                        return Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: SpecificRoomDeviceTile(
                                            deviceName: deviceName,
                                            deviceIcon: icon,
                                          ),
                                        );
                                      }
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
          );
        } else if(constraints.maxWidth < 1100){
          return  Scaffold(
              backgroundColor: Theme.of(context).colorScheme.surface,
              body: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20)),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20)),
                                  child: Image.asset(
                                    widget.specificRoom.roomImage,
                                    fit: BoxFit.cover,
                                    height: double.maxFinite,
                                    width: double.maxFinite,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Theme.of(context).colorScheme.surface,Colors.transparent],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topCenter,
                                      )
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppBar(
                                      title: Text("Back"),
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: Colors.white,
                                      actions: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 20),
                                          child: IconButton(
                                              onPressed: (){
                                                Navigator.pushNamed(context, '/settingsPage');
                                              },
                                              icon:Icon(
                                                MingCuteIcons.mgc_settings_1_line,
                                                size: 35,
                                                color: Colors.white,
                                              )
                                          ),//Theme.of(context).colorScheme.tertiary,),
                                        )

                                      ],
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Text(
                                        widget.specificRoom.roomName,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                        ),
                                      ),
                                    ),
                                    const Spacer()
                                  ],
                                )
                              ],
                            ),
                          )
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                      child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Container(
                                              height: double.maxFinite,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: Theme.of(context).colorScheme.primary,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 20,left: 8,right: 8),
                                                child:Column(
                                                  children: [
                                                    Text("Room Statistics",style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.tertiary),),
                                                    Expanded(
                                                      child: ListView.builder(
                                                          itemCount: widget.specificRoom.devices.length,
                                                          itemBuilder: (context,index){
                                                            return Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                  child: Text(
                                                                    widget.specificRoom.devices[index],
                                                                    style: TextStyle(
                                                                      fontSize: 18,
                                                                      color: Colors.grey,
                                                                    ),
                                                                  ),
                                                                ),
                                                                LinearIndicator()
                                                              ],
                                                            );
                                                          }
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                          )
                                      )
                                  )
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: GridView.builder(
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                                      itemCount: widget.specificRoom.devices.length,
                                      itemBuilder: (context,index){
                                        String deviceName = widget.specificRoom.devices[index];
                                        IconData icon = widget.specificRoom.deviceIcons[deviceName]!;
                                        return Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: SpecificRoomDeviceTile(
                                            deviceName: deviceName,
                                            deviceIcon: icon,
                                          ),
                                        );
                                      }
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
          );
        }else{
          return  Scaffold(
              backgroundColor: Theme.of(context).colorScheme.surface,
              appBar: AppBar(
                  title: Text("Back"),
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  actions: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/settingsPage');
                        },
                        icon:Icon(
                          MingCuteIcons.mgc_settings_1_line,
                          size: 35,
                          color: Colors.white,
                        )
                      ),
                    )
                  ]//Theme.of(context).colorScheme.tertiary,),
              ),
              body: Row(
                children: [
                  DrawerThingy(),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),
                              child: Image.asset(
                                widget.specificRoom.roomImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Theme.of(context).colorScheme.surface,Colors.transparent],
                                    begin: Alignment.bottomRight ,
                                    end: Alignment.topRight,
                                  )
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Theme.of(context).colorScheme.surface,Colors.transparent],
                                    begin: Alignment.centerRight,
                                    end: Alignment.centerLeft,
                                  )
                              ),
                            ),

                        Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                        child:Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20),
                                          child: Text(
                                            widget.specificRoom.roomName,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 50,
                                            ),
                                          ),
                                        ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20),
                                          child: Text("Room Energy Statistics",style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.tertiary),),
                                        ),
                                        Flexible(
                                          child: GridView.builder(
                                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 1,
                                                childAspectRatio: 1 / 2,  // Adjusted for a better aspect ratio
                                                mainAxisSpacing: 10,
                                                crossAxisSpacing: 10,
                                              ),
                                              scrollDirection: Axis.horizontal,
                                              itemCount: widget.specificRoom.devices.length,
                                              itemBuilder: (context,index){
                                                return Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      color: Theme.of(context).colorScheme.primary,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.symmetric(horizontal: 8),
                                                          child: Text(
                                                            widget.specificRoom.devices[index],
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                              color: Theme.of(context).colorScheme.tertiary,
                                                            ),
                                                          ),
                                                        ),
                                                        LinearIndicator()
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 8,right: 8),
                                  child:Expanded(
                                        child: GridView.builder(
                                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                                            itemCount: widget.specificRoom.devices.length,
                                            itemBuilder: (context,index){
                                              String deviceName = widget.specificRoom.devices[index];
                                              IconData icon = widget.specificRoom.deviceIcons[deviceName]!;
                                              return Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: SpecificRoomDeviceTile(
                                                  deviceName: deviceName,
                                                  deviceIcon: icon,
                                                ),
                                              );
                                            }
                                        ),
                                      ),

                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )

                ],
              ),
            /*Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20)),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20)),
                                  child: Image.asset(
                                    widget.specificRoom.roomImage,
                                    fit: BoxFit.cover,
                                    height: double.maxFinite,
                                    width: double.maxFinite,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Theme.of(context).colorScheme.surface,Colors.transparent],
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topCenter,
                                      )
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppBar(
                                      title: Text("Back"),
                                      backgroundColor: Colors.transparent,
                                      foregroundColor: Colors.white,
                                      actions: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 20),
                                          child: IconButton(
                                              onPressed: (){
                                                Navigator.pushNamed(context, '/settingsPage');
                                              },
                                              icon:Icon(
                                                MingCuteIcons.mgc_settings_1_line,
                                                size: 35,
                                                color: Colors.white,
                                              )
                                          ),//Theme.of(context).colorScheme.tertiary,),
                                        )

                                      ],
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: Text(
                                        widget.specificRoom.roomName,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                        ),
                                      ),
                                    ),
                                    const Spacer()
                                  ],
                                )
                              ],
                            ),
                          )
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                      child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Container(
                                              height: double.maxFinite,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: Theme.of(context).colorScheme.primary,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 20,left: 8,right: 8),
                                                child:Column(
                                                  children: [
                                                    Text("Room Statistics",style: TextStyle(fontSize: 20,color: Theme.of(context).colorScheme.tertiary),),
                                                    Expanded(
                                                      child: ListView.builder(
                                                          itemCount: widget.specificRoom.devices.length,
                                                          itemBuilder: (context,index){
                                                            return Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                                                  child: Text(
                                                                    widget.specificRoom.devices[index],
                                                                    style: TextStyle(
                                                                      fontSize: 18,
                                                                      color: Colors.grey,
                                                                    ),
                                                                  ),
                                                                ),
                                                                LinearIndicator()
                                                              ],
                                                            );
                                                          }
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                          )
                                      )
                                  )
                              ),
                              Expanded(
                                child: Container(
                                  child: GridView.builder(
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                                      itemCount: widget.specificRoom.devices.length,
                                      itemBuilder: (context,index){
                                        String deviceName = widget.specificRoom.devices[index];
                                        IconData icon = widget.specificRoom.deviceIcons[deviceName]!;
                                        return Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: SpecificRoomDeviceTile(
                                            deviceName: deviceName,
                                            deviceIcon: icon,
                                          ),
                                        );
                                      }
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )*/
          );
        }
      },
    );
  }
}
