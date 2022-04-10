import 'package:flutter/material.dart';

import '../widgets/animated_builder_widget.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key,required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: const AnimatedBuilderWidget(),
    );
  }
}
