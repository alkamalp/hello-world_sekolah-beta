import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'hellowidget.dart';

class HelloHome extends StatelessWidget {
  const HelloHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
          tooltip: 'Navigation',
        ),
        title: const Text('Hello World'),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/background.jpeg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          const HelloWidget(),
        ],
      ),
    );
  }
}
