import 'package:flutter/material.dart';

Column MusicInformation() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Text(
        'Follow The Leader ft. Jennifer',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'Wisin & Yandel | Featured Song | 11.12.2021',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    ],
  );
}
