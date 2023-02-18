import 'package:flutter/material.dart';

import 'card_artist.dart';

Column ListFavoriteArtist() {
  return Column(
    children: [
      CardArtist(name: "Add your favorite artists", icon: Icons.add),
      CardArtist(name: "Dj Snake", icon: Icons.play_arrow),
      CardArtist(name: "Dj Snake", icon: Icons.play_arrow),
      CardArtist(name: "Dj Snake", icon: Icons.play_arrow),
    ],
  );
}
