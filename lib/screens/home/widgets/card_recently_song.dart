import 'package:flutter/material.dart';

import '../../player/player_screen.dart';

class CardRecentlySong extends StatefulWidget {
  const CardRecentlySong({super.key});

  @override
  State<CardRecentlySong> createState() => _CardRecentlySongState();
}

class _CardRecentlySongState extends State<CardRecentlySong> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyPlayer()),
        );
      },
      child: Container(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                image: AssetImage('assets/image1.png'),
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Urgent Siege',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Dammed die',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
