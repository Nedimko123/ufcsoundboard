import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:ufcsoundboard/slider.dart';

import './sounds.dart';

import './savedSounds.dart';
//Sharing files
import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
//Storing saved list
import 'utils.dart';
//Scrolling
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
//Swipe
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'package:get/get.dart';

//Duration and snackbar

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Storing data and Loading it

  //

  List searchList = soundBoard;
  // final alreadySaved = false;
  final TextEditingController _textEditingController = TextEditingController();
  final ItemScrollController itemScrollController = ItemScrollController();
  @override
  void initState() {
    read();
    readBox();
    sliderreadBox();

    player1.setVolume(box.read('slider1') as double);
    player1.setPitch(box.read('slider2') as double);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void scrollToIndex(int index) {
    try {
      itemScrollController.scrollTo(
          index: index,
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOutCubic);
    } catch (e) {
      itemScrollController.scrollTo(
          index: 0,
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOutCubic);
    }
  }

  checker(String check) {
    bool truefalse = false;
    for (var map in saved) {
      if (map["title"] == check) {
        // your list of map contains key "title" which has value yep2
        truefalse = true;
      } else {}
    }
    return truefalse;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 15,
          ),
          box.read('searchbar')
              ? SizedBox(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 189, 68, 68)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 240, 49, 90),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 10),
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                searchList = [];
                                for (var map in soundBoard) {
                                  if (map["title"]!
                                          .contains(value.toLowerCase()) ||
                                      map['desc']!
                                          .toLowerCase()
                                          .contains(value.toLowerCase()) ||
                                      map['category']!
                                          .toLowerCase()
                                          .contains(value.toLowerCase())) {
                                    // your list of map contains key "title" which has value yep2
                                    searchList.add(map);
                                  }
                                }
                              });
                            },
                            controller: _textEditingController,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search a specific sound!'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  height: 50,
                )
              : Container(
                  height: 0,
                ),
          Expanded(
            child: StreamBuilder<Object>(
                stream: Stream.fromFuture(read()),
                builder: (context, snapshot) {
                  return ScrollablePositionedList.separated(
                      itemScrollController: itemScrollController,
                      addAutomaticKeepAlives: false,
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  onLongPress: () async {
                                    String nigma =
                                        searchList[index]['link'].toString();
                                    final bytes = await rootBundle
                                        .load('assets/' + nigma);
                                    final list = bytes.buffer.asUint8List();

                                    final tempDir =
                                        await getTemporaryDirectory();
                                    final file =
                                        await File('${tempDir.path}/' + nigma)
                                            .create();
                                    file.writeAsBytesSync(list);
                                    Share.shareFiles(['${file.path}']);
                                  },
                                  leading: const Icon(Icons.play_arrow_rounded),
                                  trailing: IconButton(
                                      color: Colors.red,
                                      onPressed: () async {
                                        if (checker(
                                            (searchList[index]['title']))) {
                                          setState(() {
                                            saved.removeWhere(((element) =>
                                                element['title'] ==
                                                searchList[index]['title']));
                                            write(jsonEncode(saved));
                                          });
                                        } else {
                                          setState(() {
                                            saved.add(searchList[index]);
                                            write(jsonEncode(saved));
                                          });
                                        }
                                      },
                                      icon: checker(
                                              (searchList[index]['title']))
                                          ? const Icon(Icons.favorite)
                                          : const Icon(Icons.favorite_border)),
                                  title: Text(
                                      searchList[index]['desc'].toString()),
                                  subtitle: Text(
                                      searchList[index]['category'].toString()),
                                  onTap: () async {
                                    Get.closeCurrentSnackbar();
                                    var duration = await player1.setAsset(
                                        'assets/' +
                                            searchList[index]['link']
                                                .toString());

                                    player1.play();
                                    Get.snackbar('Playing:',
                                        '${searchList[index]['desc']}',
                                        duration: duration,
                                        backgroundColor:
                                            Colors.red.withOpacity(0.5),
                                        animationDuration:
                                            Duration(milliseconds: 570),
                                        mainButton: TextButton(
                                          onPressed: () {
                                            player1.stop();
                                            Get.closeCurrentSnackbar();
                                          },
                                          child: const Text(
                                            'STOP',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ));
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                      itemCount: searchList.length);
                }),
          ),
        ],
      ),
      //  Column(
      //   children: [
      //     ElevatedButton(
      //         onPressed: () async {
      //           await player1.setUrl(
      //               'https://admiralbullbot.github.io/playsounds/files/new/archbalanced.ogg');
      //           player1.play();
      //         },
      //         child: Text('Fus Ro Dah')),
      //   ],
      // ),
    );
  }
}
