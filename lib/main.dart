import 'package:flutter/material.dart';

void main() {
  runApp(const Ziyan());
}

class Ziyan extends StatelessWidget {
  const Ziyan({super.key});

  // One reusable box: change the color, padding, or text for each one
  Widget _card(Color color, {double padding = 8}) {
    return Container(
      color: color,
      padding: EdgeInsets.all(padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/photo.jpeg',
            width: 40,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 6),
          const Text("80%"),
          const SizedBox(height: 6),
          const Text("Ziyan"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          backgroundColor: Colors.blue,
          title: const Text("Profile"),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 10),
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/photo.jpeg'),
              ),
              const SizedBox(height: 10),
              const Text(
                "Ziyan",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Chip(
                label: const Text("🎓 Student"),
                backgroundColor: Colors.grey[400],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _card(Colors.yellow),
                  _card(Colors.yellow),
                  _card(Colors.purpleAccent, padding: 14),
                  _card(Colors.yellow),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}