//import 'dart:async';
//import 'dart:ffi';
// ignore_for_file: non_constant_identifier_names

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/src/simple/list_notifier.dart';
// import 'package:sign_in/controllerBindings.dart';
//import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'congratulation.dart';

// ignore: camel_case_types
class Day3_Exercises extends StatefulWidget {
  const Day3_Exercises({Key? key}) : super(key: key);

  @override
  State<Day3_Exercises> createState() => _Day3_ExercisesState();
}

// ignore: camel_case_types
class _Day3_ExercisesState extends State<Day3_Exercises> {
  late YoutubePlayerController controller;
  late final dref = FirebaseDatabase.instance.ref();
  late DatabaseReference databaseReference;
  setData() {
    dref.child("progress2").set({
      'title':"congralution you are successfully done your day3 you are burn 230 calories in 10 mints"
    });
  }

  showData() {
    dref.once().then((snapshot) {
      print(snapshot);
    });
  }


  @override
  // ignore: must_call_super
  void initState() {
    // super.initState();
     super.initState();
    databaseReference = dref;

    const url =
        'https://youtu.be/RnP5gssGEec';

    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: true,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (Context, Player) => Scaffold(
          appBar: AppBar(
            title: Text(
              'Day 3',
              style: TextStyle(
                  fontSize: 21, color: Color.fromARGB(255, 255, 255, 255)),
            ),
            elevation: 1.0,
            backgroundColor: Color.fromARGB(255, 177, 96, 191),
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Color.fromARGB(255, 255, 255, 255),
              icon: Icon(Icons.arrow_back),
            ),
          ),
          
          body: ListView(
            children: [
              Player,
              Text(' Monkaa\n - Animation Cartoon ...............\n .................................',
                  style: TextStyle(
                    height: 1.3,
                    fontSize: 25.0,
                    color: Colors.purple[300],
                  )),
              SizedBox(
                height: 50,
                
              ),
 ElevatedButton(
  onPressed:setData,
                child: const Text(
                  'Done!!',
                  style: TextStyle(
                    fontSize: 34,
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
