import 'package:flutter/material.dart';

class MyLinearProgressIndicatior extends StatefulWidget {
  const MyLinearProgressIndicatior({super.key});

  @override
  State<MyLinearProgressIndicatior> createState() => _MyLinearProgressIndicatiorState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyLinearProgressIndicatiorState extends State<MyLinearProgressIndicatior>
    with TickerProviderStateMixin {
  late AnimationController controller;
  int completed = 12;
  int total = 15;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          LinearProgressIndicator(
            value: controller.value,
            semanticsLabel: 'linear progress indicator',
          )
        ],
      ),
    );
  }
}
