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
            // ✅ Teks ditaruh di sini, bukan di BoxDecoration
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Mohamad Akbar Sugih Pangestu",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                const Text(
                  "23230002",
                  style: TextStyle(fontSize: 20),
                ),
                const Spacer(), // dorong tombol ke bawah
                SizedBox(
                  width: 300,
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
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
