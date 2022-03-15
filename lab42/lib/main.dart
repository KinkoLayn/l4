import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      // Если Вы хотите сократить количество классов, предлагаю сделать это здесь.
      // Вместо MyHomePage возвращать соответствующие виджеты
      home: const MyHomePage(title: 'Список элементов степени двойки'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Список элементов степени двойки'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 10, top: 10, right: 10, bottom: 10),
              child: (Text('2 ^ $index = ${pow(2, index)}')),
            ),
            const Divider()
          ],
        );
      }),
    );
  }
}
