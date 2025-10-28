import 'package:flutter/material.dart';

class MultiChildExample extends StatelessWidget {
  const MultiChildExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contoh Multi-Child Widgets"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // 🔹 Kembali ke halaman SingleChild
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home, color: Colors.blue, size: 30),
                Icon(Icons.star, color: Colors.orange, size: 30),
                Icon(Icons.person, color: Colors.green, size: 30),
              ],
            ),
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                const Icon(Icons.play_circle_fill, size: 60, color: Colors.white),
                const Text(
                  "Video Player",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    backgroundColor: Colors.white70,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text("Kategori:", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (var item in [
                  "Flutter",
                  "Dart",
                  "UI",
                  "Backend",
                  "Mobile",
                  "API",
                ])
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(item),
                  ),
              ],
            ),
            const SizedBox(height: 20),
            const Text("Galeri Foto:", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            SizedBox(
              height: 200,
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: List.generate(
                  6,
                  (index) => Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[(index + 1) * 100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Foto ${index + 1}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Daftar Item:", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  5,
                  (index) => Container(
                    width: 120,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.green[100 * (index + 2)],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Item ${index + 1}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
