import 'package:flutter/material.dart';

import 'card_recently_song.dart';

SizedBox ListRecently() {
  return SizedBox(
      height: 200,
      child: ListView.builder(
        itemExtent: 170,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (ctx, index) {
          return const CardRecentlySong();
        },
      ));
}
