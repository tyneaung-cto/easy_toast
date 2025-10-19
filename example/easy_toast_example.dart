import 'package:flutter/material.dart';
import 'package:easy_toast_plus/easy_toast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Toast Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EasyToast Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            EasyToast.show(context, 'Hello from EasyToast!');
          },
          child: const Text('Show Toast'),
        ),
      ),
    );
  }
}
