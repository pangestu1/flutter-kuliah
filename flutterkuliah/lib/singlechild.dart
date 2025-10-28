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
              color: Colors.blue[400],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white, width: 2),
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
              child: Stack(
                children: [
                  // 🔹 Teks di tengah dan berwarna putih
                  const Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Mohamad Akbar Sugih Pangestu",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // 🔸 warna putih
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "23230002",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white, // 🔸 warna putih
                          ),
                        ),
                      ],
                    ),
                  ),

                  // 🔹 Tombol di bagian bawah
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: 300,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, // Tombol putih
                          foregroundColor: Colors.blue, // Tulisan tombol biru
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/multichild');
                        },
                        child: const Text(
                          "Ke Halaman Multi-Child",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
