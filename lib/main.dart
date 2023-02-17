import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyPlayerMusic(),
    );
  }
}

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

  SizedBox ListRecently() {
    return SizedBox(
        height: 200,
        child: ListView.builder(
          itemExtent: 170,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (ctx, index) {
            return CardRecentlySong();
          },
        ));
  }

  GestureDetector CardRecentlySong() {
    return GestureDetector(
      onTap: () {
        print('object');
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

  SizedBox sliderMusic() {
    return SizedBox(
      width: double.infinity * 0.9,
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 3,
          itemBuilder: (ctx, index) {
            return Container(
              margin: EdgeInsets.only(left: index != 0 ? 20 : 10),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/image1.png',
                    fit: BoxFit.cover,
                    width: 390,
                  ),
                  Container(
                    width: 390,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.8),
                        ],
                        stops: const [0.0, 1.0],
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'FEATURED PLAYLIST',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Follow The Leader ft. Jennifer ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
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
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }

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
}
