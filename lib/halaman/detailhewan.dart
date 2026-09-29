import 'package:flutter/material.dart';
import '../animals_data.dart';

class Detailhewan extends StatelessWidget {
  final Animal hewan;
  const Detailhewan({super.key, required this.hewan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(
          hewan.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Image.network(
                hewan.image,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 24),
            const Text('Detail Hewan:',
            ),
            const SizedBox(height: 8),
            Text('Height : ${hewan.height}',),
            const SizedBox(height: 8),
            Text('Weight : ${hewan.weight}',),
            const SizedBox(height: 20),
            const Text('Animal Activites :'),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: hewan.activities.map((activity) {
                return Container(
                  child: Text(
                    activity,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}