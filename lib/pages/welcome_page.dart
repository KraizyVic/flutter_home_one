import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeone/util/blur_Tile.dart';

import '../util/constants.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth < 500){
          return Scaffold(
              body: Stack(
                children: [
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      child: Image.asset(
                        'lib/assets/images/stairsPhonesz.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Theme.of(context).colorScheme.surface,Colors.transparent],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              )
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      )
                    ],
                  ),
                  Column(
                      children: [
                        const Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "E X R A H O M E",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                "The Home in your hands",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 3
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                          child: GestureDetector(
                              onTap: (){Navigator.pushNamed(context, '/homePage');},
                              child: BlurTile(
                                  tileWidth: double.maxFinite,
                                  tileChild: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Text(
                                      "NEXT ==>>",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context).colorScheme.tertiary,
                                      ),
                                    ),
                                  )
                              )
                          )
                        ),
                      ]
                  )
                ],
              )
          );
        }else if(constraints.maxWidth < 1100){
          return Scaffold(
              body: Stack(
                children: [
                  Expanded(
                      child: Container(
                        width: double.maxFinite,
                        child: Image.asset(
                          'lib/assets/images/stairsPhonesz.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Theme.of(context).colorScheme.surface,Colors.transparent],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              )
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                          color: Theme.of(context).colorScheme.surface,
                      ),

                    ],
                  ),
                  Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              width: double.maxFinite,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "E X R A H O M E",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "The Home in your hands",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        letterSpacing: 3
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                                child: GestureDetector(
                                    onTap: (){Navigator.pushNamed(context, '/homePage');},
                                    child: BlurTile(
                                        tileWidth: 300,
                                        tileChild: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 20),
                                          child: Text(
                                            "Tap To Continue ==>>",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Theme.of(context).colorScheme.tertiary,
                                            ),
                                          ),
                                        )
                                    )
                                )
                            ),
                          ],
                        ),
                      ]
                  )
                ],
              )
          );
        } else{
          return Scaffold(
              body: Stack(
                alignment: Alignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      child: Image.asset(
                        'lib/assets/images/stairsPhonesz.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Theme.of(context).colorScheme.surface,Colors.transparent],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              )
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Theme.of(context).colorScheme.surface,
                      ),

                    ],
                  ),
                  Container(
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                          children: [
                            const Expanded(
                              flex: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "E X R A H O M E",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    "The Home in your hands",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        letterSpacing: 3
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                                onTap: (){Navigator.pushNamed(context, '/homePage');},
                                child: BlurTile(
                                    tileWidth: 200,
                                    tileChild: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 20),
                                      child: Text(
                                        "NEXT ==>>",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Theme.of(context).colorScheme.tertiary,
                                        ),
                                      ),
                                    )
                                )
                            )
                          ]
                      ),
                    ),
                  )
                ],
              )
          );
        }
      },

    );
  }
}
