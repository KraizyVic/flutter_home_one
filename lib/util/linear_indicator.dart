import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class LinearIndicator extends StatelessWidget {

  //final Room specificLinaearIndicator;
  const LinearIndicator({
    super.key,
    //required this.specificLinaearIndicator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LinearPercentIndicator(
            percent: 0.4,
            backgroundColor: Colors.grey,
            progressColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
