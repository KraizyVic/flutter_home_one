import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeone/models/general_data.dart';
import 'package:homeone/models/rooms.dart';
import 'package:homeone/pages/specific_room.dart';
import 'package:homeone/util/basic_tiles.dart';
import 'package:homeone/util/constants.dart';
import 'package:homeone/util/room_tile.dart';
import 'dart:math' as math;
import 'package:ming_cute_icons/ming_cute_icons.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void navigateToRoom(int index){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context)=>SpecificRoom(specificRoom: rooms[index])
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth < 500){
            return Scaffold(
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Theme.of(context).colorScheme.tertiary,
                    actions: [
                      IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/settingsPage');
                        },
                        icon: Icon(
                          MingCuteIcons.mgc_settings_1_line,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  drawer: DrawerThingy(),
                body:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Wrap(
                            children:[
                              Text(
                                "Control your home here",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                              )
                            ]
                        ),

                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                        // CAROUSEL BOX
                        child: CarouselSlider.builder(
                            itemCount: rooms.length,
                            itemBuilder: (context,index,realIndex){
                              return GestureDetector(
                                onTap: () => navigateToRoom(index),
                                child: RoomTile(room: rooms[index]),
                              );
                            },
                            options: CarouselOptions(
                              scrollDirection: Axis.horizontal,
                              height: 200,
                              enlargeCenterPage: true,
                              enableInfiniteScroll: false,
                            )
                        ),

                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Home Condition",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.tertiary,
                              fontSize: 20
                          ),
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.arrow_right_alt,
                              size: 30,
                              color: Theme.of(context).colorScheme.tertiary,
                            ))
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            //physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context,index){
                              return Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                  child: BasicTiles( generals: generalData[index])
                              );
                            }
                        ),
                      )
                  ),
                ],
              ),
            );
          }else if(constraints.maxWidth < 1100 ){
            return Scaffold(
              backgroundColor: Theme.of(context).colorScheme.surface,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                foregroundColor: Theme.of(context).colorScheme.tertiary,
                actions: [
                  IconButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/settingsPage');
                    },
                    icon: Icon(
                      MingCuteIcons.mgc_settings_1_line,
                      size: 30,
                    ),
                  )
                ],
              ),
              drawer: DrawerThingy(),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Wrap(
                              children:[
                                Text(
                                  "Control your home here",
                                  style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).colorScheme.tertiary,
                                  ),
                                )
                              ]
                          ),

                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Home Condition",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.tertiary,
                                fontSize: 20
                            ),
                          ),
                          IconButton(
                              onPressed: (){},
                              icon: Icon(
                                Icons.arrow_right_alt,
                                size: 30,
                                color: Theme.of(context).colorScheme.tertiary,
                              ))
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                          child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              //physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context,index){
                                return Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                    child: BasicTiles( generals: generalData[index])
                                );
                              }
                          ),
                        )
                    ),
                    Expanded(
                      flex: 2,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: GridView.builder(
                              //scrollDirection: Axis.horizontal,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                childAspectRatio: 3/3,
                              ),
                              itemCount: rooms.length,
                              itemBuilder: (context,index){
                                return Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: GestureDetector(
                                    onTap: () => navigateToRoom(index),
                                    child: RoomTile(room: rooms[index]),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ),
            );
          } else{
            return Scaffold(
              backgroundColor: Theme.of(context).colorScheme.surface,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                foregroundColor: Theme.of(context).colorScheme.tertiary,
                actions: [
                  IconButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/settingsPage');
                    },
                    icon: Icon(
                      MingCuteIcons.mgc_settings_1_line,
                      size: 30,
                    ),
                  )
                ],
              ),
              body: Row(
                children: [
                  DrawerThingy(),
                  Expanded(
                    child: Stack(
                      children:[
                        Container(
                          height: double.maxFinite,
                          width: double.maxFinite,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                            child: Image.asset(
                                "lib/assets/images/house.jpg",
                              fit: BoxFit.cover,
                            ),
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
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      //color: Colors.blue,
                                      width: double.maxFinite,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Control your home here",
                                            style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.transparent,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: rooms.length,
                                        itemBuilder: (context,index){
                                          return GestureDetector(
                                            onTap: () => navigateToRoom(index),
                                            child: RoomTile(room: rooms[index]),
                                          );
                                        },

                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors.transparent,
                                child: GridView.builder(
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                                    itemCount: 5,
                                    //physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (context,index){
                                      return Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                          child: BasicTiles( generals: generalData[index])
                                      );
                                    }
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
            );
          }
        },
    );
  }
}
