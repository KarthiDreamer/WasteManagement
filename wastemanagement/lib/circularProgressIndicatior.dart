import 'package:flutter/material.dart';

class MyCircularProgressIndicatior extends StatefulWidget {
  const MyCircularProgressIndicatior({super.key});

  @override
  State<MyCircularProgressIndicatior> createState() => _MyCircularProgressIndicatiorState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyCircularProgressIndicatiorState extends State<MyCircularProgressIndicatior>
    with TickerProviderStateMixin {
  late AnimationController controller;
  int completed=12;
  int total = 15;
  double dcompleted=0;
  double dtotal=1;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    dcompleted = completed/total;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircularProgressIndicator(
            value: dcompleted,
            semanticsLabel: 'Circular progress indicator',
          ),
          Text("$completed / $total")
        ],
      ),
    );
  }
}

