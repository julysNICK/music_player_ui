import 'package:flutter/material.dart';
import 'package:player_music_ui/screens/home/widgets/bottom_bar.dart';
import 'package:player_music_ui/screens/home/widgets/list_favorite_artitist.dart';
import 'package:player_music_ui/screens/home/widgets/list_recently.dart';
import 'package:player_music_ui/screens/home/widgets/name_section.dart';
import 'package:player_music_ui/screens/home/widgets/search_bar.dart';
import 'package:player_music_ui/screens/home/widgets/slider_music.dart';

class MyPlayerMusic extends StatefulWidget {
  const MyPlayerMusic({super.key});

  @override
  State<MyPlayerMusic> createState() => _MyPlayerMusicState();
}

class _MyPlayerMusicState extends State<MyPlayerMusic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff111536),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(width: double.infinity, child: SearchBar()),
              const SizedBox(
                height: 20,
              ),
              sliderMusic(),
              const SizedBox(
                height: 10,
              ),
              NameSection(),
              const SizedBox(
                height: 20,
              ),
              ListRecently(),
              const SizedBox(
                height: 20,
              ),
              NameSection(name: 'Favorite Artists'),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ListFavoriteArtist(),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xffFF7A8A),
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
