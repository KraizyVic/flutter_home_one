import 'dart:ui';

import 'package:flutter/material.dart';

class BlurTile extends StatelessWidget {
  final Widget tileChild;
  final double tileWidth;
  const BlurTile({
    super.key,
    required this.tileWidth,
    required this.tileChild,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              alignment: Alignment.center,
              width: tileWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.3),
                  border: Border.all(

                      color: Colors.white.withOpacity(0.6),
                  )
              ),
              child: tileChild,
            )
        )
    );
  }
}
