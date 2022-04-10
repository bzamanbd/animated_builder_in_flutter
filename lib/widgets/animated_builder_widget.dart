import 'package:animated_builder_in_flutter/theme/color_palette.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this)..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, child) {
            return Transform.rotate(
              angle: _controller.value *2.0* math.pi,
              child: child,
            );
          },
          child: Container(
            height: 100,
            width: 100,
            color: ColorPalette.seconderyColor
          ),
          ),
    );
  }
}
