import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Gestures';
    return const MaterialApp(
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FTI Tutorial'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(child: MyButton()),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Fungsi untuk menampilkan Snackbar
    void showSnackbar(Color color, String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: color,
          content: Text(message),
        ),
      );
    }

    return GestureDetector(
      // Gesture untuk Tapped
      onTap: () {
        showSnackbar(Colors.black, 'Kamu telah melakukan Tapped pada Button');
      },
      // Gesture untuk Double Tapped
      onDoubleTap: () {
        showSnackbar(
            Colors.purple, 'Kamu telah melakukan Double Tapped pada Button');
      },
      // Gesture untuk Long Press
      onLongPress: () {
        showSnackbar(
            Colors.green, 'Kamu telah melakukan Long Press pada Button');
      },
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Text('Tap Button'),
      ),
    );
  }
}
