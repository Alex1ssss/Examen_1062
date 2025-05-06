import 'dart:math' as math;

import 'package:flutter/material.dart';

class Pagina_animated_builder extends StatefulWidget {
  const Pagina_animated_builder({Key? key}) : super(key: key);

  @override
  State<Pagina_animated_builder> createState() => _MyAnimationBuilderState();
}

class _MyAnimationBuilderState extends State<Pagina_animated_builder>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation Builder')),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.purple,
            child: const Center(
              child: Text(
                'Whee!',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
