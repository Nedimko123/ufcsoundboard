import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ufcsoundboard/slider.dart';
import 'package:ufcsoundboard/utils.dart';
import './soundboard.dart';
//Storing saved list
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'savedSounds.dart';
import 'sounds.dart';
import 'music.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
//Storing saved list
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyAppStart());
}

class MyAppStart extends StatefulWidget {
  const MyAppStart({Key? key}) : super(key: key);

  @override
  State<MyAppStart> createState() => _MyAppStartState();
}

class _MyAppStartState extends State<MyAppStart> {
  @override
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  List screens = [
    MyApp(),
    SavedSounds(),
    Music(),
    SoundSlider(),
  ];
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          colorSchemeSeed: Colors.indigo,
          brightness: Brightness.light,
          useMaterial3: true),
      darkTheme: ThemeData(
          colorSchemeSeed: Colors.red,
          useMaterial3: true,
          brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: _page,
          height: 58,
          backgroundColor: Colors.red.shade100,
          items: <Widget>[
            Icon(Icons.play_arrow_rounded, size: 30),
            Icon(Icons.favorite, size: 30),
            Icon(Icons.music_note, size: 30),
            Icon(Icons.settings, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
            //Handle button tap
          },
          color: Colors.red.shade400,
        ),
        body: screens[_page],
      ),
    );
  }
}
