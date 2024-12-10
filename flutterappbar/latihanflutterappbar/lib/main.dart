import "package:flutter/material.dart";
import 'package:flutter/services.dart';

void main() {
  runApp(ngtApp());
}

MaterialApp ngtApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 195, 74, 195),
        title: const Text("FTI UNISKA Tutorial"),
        actions: [
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
        ],
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: const Center(
        child: Text(
          'FTI Tutorial',
          style: TextStyle(fontSize: 24),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  );
}
