import 'package:flutter/material.dart';
import './sounds.dart';

import 'package:path_provider/path_provider.dart';

import 'dart:io';

import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';
import 'utils.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: CircleAvatar(
          radius: 45,
          backgroundColor: Color.fromARGB(141, 255, 50, 50),
          child: IconButton(
              iconSize: 70,
              color: Color.fromARGB(255, 236, 54, 54),
              onPressed: () {
                player123.stop();
              },
              icon: const Icon(Icons.stop)),
        ),
        body: ListView.separated(
            addAutomaticKeepAlives: false,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        onLongPress: () async {
                          String nigga = songs[index]['link'].toString();
                          final bytes =
                              await rootBundle.load('assets/' + nigga);
                          final list = bytes.buffer.asUint8List();

                          final tempDir = await getTemporaryDirectory();
                          final file =
                              await File('${tempDir.path}/' + nigga).create();
                          file.writeAsBytesSync(list);
                          Share.shareFiles(['${file.path}']);
                        },
                        leading: const Icon(Icons.play_arrow_rounded),
                        title: Text(songs[index]['desc'].toString()),
                        onTap: () async {
                          await player123.setAsset(
                              'assets/' + songs[index]['link'].toString());
                          player123.play();
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemCount: songs.length),
        appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () async {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text('Made by Nedim Malicbegovic'),
                              content: const Text(
                                  'This is a non-profit, no ads, UFC soundboard app. No copyright intended. All rights go to the UFC, song artists and the fighters.'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('OK'))
                              ],
                            ));
                  },
                  icon: const Icon(Icons.info))
            ],
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 189, 41, 41),
            title: const Text('Music')));
  }
}
