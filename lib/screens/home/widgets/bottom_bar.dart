import 'package:flutter/material.dart';

BottomAppBar BottomBar() {
  return BottomAppBar(
    color: const Color(0xff1D1F3E),
    child: Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.radio,
              color: Color(0xffC2C2C2),
              size: 30,
            ),
            Icon(
              Icons.person_4_rounded,
              color: Color(0xffC2C2C2),
              size: 30,
            ),
          ],
        ),
      ),
    ),
  );
}
