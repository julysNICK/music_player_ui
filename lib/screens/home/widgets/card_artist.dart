import 'package:flutter/material.dart';

Container CardArtist({String? name, IconData icon = Icons.play_arrow}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.01),
      color: const Color(0xff1d1f3e),
    ),
    child: ListTile(
      title: Text(
        '$name',
        style: const TextStyle(
          color: Color(0xffFF7A8A),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Icon(
        icon,
        color: const Color(0xffFF7A8A),
      ),
    ),
  );
}
