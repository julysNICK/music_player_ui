import 'package:flutter/material.dart';

Padding NameSection({String? name = 'Recently Played'}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text(
      '$name',
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
