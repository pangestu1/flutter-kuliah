import 'package:flutter/material.dart';
import 'singlechild.dart';
import 'multichild.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contoh Navigator Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),

      // 🔸 Menentukan route awal
      initialRoute: '/singlechild',

      // 🔸 Daftar route
      routes: {
        '/singlechild': (context) => const SingleChildExample(),
        '/multichild': (context) => const MultiChildExample(),
      },
    );
  }
}
