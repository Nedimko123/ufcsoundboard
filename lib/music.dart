import 'package:flutter/material.dart';
import './sounds.dart';

import 'package:path_provider/path_provider.dart';

import 'dart:io';

import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';
import 'utils.dart';
import 'package:get/get.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        final bytes = await rootBundle.load('assets/' + nigga);
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
                        Get.closeCurrentSnackbar();
                        var duration = await player1.setAsset(
                            'assets/' + songs[index]['link'].toString());
                        player1.play();
                        Get.snackbar('Playing:', '${songs[index]['desc']}',
                            duration: duration,
                            backgroundColor: Colors.red.withOpacity(0.5),
                            animationDuration: Duration(milliseconds: 570),
                            mainButton: TextButton(
                              onPressed: () {
                                player1.stop();
                                Get.closeCurrentSnackbar();
                              },
                              child: const Text(
                                'STOP',
                                style: TextStyle(color: Colors.white),
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
          itemCount: songs.length),
    );
  }
}
