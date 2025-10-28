import 'package:flutter/material.dart';

class SingleChildExample extends StatelessWidget {
  const SingleChildExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contoh Single-Child Widgets")),
      body: Center(
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.lightBlue[100],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.blue, width: 2),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(3, 3),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // 🔹 Navigasi ke halaman MultiChildExample
                      Navigator.pushNamed(context, '/multichild');
                    },
                    child: const Text(
                      "Ke Halaman Multi-Child",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
