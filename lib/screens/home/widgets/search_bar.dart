import 'package:flutter/material.dart';

Padding SearchBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        suffixIcon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffFF7A8A), width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffFF7A8A), width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
      ),
    ),
  );
}
